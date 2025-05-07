import re
import logging
import json
import math
from collections import defaultdict, OrderedDict, deque

struct_size = {}
var_map = {}
max_temp = 0

def process_sizes(sizes_file):
    global struct_size
    struct_size = {}

    # 读取输入文件并解析每一行
    for line in sizes_file.strip().splitlines():
        line = line.strip()  # 去除首尾空格
        if line:  # 如果行不为空
            # 解析一行文本，提取名称和大小
            parts = line.split(", Size: ")
            if len(parts) != 2:
                return None
            name_part, size_part = parts
            if name_part.startswith('Global Variable'):
                name = '@' + name_part.split(": ", 1)[1].strip()
            else:
                name = '%' + name_part.split(": ", 1)[1].strip()
            size = int(split_tool(size_part, " ", 0))
            struct_size[name] = size
    return struct_size

def split_tool(value, flag, number=-1):
    res = value.split(flag)
    return res[number]

def calculate_type_size(type_str):
    global struct_size
    """根据类型字符串计算大小，支持多维数组"""
    # 基本类型大小
    type_sizes = {
        'i8': 1,
        'i16': 2,
        'i32': 4,
        'i64': 8,
        'float': 4,
        'double': 8,
        'long': 4
    }

    type_str = split_tool(type_str.strip(), "*", 0)
    # 检查简单类型
    if type_str in type_sizes:
        return type_sizes[type_str]

    # 处理数组类型（包括多维数组）
    array_match = re.match(r'\[(\d+)\s+x\s+(.+)\]', type_str)
    if array_match:
        array_size = int(array_match.group(1))
        element_type = array_match.group(2)
        return array_size * calculate_type_size(element_type)

    # 处理结构体大小 (假设结构体大小已知并传入)
    struct_match = re.match(r'(%struct\.\w+)', type_str)
    if struct_match:
        struct_name = struct_match.group(1)
        return struct_size.get(struct_name, 0)

    # 默认返回0
    return 0

# %114 = load %struct.ip_addr*, %struct.ip_addr** @ping_target, align 8, !dbg !15992
# %115 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %114, i32 0, i32 0, !dbg !15992
# %116 = bitcast %union.anon* %115 to %struct.ip6_addr*, !dbg !15992
# %117 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %116, i32 0, i32 0, !dbg !15992
# %118 = getelementptr inbounds [4 x i32], [4 x i32]* %117, i64 0, i64 0, !dbg !15992
# %119 = load i32, i32* %118, align 4, !dbg !15992
# temp i32* [4 x i32]* %struct.ip6_addr* %struct.ip_addr* @ping_target, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0
# result i32* @ping_target, i32 0, i32 0, i64 0
def uni_backtrace_register(next_reg):
    global var_map, max_temp

    queue = deque([(next_reg, [], [])])  # (当前寄存器, 偏移链, 类型链)
    visited = set()

    while queue:
        current_reg, offset_path, type_path = queue.pop()
        if int(split_tool(current_reg, '%')) <= max_temp or current_reg not in var_map:
            return None
        current_value = var_map.get(current_reg, "")
        visited.add(current_reg)

        # 提取是否含有全局变量
        match_global = re.search(r'@[\w\._]+', current_value)
        if match_global:
            if ']* @' in current_value:
                return None
            global_var = match_global.group(0)
            type_prefix = " ".join(type_path)  # 类型从底层到顶层
            return f"{type_prefix} {global_var}, " + ', '.join(offset_path)

        reg_matches = re.findall(r'%\d+', current_value)

        if 'getelementptr inbounds' in current_value:
            var = pattern_tool(current_value)
            if ']* ' in var:
                base_type, var_name = var.split("]* ", 1)
                base_type += ']*'
            elif ')*' in var:
                base_type, var_name = var.split(")*", 1)
                while var_name.startswith("*") or var_name.startswith(" "):
                    var_name = var_name[1:]
                base_type = split_tool(base_type, " ", 0)
            else:
                base_type, var_name = var.split(" ", 1)
            type_path.append(base_type)
            # 提取偏移量索引
            gep_indices = re.findall(r'i\d+\s+(-?\d+|%\d+)', var_name)
            gep_indices = [idx.split()[-1] for idx in gep_indices]

            for reg in reg_matches:
                if reg not in visited:
                    queue.appendleft((reg, offset_path + gep_indices, type_path.copy()))
        else:
            for reg in reg_matches:
                if reg not in visited:
                    queue.appendleft((reg, offset_path, type_path.copy()))

    return None

