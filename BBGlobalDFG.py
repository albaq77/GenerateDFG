import re
import logging
import json
import math
from collections import defaultdict, deque, OrderedDict

def process_sizes(sizes_file):
    sizes = {}

    # 读取输入文件并解析每一行
    for line in sizes_file.strip().splitlines():
        line = line.strip()  # 去除首尾空格
        if line:  # 如果行不为空
            # 解析一行文本，提取名称和大小
            parts = line.split(", Size: ")
            if len(parts) != 2:
                return None
            name_part, size_part = parts
            name = '@' + name_part.split(": ", 1)[1].strip()
            size = int(size_part.split(" ")[0])
            sizes[name] = size
    return sizes

def parse_bb_variables(cfg_str, struct_size):
    """从CFG DOT文件解析每个基本块的变量访问序列"""
    bb_vars = {}
    var_size = {}
    
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    loc_pattern = re.compile(r'Basic Block Source Location: (\S+:\d+)')
    var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')
    assign_pattern = re.compile(r'^(%\S+)\s*=\s*(.*)')  # 匹配 %number = ...
    global_var_pattern = re.compile(r'.*,\s*(\[.*?\]\*\s*@\w+),') # 匹配全局数组变量
    alloca_pattern = re.compile(r'(%\d+)\s*=\s*alloca\s+\S+,\s*align\s*\d+') # temp_var_reg

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)

    current_func = None
    for func_name, bb_num, code_text in bb_blocks:
        # 如果进入了新的函数，清空 var_map
        if func_name != current_func:
            var_map = {}
            temp_var_reg = set()
            current_func = func_name
            for line in code_text.split('\n'):
                line = line.strip()
                if not line:
                    continue
                # 提取临时变量定义
                alloca_match = alloca_pattern.match(line)
                if alloca_match:
                    temp_var_name = alloca_match.group(1)
                    temp_var_reg.add(temp_var_name)
        # 提取变量访问
        variables = []

        # 提取源码地址
        loc_match = loc_pattern.search(code_text)
        source_location = loc_match.group(1) if loc_match else "Unknown Location"

        for line in code_text.split('\n'):
            var_array = False
            line = line.strip()
            if not line:
                continue
            
            # 捕获所有形如 %number = ... 的指令
            assign_match = assign_pattern.match(line)
            if assign_match:
                var_name = assign_match.group(1)
                value = assign_match.group(2)
                var_map[var_name] = value


            # 匹配load/store指令
            var_match = var_pattern.search(line)
            if var_match:
                size = -1
                var = var_match.group(1).strip()

                # # remove not struct var
                # if '%struct.' not in var or re.search(r'\[\d+\s+x\s+.*?\]', var):
                #     continue
                # 使用正则表达式截取第一个逗号到 align 前的内容
                # store  <4 x i32> <i32 767, i32 0, i32 0, i32 33554432>, <4 x i32>*
                if ', <' in line:
                    var = re.search(r',\s*<\s*(.*?),\s*align', var)
                    var = '<' + var.group(1).strip()
                    match = re.search(r'<(\d+)\s*x\s*i(\d+)>', var)
                    if match:
                        # 提取数值
                        vector_length = int(match.group(1))  # 4
                        element_size = int(match.group(2))   # 32
                        # 计算 size
                        size = vector_length * element_size
                    # DFG label can not <*> 
                    var = var.replace('<', '').replace('>', '')
                else:    
                    var = re.search(r',\s*(.*?),\s*align', var)
                    var = var.group(1).strip()
                    base_type, reg_name = var.split(" ", 1)
                    # 检查 reg_name 本身是否是全局数组变量
                    global_var_match = global_var_pattern.findall(reg_name)
                    if global_var_match:
                        # 如果是全局数组变量，直接添加提取的部分
                        array_var_name = global_var_match[-1]
                        array_var_name = get_dim_tem_num(temp_var_reg, var_map, reg_name, array_var_name) + " " + source_location
                        variables.append(array_var_name)
                        var_size[array_var_name] = parse_global_size(var, struct_size)
                        continue
                    elif reg_name in var_map:
                        array_access_ins = None
                        # 如果是寄存器，进行回溯替换
                        queue = deque([reg_name])
                        reg_set = set()
                        while queue:
                            current_reg = queue.pop()
                            current_value = var_map.get(current_reg, "")
                            array_access_ins = array_access_ins.replace(current_reg, current_value) if array_access_ins else current_value
                            # 检查是否有全局数组变量
                            global_var_match = global_var_pattern.findall(current_value)
                            if global_var_match:
                                # 找到全局数组变量，停止回溯并添加到 final_vars
                                array_var_name = global_var_match[-1]
                                array_var_name = get_dim_tem_num(temp_var_reg, var_map, array_access_ins, array_var_name) + " " + source_location
                                variables.append(array_var_name)
                                var_size[array_var_name] = parse_global_size(var, struct_size)
                                var_array = True
                                break
                        
                            # 如果当前寄存器还有进一步的定义，继续回溯
                            reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                            for next_reg in reg_matches:
                                if next_reg in var_map and current_reg not in reg_set:
                                    queue.appendleft(next_reg)
                            reg_set.add(current_reg) 
                    if var_array :
                        continue
                    match = re.search(r'\bi\d+\*(?!\*)', var)
                    if match:
                        type_info = match.group(0)
                        # 提取大小信息
                        size = int(type_info.lstrip('i').rstrip('*'))

                #(i + number + *) getelementptr inbounds (*)
                if 'getelementptr inbounds' in var:
                     # 匹配 i64* getelementptr inbounds 后第一个括号内的内容
                     pattern = r'(\bi\d+\*(?!\*))\s+getelementptr inbounds\s*\((.*?)\)'
                     match = re.search(pattern, var)
                     if match:
                        # 提取 getelementptr inbounds 部分
                        var = match.group(0)
                        # 提取类型信息和内容
                        type_info = match.group(1)
                        # 提取大小信息
                        size = int(type_info.lstrip('i').rstrip('*'))
                else:
                    temp_size = parse_global_size(var, struct_size)
                    size = temp_size * 8 if temp_size != -1 else -1# 正则表达式模式
                # remove temp var
                if re.search(r'\*\s*%\d+$', var):
                    continue
                variables.append(var)

                # compute size
                if (size != -1):
                    size = math.ceil(size / 8)

                var_size[var] = size

        # 构建字典键
        bb_key = f"{func_name}*{bb_num}"
        bb_vars[bb_key] = variables
        logging.debug(f"Parsed {bb_key} variables: {variables}")
    
    return bb_vars, var_size


