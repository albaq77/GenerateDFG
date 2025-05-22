import re
import logging
import json
import os
from collections import defaultdict, deque, OrderedDict

var_map = {}
temp_var_reg = {}
max_temp = 0
struct_size = {}
var_size = {}
type_dim = defaultdict(int)

def process_sizes(sizes_file):
    global struct_size
    struct_size = {}

    # 字典来存储结构体成员信息
    struct_members = {}

    # 读取输入文件并解析每一行
    for line in sizes_file.strip().splitlines():
        line = line.strip()  # 去除首尾空格
        if line:  # 如果行不为空
            # 替换不必要的前缀
            line = line.replace('%"', '%').replace('"', '').replace('%class.', '%struct.class.').replace('%union.', '%struct.union.')

            # 判断是全局变量还是结构体
            if line.startswith("Global Variable:"):
                parts = line.split(", Size: ")
                type_part = parts[0].split(", Type: ")[1]  # 获取类型部分
                name_part = parts[0].split(": ", 1)[1].split(", Type: ")[0]  # 获取名称部分
                size_part = parts[1]  # 获取大小部分
                if type_part.startswith('%struct.'):
                    type_part = type_part.split(" = ", 1)[0]

                name = '@' + name_part.strip()
                size = int(size_part.split(" ")[0])
                struct_size[name] = {"type": type_part.strip(), "size": size}

            elif line.startswith("Struct:"):
                line = line.replace(' class.', ' struct.class.').replace(' union.', ' struct.union.')
                # 处理结构体
                struct_name_part = line.split(", Size: ")[0].split(": ", 1)[1].split(", Type: ")[0]
                size_part = line.split(", Size: ")[1]
                struct_name = '%' + struct_name_part.strip()
                size = int(size_part.split(" ")[0])
                struct_size[struct_name] = {"size": size, "members": []}
                current_struct = struct_name

            elif line.startswith("Member"):
                # 处理结构体成员
                parts = line.split(", Size ")
                type_part = parts[0].split(": Type ")[1]  # 获取类型部分
                size_part = parts[1]  # 获取大小部分
                if type_part.startswith('%struct.'):
                    type_part = type_part.split(" = ", 1)[0]
                member_type = type_part.strip()
                member_size = int(size_part.split(" ")[0])

                # 添加成员到当前结构体的成员列表中
                if current_struct in struct_size:
                    struct_size[current_struct]["members"].append({
                        "type": member_type,
                        "size": member_size
                    })

    return struct_size

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
    type_str = type_str.strip()
    if isPointerStruct(type_str, None) >= 2:
        return 8
    type_str = split_tool(type_str, "*", 0)
    # 检查简单类型
    if type_str in type_sizes:
        return type_sizes[type_str]

    # 处理数组类型（包括多维数组）
    array_match = re.match(r'\[(\d+)\s+x\s+(.+)\]', type_str)
    if array_match:
        array_size = int(array_match.group(1))
        element_type = array_match.group(2)
        return array_size * int(calculate_type_size(element_type))

    # 处理结构体大小 (假设结构体大小已知并传入)
    struct_match = re.match(r'(%struct\.\w+)', type_str)
    if struct_match:
        struct_name = struct_match.group(1)
        struct = struct_size.get(struct_name, None)
        if struct:
            return struct.get('size', 0)
    # 默认返回0
    return 0

def isPointerStruct(line, var_name):
    if not var_name:
        start = len(line)
    else:
        start = line.find(var_name)
    if start == -1:
        return -1
    line = line[0:start].strip()
    index = len(line) - 1
    count = -1
    while index >= 0 and line[index] == '*':
            count += 1
            index -= 1
    return count + 1