def pattern_tool(current_value):
    current_value = current_value.split(', align')[0].split(', !dbg')[0]
    if ')*' not in current_value:
        search_str = ',\s*(.*)$'
        temp_var = re.search(f'{search_str}', current_value)
        temp_var = temp_var.group(1).strip()
    else:
        search_str = '\)\*+\s*,?\s*(.*)$'
        temp_var = re.search(f'{search_str}', current_value)
        temp_var = temp_var.group(1).strip()
        if ', ' in temp_var:
            temp_var = temp_var.split(', ', 1)[1]
    return temp_var

def parse_bb_variables(cfg_str):
    """从CFG DOT文件解析每个基本块的变量访问序列"""
    global var_map, max_temp, struct_size
    bb_vars = {}
    var_size = {}
    current_func = None
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')
    assign_pattern = re.compile(r'^(%\S+)\s*=\s*(.*)')  # 匹配 %number = ...
    alloca_pattern = re.compile(r'(%\d+)\s*=\s*alloca\s+(.*?)(?:,\s*align\s*(\d+))?$') # temp_var_reg

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)
    
    for func_name, bb_num, code_text in bb_blocks:
        
        # 如果进入了新的函数，清空 var_map
        if func_name != current_func:
            print(current_func)
            var_map = {}
            max_temp = 0
            current_func = func_name
            for line in code_text.split('\n'):
                line = line.strip()
                if not line:
                    continue
                # 提取临时变量定义
                alloca_match = alloca_pattern.match(line)
                if alloca_match:
                    temp_var_name = alloca_match.group(1)
                    max_temp = int(split_tool(temp_var_name, '%'))
        # 提取变量访问
        variables = []
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
            # 匹配load/store指令
            var_match = var_pattern.search(line)
            if var_match:
                size = -1
                var = var_match.group(1).strip()
                if ', <' in line:
                    var = var.replace('<', '[').replace('>', ']')  
                if re.search(r'\[\d+\s+x\s+.*?\]', var):
                    continue
                var = pattern_tool(var)
                if ']* ' in var:
                    base_type, var_name = var.split("]* ", 1)
                    base_type += ']*'
                elif ')*' in var:
                    base_type, var_name = var.split(")*", 1)
                    while var_name.startswith("*") or var_name.startswith(" "):
                        var_name = var_name[1:]
                    base_type = split_tool(base_type, " ", 0)
                else:
                    base_type, var_name = var.split(" ", 1)
                size = calculate_type_size(base_type)
                reg_matches = re.findall(r'%\d+', var_name)
                if reg_matches and len(reg_matches) >= 1:
                    global_var_reg = reg_matches[0]
                    global_var = uni_backtrace_register(global_var_reg)
                    if global_var:
                        var = var.replace(global_var_reg, global_var)
                    else:
                        continue
                variables.append(var)
                var_size[var] = size

        # 构建字典键
        bb_key = f"{func_name}*{bb_num}"
        bb_vars[bb_key] = variables
        logging.debug(f"Parsed {bb_key} variables: {variables}")
    
    return bb_vars, var_size

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
        file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/structArray/'
        with open(f'{file_path}GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()
        
        # 读取CFG文件
        with open(f'{file_path}BasicBlock.txt', 'r') as f:
            cfg_content = f.read()
        
        # 读取执行序列
        with open(f'{file_path}BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()
        # 处理数据

        struct_size = process_sizes(sizes_file)
        bb_vars, var_size = parse_bb_variables(cfg_content)
        export_to_file(bb_vars, f'{file_path}global_struct_bb_vars.json')
        export_to_file(var_size, f'{file_path}global_struct_var_size.json')
        exec_sequence = parse_execution_sequence(exec_content)
        edge_weights = build_variable_graph(bb_vars, exec_sequence, 10)

        # 生成输出
        dot_output = generate_dot(edge_weights, var_size)
        with open(f'{file_path}global_struct_variable_access_graph.dot', 'w') as f:
            f.write(dot_output)
        
        logging.info("变量访问图已生成到 struct_variable_access_graph.dot")
        logging.info(f"统计信息：")
        logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
        logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
        logging.info(f"• 生成 {len(edge_weights)} 条依赖边")
        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