def get_dim_tem_num(temp_var_reg, var_map, array_access_ins, array_var_name):
    dim_length = array_var_name.count('[')
    tem_length = 0
    reg_matches = re.findall(r'%\d+', array_access_ins)  # 使用 findall 查找多个寄存器
    for next_reg in reg_matches:
        is_flag = False
        if next_reg in var_map :
             queue = deque([next_reg])
             reg_set = set()
             last_reg = None
             while queue:
                 current_reg = queue.pop()
                 last_reg = current_reg
                 current_value = var_map.get(current_reg, "")
                 # 如果当前寄存器还有进一步的定义，继续回溯
                 reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                 for next_reg in reg_matches:
                     if next_reg in var_map and current_reg not in reg_set:
                         if next_reg in temp_var_reg :
                             array_var_name += " " + next_reg
                             tem_length = tem_length + 1
                             if (tem_length == dim_length):
                                 return array_var_name
                             queue.clear()
                             is_flag = True
                             break
                         else: 
                             queue.appendleft(next_reg)
                 reg_set.add(current_reg) 
             if not is_flag :
                 array_var_name += " " + current_reg
                 tem_length = tem_length + 1
                 if (tem_length == dim_length):
                     return array_var_name 
    return array_var_name


def parse_global_size(var, struct_size):
    size = -1
    # 正则表达式模式
    pattern = r'@([\w\d_.]+)'
    # 使用 re.search 找到第一个匹配
    match = re.findall(pattern, var)
    if match:
        # 提取匹配的名称
        stutsize = struct_size.get('@' + match[0])
        if stutsize is not None:
           size = stutsize
    return size