def pattern_tool(current_value, store):

    def find_first_comma(input_string, flag):
        # 初始化括号计数器
        bracket_depth = 0
        flag_length = len(flag)
    
        for index in range(len(input_string) - flag_length + 1):
            char = input_string[index]
            if char in '{[(<':
                bracket_depth += 1
            elif char in '}])>':
                bracket_depth -= 1
            elif input_string[index:index + flag_length] == flag and bracket_depth == 0:
                return index
        return None

    if not (current_value.startswith('load') or current_value.startswith('getelementptr') or current_value.startswith('store')):
        return None, None, None
    current_value = current_value.split(' #')[0].split(', align')[0].split(', !dbg')[0]
    non_bracket_comma = find_first_comma(current_value, ',')
    if not non_bracket_comma:
        return None, None, None
    temp_var = current_value[non_bracket_comma + 1:].strip()
    if not temp_var:
        return None, None, None
    # if '}*' in current_value:
    #     search_str = r'},\s*({.*)$'
    #     temp_var = re.search(f'{search_str}', current_value)
    #     if not temp_var:
    #         return None, None, None
    #     temp_var = temp_var.group(1).strip()
    # elif ')*' not in current_value:
    #     search_str = ',\s*(.*)$'
    #     temp_var = re.search(f'{search_str}', current_value)
    #     if not temp_var:
    #         return None, None, None
    #     temp_var = temp_var.group(1).strip()
    # else:
    #     search_str = '\)\*+\s*,?\s*(.*)$'
    #     temp_var = re.search(f'{search_str}', current_value)
    #     if not temp_var:
    #         return None, None, None
    #     temp_var = temp_var.group(1).strip()
    #     if store:
    #         temp_var = temp_var.split(" ", 1)[1].strip()
    if 'getelementptr inbounds' in temp_var:
        base_type, var_name = temp_var.split('getelementptr inbounds', 1)
        var_name = 'getelementptr inbounds' + var_name
    # elif ']*' in temp_var:
    #     base_type = re.search(r'(\[.*?\]\*+\s)(\S+)', temp_var)
    #     if not base_type:
    #         base_type = re.search(r'(.*?\(.*?\)\*+\s)(\S+)', temp_var)
    #     base_type = base_type.group(1)
    #     var_name = temp_var.split(base_type, 1)[1].strip()
    # elif ')*' in temp_var:
    #     base_type = re.search(r'(.*?\(.*?\)\*+\s)(\S+)', temp_var)
    #     if not base_type:
    #         base_type = re.search(r'(.*?\[.*?\]\*+\s)(\S+)', temp_var)
    #     base_type = base_type.group(1)
    #     var_name = temp_var.split(base_type, 1)[1].strip()
    # elif '}*' in temp_var:
    #     base_type = re.search(r'(\{.*?\}\*+\s)(\S+)', temp_var)
    #     base_type = base_type.group(1)
    #     var_name = temp_var.split(base_type, 1)[1].strip()
    # else:
    #     if " " not in temp_var:
    #         return None, None, None
    #     base_type, var_name = temp_var.split(" ", 1)
    else:
        non_bracket_comma = find_first_comma(temp_var, '* %')
        if not non_bracket_comma:
            return None, None, None
        base_type = temp_var[0:non_bracket_comma + 1]
        var_name = temp_var[non_bracket_comma + 1:].strip()
        if not var_name:
            return None, None, None
    return base_type.strip(), var_name.strip(), temp_var.strip()

def parse_dim_length(struct_var, var, var_name):
    dim_length = struct_var.count('[')  # 计算维度数量
    if dim_length == 0:
        dim_length = isPointerStruct(var, var_name) - 1
    else:
        if isPointerStruct(var, var_name)- 1 > 0:
            dim_length += isPointerStruct(var, var_name) - 1
    return dim_length

