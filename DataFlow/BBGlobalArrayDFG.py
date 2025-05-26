import re
import logging
import json
from collections import defaultdict, deque, OrderedDict

temp_var_reg = set()
var_map = {}
array_dim_info = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
array_loop_info = defaultdict(list)
array_access_info = list()
seq_number = {}
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

def parse_bb_variables(cfg_str):
    global temp_var_reg, var_map, array_dim_info
    """从CFG DOT文件解析每个基本块的变量访问序列，并处理寄存器回溯"""
    bb_vars = {}
    var_size = {}
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    loc_pattern = re.compile(r'Basic Block Source Location: (\S+:\d+)')
    var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')
    assign_pattern = re.compile(r'^(%\S+)\s*=\s*(.*)')  # 匹配 %number = ...
    global_var_pattern = re.compile(r',\s*((?:\[\s*.*?\s*\]\s*\*|[\w%.]+\s*\*{2,})\s*@\w+)\s*,')  # 匹配全局数组变量
    alloca_pattern = re.compile(r'(%\d+)\s*=\s*alloca\s+(.*?)(?:,\s*align\s*(\d+))?$')  # temp_var_reg

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)

    current_func = None

    for func_name, bb_num, code_text in bb_blocks:
        # 如果进入了新的函数，清空 var_map
        if func_name != current_func:
            logging.info(f"• 解析到 {func_name}")
            var_map = {}
            temp_var_reg = set()
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
                    temp_var_reg.add(temp_var_name)

        final_vars = []
        # 提取源码地址
        loc_match = loc_pattern.search(code_text)
        source_location = loc_match.group(
            1) if loc_match else "Unknown Location"

        for line in code_text.split('\n'):
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

            # 匹配 load/store 指令
            var_match = var_pattern.search(line)
            if var_match:
                black_name = f'{func_name}*{bb_num}'
                var = var_match.group(1).strip()
                if ', <' in line:
                    var = var.replace('<', '[').replace('>', ']')
                base_type, var_name, var = pattern_tool(var, line.startswith('store '))
                if var:
                    base_type, reg_name = var.split(" ", 1)
                    # 检查 reg_name 本身是否是全局数组变量
                    global_var_match = global_var_pattern.findall(line)
                    if global_var_match:
                        curr_offset = []
                        array_var_name = global_var_match[-1]
                        # 如果是数组变量，直接添加提取的部分
                        base_type, reg_name, var = pattern_tool(line, line.startswith('store '))
                        if not base_type:
                           continue
                        reg_offset = reg_name.strip().split(',')
                        if len(reg_offset) == 1:
                            continue
                        else:
                            curr_offset = register_offset(reg_offset)
                        array_var_name = parse_array_tool(array_var_name, curr_offset, black_name, source_location)
                        if array_var_name:
                            final_vars.append(array_var_name)
                    elif reg_name in var_map:
                        # 如果是寄存器，进行回溯替换
                        queue = deque([reg_name])
                        reg_set = set()
                        offset_list = []
                        while queue:
                            current_reg = queue.pop()
                            current_value = var_map.get(current_reg, "")
                            global_var_match = global_var_pattern.findall(current_value)
                            if global_var_match:
                                array_var_name = global_var_match[-1]
                                base_type, reg_name, var = pattern_tool(current_value, current_value.startswith('store '))
                                reg_offset = reg_name.strip().split(',')
                                curr_offset = register_offset(reg_offset)
                                offset_list.extend(curr_offset)
                                offset_list.reverse()
                                array_var_name = parse_array_tool(array_var_name, offset_list, black_name, source_location)
                                if array_var_name:
                                    final_vars.append(array_var_name)
                                break
                            # 如果当前寄存器还有进一步的定义，继续回溯
                            reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                            for next_reg in reg_matches:
                                if next_reg in var_map and current_reg not in reg_set:
                                    queue.appendleft(next_reg)
                            reg_set.add(current_reg)

                            base_type, reg_name, var = pattern_tool(current_value, current_value.startswith('store '))
                            if not base_type:
                                continue
                            reg_offset = reg_name.strip().split(',')
                            if len(reg_offset) == 1:
                                continue
                            else:
                                curr_offset = register_offset(reg_offset)
                                offset_list.extend(curr_offset)
        bb_key = f"{func_name}*{bb_num}"
        bb_vars[bb_key] = final_vars

        logging.debug(f"Parsed {bb_key} variables: {final_vars}")

    return bb_vars, var_size