def parse_execution_sequence(seq_str):
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str) 
    # 使用正则表达式提取每行的完整函数和编号
    return re.findall(r'(\w+\*\d+)', clean_str)

def build_variable_graph(bb_vars, exec_sequence, window_size=10):
    """构建变量访问图并计算权重"""
    edge_weights = defaultdict(int)
    weight_window = OrderedDict()  # 使用 OrderedDict 保证顺序

    for bb in exec_sequence:
        curr_vars = bb_vars.get(bb, [])
        if not curr_vars:
            continue

        for curr_var in curr_vars:
            if curr_var not in weight_window:
                # 计算权重并更新边
                for last_var in list(weight_window.keys()):  
                    # 使用集合来表示无向边
                    edge = frozenset([last_var, curr_var])
                    edge_weights[edge] += 1
                    weight_window[last_var] -= 1

                
                # 检查并移除第一个元素的权重是否为0
                if weight_window:
                    first_var, first_weight = next(iter(weight_window.items()))
                    if first_weight <= 0:
                        weight_window.popitem(last=False)
                weight_window[curr_var] = window_size

    return edge_weights          

def generate_dot(edge_weights, var_size):
    """生成优化的DOT文件"""
    dot = ["strict digraph {"]
    number = 0
    node_nums = {}
    
    # 创建节点集合
    nodes = set()
    for edge in edge_weights:
        nodes.update(edge)
    
    # 添加节点定义
    for node in sorted(nodes):
        number += 1
        node_nums[node] = number
        dot.append(f'  {node_nums[node]} [label="{node}", size={var_size[node]}, color=blue, shape=record];')
    
    # 添加边定义（按权重降序排列）
    for edge, weight in sorted(edge_weights.items(), key=lambda x: -x[1]):
        src, dest = edge
        dot.append(f'  {node_nums[src]} -> {node_nums[dest]} [label="weight={weight}", weight="{weight}"];')
    
    dot.append("}")
    return '\n'.join(dot)

def export_to_file(bb_vars, output_path):
    """将基本块变量信息写入指定文件"""
    try:
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(bb_vars, f, indent=2, ensure_ascii=False)
            logging.info(f"成功写入JSON文件：{output_path}")
            
    except IOError as e:
        logging.error(f"文件写入失败：{str(e)}")
    except Exception as e:
        logging.error(f"发生意外错误：{str(e)}")


def main():
    logging.basicConfig(level=logging.INFO, format='%(levelname)s - %(message)s')
    
    try:

        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/structArray/GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()
        
        # 读取CFG文件
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/structArray/BasicBlock.txt', 'r') as f:
            cfg_content = f.read()
        
        # 读取执行序列
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/structArray/BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()
        # 处理数据

        struct_size = process_sizes(sizes_file)
        bb_vars, var_size = parse_bb_variables(cfg_content, struct_size)
        export_to_file(bb_vars, "./bb_vars.json")
        export_to_file(var_size, "./var_size.json")
        exec_sequence = parse_execution_sequence(exec_content)
        edge_weights = build_variable_graph(bb_vars, exec_sequence, 10)

        # 生成输出
        dot_output = generate_dot(edge_weights, var_size)
        with open('variable_access_graph.dot', 'w') as f:
            f.write(dot_output)
        
        logging.info("变量访问图已生成到 variable_access_graph.dot")
        logging.info(f"统计信息：")
        logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
        logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
        logging.info(f"• 生成 {len(edge_weights)} 条依赖边")
        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