def parse_bb_variables(cfg_str):
    global temp_var_reg, var_map, max_temp, struct_size, var_size
    """从CFG DOT文件解析每个基本块的变量访问序列"""
    bb_vars = defaultdict(lambda: {'variables': {}, 'size': {}})

    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    loc_pattern = re.compile(r'Basic Block Source Location: (\S+:\d+)')
    var_pattern = re.compile(r'\b((?:load|store)\b\s+.*)')
    assign_pattern = re.compile(r'^(%\S+)\s*=\s*(.*)')  # 匹配 %number = ...
    alloca_pattern = re.compile(r'(%\d+)\s*=\s*alloca\s+(.*?)(?:,\s*align\s*(\d+))?$') # temp_var_reg

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)

    current_func = None
    for func_name, bb_num, code_text in bb_blocks:
        # 如果进入了新的函数，清空 var_map
        if func_name != current_func:
            logging.info(f"• 解析到 {func_name}")
            var_map = {}
            temp_var_reg = {}
            var_size = {}
            max_temp = 0
            current_func = func_name
            for line in code_text.split('\n'):
                line = line.strip()
                if not line:
                    continue
                line = line.replace('%"', '%').replace('"', '').replace('%class.', '%struct.class.').replace('%union.', '%struct.union.')
                # 提取临时变量定义
                alloca_match = alloca_pattern.match(line)
                if alloca_match:
                    temp_var_name = alloca_match.group(1)
                    max_temp = int(split_tool(temp_var_name, '%'))
                    type_str = alloca_match.group(2)
                    temp_var_size = calculate_type_size(type_str)
                    temp_var_reg[temp_var_name] = type_str
                    var_size[temp_var_name] = temp_var_size  # 存储临时变量的大小
        # 提取变量访问
        variables = []
        logging.info(f"• 解析到 {bb_num}")
        # 提取源码地址
        for line in code_text.split('\n'):
            # logging.info(f"• 解析到 {line}")
            line = line.strip()
            if not line:
                continue
            line = line.replace('%"', '%').replace('"', '').replace('%class.', '%struct.class.').replace('%union.', '%struct.union.')
            # 捕获所有形如 %number = ... 的指令
            assign_match = assign_pattern.match(line)
            if assign_match:
                var_name = assign_match.group(1)
                value = assign_match.group(2)
                var_map[var_name] = value
            
            # 匹配load/store指令
            var_match = var_pattern.search(line)
            if var_match:
                offset_list = []
                var = var_match.group(1).strip()
                if ', <' in line:
                    var = var.replace('<', '[').replace('>', ']')
                base_type, reg_name, var_name = pattern_tool(var, line.startswith('store '))
                if not base_type:
                    continue
                reg_offset = reg_name.strip().split(',')
                reg_name = reg_offset[0]
                if len(reg_offset) >= 2:
                    reg_offset = reg_offset[1:]
                    curr_offset = register_offset(reg_offset)
                    offset_list.extend(curr_offset)
                size = calculate_type_size(base_type)
                dim_length = parse_dim_length(base_type, var_name, reg_name)
                if '@' not in var_name:
                    if ']' not in base_type and (reg_name in temp_var_reg or int(split_tool(reg_name, '%')) <= max_temp) and len(offset_list) >= dim_length:
                        var_size[var_name] = size
                        variables.append(var_name)
                    elif reg_name in var_map:
                        var_temp_flag = True
                        # 如果是寄存器，进行回溯替换
                        queue = deque([reg_name])
                        reg_set = set()
                        struct_var = None
                        while queue and var_temp_flag:
                            current_reg = queue.pop()
                            current_value = var_map.get(current_reg, "")
                            if '@' in current_value:
                                break
                            # 如果当前寄存器还有进一步的定义，继续回溯
                            reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                            for next_reg in reg_matches:
                                if next_reg in var_map and current_reg not in reg_set:
                                    queue.appendleft(next_reg)
                            reg_set.add(current_reg)
                            temp_base_type, temp_reg_name, temp_var = pattern_tool(current_value, current_value.startswith('store '))
                            if not temp_base_type:
                                continue
                            if struct_var and (not temp_base_type.startswith(struct_var)) and temp_base_type.startswith('%struct.'):
                                offset_list = []
                            struct_var = temp_base_type
                            reg_offset = temp_reg_name.strip().split(',')
                            reg_name = reg_offset[0]
                            if len(reg_offset) >= 2:
                                reg_offset = reg_offset[1:]
                                curr_offset = register_offset(reg_offset)
                                offset_list.extend(curr_offset)
                            if ']' not in temp_base_type and (reg_name in temp_var_reg or int(split_tool(reg_name, '%')) <= max_temp) and  ((temp_base_type.startswith('%struct.') and len(offset_list) == 1) or isPointerStruct(temp_var, temp_reg_name) == 1) :
                                offset_list.reverse()
                                struct_var_name, array_name = parse_gep(offset_list, temp_base_type + " " + reg_name)
                                if struct_var_name:
                                    struct_var_name = struct_var_name.replace("%%", "%")
                                    variables.append(struct_var_name)
                                    var_size[struct_var_name] = size
                                break

        # 构建字典键
        bb_key = f"{func_name}*{bb_num}"
        bb_vars[func_name]['variables'][bb_key] = variables
        bb_vars[func_name]['size'] = var_size
        logging.debug(f"Parsed {bb_key} variables: {variables}")

    return bb_vars, var_size

def split_tool(value, flag, number=-1):
    res = value.split(flag)
    return res[number]