def parse_array_tool(array_var_name, offset_list, black_name, source_location):
    global array_dim_info, array_loop_info, array_access_info, seq_number
    loop_num = seq_number.get(black_name, 0)
    if loop_num == 0:
        return None
    array_var_name, array_name = parse_gep(offset_list, array_var_name)
    if not array_var_name:
        return None
    array_var_name = array_var_name.replace("%%", "%")
    array_dim_info[array_name][array_var_name][source_location] += loop_num
    source_loop = source_location + "-" + str(loop_num)
    array_loop_info[source_loop].append(array_var_name)
    array_var_name += "-" + source_loop
    array_access_info.append(array_var_name)
    return array_var_name

def register_offset(reg_offset):
    reg_name = reg_offset[0]
    reg_offset = reg_offset[1:]
    raw_indices = []
    result = []
    for index, token in enumerate(reg_offset):
            token = token.replace(')', '').strip()
            if 'sext' in token:
                aaab = token.find('%')
                aaac = token.find(' to ')
                token = token[aaab:aaac]
    
            # 只处理 i64/i32 等整型索引
            m = re.match(r'^(i\d+)\s+(\d+)$', token)
            if m:
                val = m.group(2).strip()
                if val == '0' and len(reg_offset) == 2 and index == 0:
                    continue
                else:
                    raw_indices.append(val)
            else:
                if '%' in token and token.strip() != '0':
                    reg = re.search(r'%\d+', token)
                    raw_indices.append(reg.group(0) if reg else token)
    for v in raw_indices:
            if v.startswith('%'):
                num = uni_backtrace_register(v)  # 假定函数返回寄存器编号
                result.append(f'%{num}')
            else:
                result.append(v)
    return result

def pattern_tool(current_value, store):

    def find_first_comma(input_string, flag):
        # 初始化括号计数器
        bracket_depth = 0
        # 遍历字符串中的每个字符及其索引
        for index, char in enumerate(input_string):
            # 如果遇到左括号，增加深度
            if char in '{[(<':
                bracket_depth += 1
            # 如果遇到右括号，减少深度
            elif char in '}])>':
                bracket_depth -= 1
            # 如果是逗号并且不在括号内，返回其索引
            elif char == flag and bracket_depth == 0:
                return index
        # 如果没有找到符合条件的逗号，返回 None
        return None
    
    if current_value.startswith('phi') or current_value.startswith('alloca'):
        return None, None, None
    current_value = current_value.split(', align')[0].split(', !dbg')[0]
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
        non_bracket_comma = find_first_comma(temp_var, ' ')
        if not non_bracket_comma:
            return None, None, None
        base_type = temp_var[0:non_bracket_comma + 1]
        var_name = temp_var[non_bracket_comma + 1:].strip()
        if not var_name:
            return None, None, None
    return base_type.strip(), var_name.strip(), temp_var.strip()
def split_tool(value, flag, number=-1):
    res = value.split(flag)
    return res[number]

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
        return array_size * calculate_type_size(element_type)

    # 处理结构体大小 (假设结构体大小已知并传入)
    struct_match = re.match(r'(%struct\.\w+)', type_str)
    if struct_match:
        struct_name = struct_match.group(1)
        return struct_size.get(struct_name, 0)

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

def parse_dim_length(struct_var, var, var_name):
    dim_length = struct_var.count('[')  # 计算维度数量
    if dim_length == 0:
        dim_length = isPointerStruct(var, var_name) - 1
    else:
        if isPointerStruct(var, var_name)- 1 > 0:
            dim_length += isPointerStruct(var, var_name) - 1
    return dim_length

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
    dim_length = array_var_name.count('[')  # 计算维度数量
    sour_name = array_var_name
    # 1. 定位并截取
    aaa = array_var_name.rfind('@')
    array_name_struct = array_var_name[0:aaa]
    array_var_name = array_var_name[aaa:]
    dim_length = parse_dim_length(array_name_struct, sour_name, array_var_name)
    is_struct_array = '%struct.' in array_name_struct
    if dim_length > len(offset_list) or (is_struct_array and '[' in array_name_struct and len(offset_list) == 1) or (array_name_struct.startswith('%struct.') and len(offset_list) <= dim_length) or max_dim > len(offset_list):
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

