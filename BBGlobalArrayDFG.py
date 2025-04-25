import re
import logging
import json
from collections import defaultdict, deque, OrderedDict

def parse_bb_variables(cfg_str):
    """从CFG DOT文件解析每个基本块的变量访问序列，并处理寄存器回溯"""
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
    var_map = {}
    temp_var_reg = set()

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

        final_vars = []
        # 提取源码地址
        loc_match = loc_pattern.search(code_text)
        source_location = loc_match.group(1) if loc_match else "Unknown Location"

        for line in code_text.split('\n'):
            line = line.strip()
            if not line:
                continue

            # 捕获所有形如 %number = ... 的指令
            assign_match = assign_pattern.match(line)
            if assign_match:
                var_name = assign_match.group(1)
                value = assign_match.group(2)
                var_map[var_name] = value


            # 匹配 load/store 指令
            var_match = var_pattern.search(line)
            if var_match:
                var = var_match.group(1).strip()
                var = re.search(r',\s*(.*?),\s*align', var)
                if var:
                    var = var.group(1).strip()
                    base_type, reg_name = var.split(" ", 1)
                    # 检查 reg_name 本身是否是全局数组变量
                    global_var_match = global_var_pattern.findall(reg_name)
                    if global_var_match:
                        # 如果是全局数组变量，直接添加提取的部分
                        array_var_name = global_var_match[-1]
                        array_var_name = get_dim_tem_num(temp_var_reg, var_map, reg_name, array_var_name) + " " + source_location
                        final_vars.append(array_var_name)
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
                                array_var_name = global_var_match[-1]
                                array_var_name = get_dim_tem_num(temp_var_reg, var_map, array_access_ins, array_var_name) + " " + source_location
                                # 找到全局数组变量，停止回溯并添加到 final_vars
                                final_vars.append(array_var_name)
                                break
                            # 如果当前寄存器还有进一步的定义，继续回溯
                            reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                            for next_reg in reg_matches:
                                if next_reg in var_map and current_reg not in reg_set:
                                    queue.appendleft(next_reg)
                            reg_set.add(current_reg)  

        bb_key = f"{func_name}*{bb_num}"
        bb_vars[bb_key] = final_vars
        logging.debug(f"Parsed {bb_key} variables: {final_vars}")
    
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

def generate_dot(edge_weights):
    """生成优化的DOT文件"""
    dot = ["strict digraph {"]
    number = 0
    node_nums = {}
    
    # 创建节点集合
    nodes = set()
    for (src, dest) in edge_weights:
        nodes.add(src)
        nodes.add(dest)
    
    # 添加节点定义
    for node in sorted(nodes):
        number += 1
        node_nums[node] = number
        dot.append(f'  {node_nums[node]} [label="{node}", color=blue, shape=record];')
    
    # 添加边定义（按权重降序排列）
    for (src, dest), weight in sorted(edge_weights.items(), key=lambda x: -x[1]):
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

        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()

        # 读取CFG文件
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/BasicBlock.txt', 'r') as f:
            cfg_content = f.read()
        
        # 读取执行序列
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()
        
        # 处理数据
        bb_vars, var_size = parse_bb_variables(cfg_content)
        export_to_file(bb_vars, "./array_bb_vars.json")
        export_to_file(var_size, "./array_var_size.json")
        exec_sequence = parse_execution_sequence(exec_content)
        edge_weights = build_variable_graph(bb_vars, exec_sequence)
        
        # 生成输出
        dot_output = generate_dot(edge_weights)
        with open('array_temVar_variable_access_graph.dot', 'w') as f:
            f.write(dot_output)
        
        logging.info("变量访问图已生成到 array_temVar_variable_access_graph.dot")
        logging.info(f"统计信息：")
        logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
        logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
        logging.info(f"• 生成 {len(edge_weights)} 条依赖边")
        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