def supple_temp_reg(reg, var):
    global var_size, temp_var_reg, max_temp
    if reg not in temp_var_reg and int(split_tool(reg, "%")) <= max_temp:
        var_type = split_tool(var, '* ' + reg, 0)
        if " " in var_type:
            var_type = split_tool(var_type, " ")
        temp_var_reg[reg] = var_type
        var_size[reg] = calculate_type_size(var_type)

def parse_gep(offset_list, array_var_name):
    global type_dim
    """
    从 LLVM IR 风格的 getelementptr 指令字符串中解析出索引表达式。

    Args:
        array_access_ins: 完整的 getelementptr 指令字符串。
        array_var_name: 目标数组变量名。

    Returns:
        extracted: 截取得到的参数文本。
        indexing: 形如 "globalArry[%2][3][%4]" 的最终索引表达式。
    %226 = load double***, double**** %8, align 8, !dbg !258
    %227 = getelementptr inbounds double**, double*** %226, i64 %225, !dbg !258
    %228 = load double**, double*** %227, align 8, !dbg !258
    %229 = getelementptr inbounds double*, double** %228, i64 0, !dbg !258
    %230 = load double*, double** %229, align 8, !dbg !258
    %231 = getelementptr inbounds double, double* %230, i64 1, !dbg !258
    %232 = load double, double* %231, align 8, !dbg !258
    %226 i64 %225
    %228 i64 0
    %230 i64 1

    %32 = load %struct.excitation*, %struct.excitation** %7, align 8, !dbg !185
    %33 = getelementptr inbounds %struct.excitation, %struct.excitation* %32, i32 0, i32 2, !dbg !186
    %34 = load double, double* %33, align 8, !dbg !186
    %32 i32 0 i32 2
    """
    array_var_name = array_var_name.strip()
    max_dim = type_dim.get(array_var_name, 0)
    sour_name = array_var_name
    # 1. 定位并截取
    aaa = array_var_name.rfind('%')
    array_name_struct = array_var_name[0:aaa]
    array_var_name = array_var_name[aaa:]
    dim_length = parse_dim_length(array_name_struct, sour_name, array_var_name)
    is_struct_array = '%struct.' in array_name_struct
    if dim_length > len(offset_list) or (is_struct_array and '[' in array_name_struct and len(offset_list) == 1) or max_dim > len(offset_list):
        return None, None
    name = sour_name
    indexing = name
    if is_struct_array and '[' not in array_name_struct and len(offset_list) == 1:
        dim_length = 0
    else:
        indexing +=''.join(f'[{idx}]' for idx in offset_list[:dim_length])

    if is_struct_array:
        if dim_length < len(offset_list):
            indexing += '.' + offset_list[dim_length:][0]
    max_dim = dim_length if dim_length > max_dim else max_dim
    type_dim[name] = max_dim
    return indexing, name

def register_offset(reg_offset):
    raw_indices = []
    result = []
    off_flag = True
    for index, token in enumerate(reg_offset):
            token = token.strip()
            is_off_flag = False
            if ')' in token:
                if ') to ' in token:
                    token = token.split(') to ', 1)[0]
                is_off_flag = True
                token = token.replace(')', '').strip()
            if 'sext' in token:
                aaab = token.find('%')
                aaac = token.find(' to ')
                token = token[aaab:aaac]
    
            # 只处理 i64/i32 等整型索引
            m = re.match(r'^(i\d+)\s+(\d+)$', token)
            if m:
                val = m.group(2).strip()
                if val == '0' and off_flag:
                    off_flag = False
                    continue
                else:
                    raw_indices.append(val)
            else:
                if '%' in token and token.strip() != '0':
                    reg = re.search(r'%\d+', token)
                    raw_indices.append(reg.group(0) if reg else token)
            # if is_off_flag:
            #     break
            off_flag = True if is_off_flag else False
    for v in raw_indices:
            if v.startswith('%'):
                num = uni_backtrace_register(v)  # 假定函数返回寄存器编号
                result.append(f'%{num}')
            else:
                result.append(v)
    return result