def parse_execution_sequence(seq_str):
    global seq_number
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str)
    # 使用正则表达式提取每行的完整函数和编号
    exec_sequence = re.findall(r'(\w+\*\d+)', clean_str)
    temp_seq_number = defaultdict(int)
    for bb in exec_sequence:
        temp_seq_number[bb] += 1
    seq_number = dict(
        sorted(temp_seq_number.items(), key=lambda x: x[1], reverse=True))
    return exec_sequence

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

    # 创建节点集合
    nodes = set()
    for (src, dest) in edge_weights:
        nodes.add(src)
        nodes.add(dest)

    # 添加节点定义
    for node in sorted(nodes):
        number += 1
        dot.append(
            f'  {number} [label="{node}", color=blue, shape=record];')

    lastNode = None
    # 添加节点定义
    for node in range(1, number + 1):
        if lastNode:
            dot.append(
                f'  {lastNode} -> {node} [label="weight=1", weight="1"];')
        lastNode = node

    dot.append("}")
    return '\n'.join(dot)

def generate_access_dot(): 
    global array_access_info
    number = 0

    dot = ["strict digraph {"]
    for node in array_access_info:
        number += 1
        dot.append(
            f'  {number} [label="{node}", color=blue, shape=record];')

    lastNode = None
    # 添加节点定义
    for node in range(1, number + 1):
        if lastNode:
            dot.append(
                f'  {lastNode} -> {node} [label="weight=1", weight="1"];')
        lastNode = node
    dot.append("}")
    return '\n'.join(dot)

def generate_dim_dot(): 
    global array_dim_info
    result = defaultdict(lambda : {'dim': [], 'loop': int})
    index_pattern = r'\[(%\d+|\d+)\]'
    for array_var, array_var_access in array_dim_info.items():
        length = parse_dim_length(array_var, array_var, '@' + split_tool(array_var, '@'))
        num = 0
        dim = [0] * length
        for access_mode, source_loop in array_var_access.items():
            indices = re.findall(index_pattern, split_tool(access_mode, '@'))
            max_index = -1
            max_position = -1
            for index, indice in enumerate(indices):
                if '%' in indice:
                    current_index = int(split_tool(indice, '%'))
                    if current_index > max_index:
                        max_position = index
                        max_index = current_index
            if max_position != -1:
                for source, loop in source_loop.items():
                    num += loop
                    dim[max_position] += loop
        if num != 0:
            result[array_var]['dim'] = dim
            result[array_var]['loop'] = num

    number = 0

    dot = ["strict digraph {"]
    for node, value in sorted(result.items(), key=lambda item: item[1]['loop'], reverse=True):
        number += 1
        node_str = f'  {number} [label="{node}'
        for index, size in enumerate(value['dim']):
            node_str += f', {chr(65 + index)}={size}'
        node_str += "\", color=blue, shape=record];"
        dot.append(node_str)

    lastNode = None
    # 添加节点定义
    for node in range(1, number + 1):
        if lastNode:
            dot.append(
                f'  {lastNode} -> {node} [label="weight=1", weight="1"];')
        lastNode = node
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
    global array_dim_info, array_loop_info, array_access_info, seq_number
    logging.basicConfig(level=logging.INFO,
                        format='%(levelname)s - %(message)s')
    try:

        file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/433milc/'
        with open(f'{file_path}GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()
        
        # 读取CFG文件
        with open(f'{file_path}BasicBlock.txt', 'r') as f:
            cfg_content = f.read()
        
        # 读取执行序列
        with open(f'{file_path}BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()
        # 处理数据
            # 处理数据
        exec_sequence = parse_execution_sequence(exec_content)
        export_to_file(seq_number, f'{file_path}global_array_seq_number.json')
        bb_vars, var_size = parse_bb_variables(cfg_content)
        array_access_info = sorted(array_access_info, key=lambda item: int(split_tool(item, '-')), reverse=True)
        array_loop_info = OrderedDict(sorted(array_loop_info.items(), key=lambda item: int(split_tool(item[0], '-')), reverse=True))
        export_to_file(array_dim_info, f'{file_path}global_array_dim_info.json')
        export_to_file(array_loop_info, f'{file_path}global_array_loop_info.json')
        export_to_file(array_access_info, f'{file_path}global_array_access_info.json')
        export_to_file(bb_vars, f'{file_path}global_array_bb_vars.json')
        array_access_dot = generate_access_dot()
        array_dim_dot = generate_dim_dot()
        with open(f'{file_path}global_array_variable_access_graph.dot', 'w') as f:
            f.write(array_access_dot)
        with open(f'{file_path}global_dim_array_variable_access_graph.dot', 'w') as f:
            f.write(array_dim_dot)

        logging.info(f'变量访问图已生成到 {file_path}global_array_variable_access_graph.dot')
        logging.info(f"统计信息：")
        logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
        logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
        # logging.info(f"• 生成 {len(edge_weights)} 条依赖边")

    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