def uni_backtrace_register(next_reg):
    global temp_var_reg, var_map
    last_reg = None
    if next_reg in var_map:
        queue = deque([next_reg])
        reg_set = set()
        while queue:
            current_reg = queue.pop()
            last_reg = current_reg
            current_value = var_map.get(current_reg, "")
            # 如果当前寄存器还有进一步的定义，继续回溯
            reg_matches = re.findall(
                r'%\d+', current_value)  # 使用 findall 查找多个寄存器
            for next_reg in reg_matches:
                if next_reg in var_map and current_reg not in reg_set:
                    if next_reg in temp_var_reg:
                        return next_reg
                    else:
                        queue.appendleft(next_reg)
            reg_set.add(current_reg)
    return last_reg

def parse_execution_sequence(seq_str):
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str)
    # 使用正则表达式提取每行的完整函数和编号
    exec_sequence = re.findall(r'(\w+\*\d+)', clean_str)
    temp_seq_number = defaultdict(int)
    func_seq = defaultdict(list)
    for bb in exec_sequence:
        temp_func = bb.split('*')[0]
        func_seq[temp_func].append(bb)
    func_seq = dict(sorted(func_seq.items(), key=lambda x: len(x[1]), reverse=True))
    return exec_sequence, func_seq

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

def generate_dot(edge_weights, var_size, func_name):
    """生成优化的DOT文件"""
    dot = [f"strict digraph {func_name} {{"]
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
        # size = var_size.get(node.split('-')[1], -1)
        dot.append(
            f'  {node_nums[node]} [label="{node}", size={var_size.get(node, -1)}, color=blue, shape=record];')

    # 添加边定义（按权重降序排列）
    for edge, weight in sorted(edge_weights.items(), key=lambda x: -x[1]):
        src, dest = edge
        dot.append(
            f'  {node_nums[src]} -> {node_nums[dest]} [label="weight={weight}", weight="{weight}"];')

    dot.append("}")
    return '\n'.join(dot)

def mkdir_outpath(output_path):
    # 获取目录路径
    directory = os.path.dirname(output_path)
    
    # 检查目录是否存在，如果不存在则创建它
    if directory and not os.path.exists(directory):
        os.makedirs(directory)

def export_to_file(bb_vars, output_path):
    """将基本块变量信息写入指定文件"""
    try:
        mkdir_outpath(output_path)
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(bb_vars, f, indent=2, ensure_ascii=False)
            logging.info(f"成功写入JSON文件：{output_path}")

    except IOError as e:
        logging.error(f"文件写入失败：{str(e)}")
    except Exception as e:
        logging.error(f"发生意外错误：{str(e)}")

def main():
    logging.basicConfig(level=logging.INFO,
                        format='%(levelname)s - %(message)s')

    try:
        file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/picotcp/'
        with open(f'{file_path}GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()

        # 读取CFG文件
        with open(f'{file_path}BasicBlock.txt', 'r') as f:
            cfg_content = f.read()

        # 读取执行序列
        with open(f'{file_path}BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()

            # 处理数据
        exec_sequence, func_seq = parse_execution_sequence(
            exec_content)
        export_to_file(func_seq, f'{file_path}temp_func_seq.json')
        struct_size = process_sizes(sizes_file)
        bb_vars, var_size = parse_bb_variables(cfg_content)
        export_to_file(bb_vars, f'{file_path}temp_bb_vars.json')
        export_to_file(var_size, f'{file_path}temp_var_size.json')
        hot_number = 10
        # 为Hot函数生成DOT文件
        for func_name in func_seq:
            hot_number -= 1
            if hot_number < 0:
                break
            if len(bb_vars[func_name]['size']) >= 2:
                edge_weights = build_variable_graph(
                    bb_vars[func_name]['variables'], func_seq[func_name], 10)
                if (len(edge_weights) >= 1):
                    dot_output = generate_dot(
                        edge_weights, bb_vars[func_name]['size'], func_name)
                    output_path = f'{file_path}temp_struct_dfg/{len(func_seq[func_name])}_temp_{func_name}_variable_access_graph.dot'
                    mkdir_outpath(output_path)
                    with open(output_path, 'w') as f:
                        f.write(dot_output)
                    logging.info(
                        f"成功生成DOT文件：{len(func_seq[func_name])}_temp_{func_name}_variable_access_graph.dot")
                    logging.info(f"统计信息：")
                    logging.info(f"• 解析到 {len(bb_vars[func_name]['variables'])} 个基本块的变量信息")
                    logging.info(f"• 处理 {len(func_seq[func_name])} 个执行步骤")
                    logging.info(f"• 生成 {len(edge_weights)} 条依赖边")

    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
