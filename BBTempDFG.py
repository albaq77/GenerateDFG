import re
import logging
import json
import math
from collections import defaultdict, deque, OrderedDict

var_map = {}
temp_var_reg = {}
max_temp = 0
struct_size = {}
var_size = {}


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

def parse_bb_variables(cfg_str, seq_number):
    global temp_var_reg, var_map, max_temp, struct_size, var_size
    """从CFG DOT文件解析每个基本块的变量访问序列"""
    bb_vars = defaultdict(lambda: {'variables': {}, 'size': {}})

    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    loc_pattern = re.compile(r'Basic Block Source Location: (\S+:\d+)')
    var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')
    assign_pattern = re.compile(r'^(%\S+)\s*=\s*(.*)')  # 匹配 %number = ...
    temp_var_pattern = re.compile(r'.*,\s*(\[.*?\]\*\s*%\w+),')  # 匹配全局数组变量
    alloca_pattern = re.compile(r'(%\d+)\s*=\s*alloca\s+(.*?)(?:,\s*align\s*(\d+))?$') # temp_var_reg

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)

    current_func = None
    for func_name, bb_num, code_text in bb_blocks:
        # 如果进入了新的函数，清空 var_map
        if func_name != current_func:
            print(current_func)
            var_map = {}
            temp_var_reg = {}
            var_size = {}
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
                    type_str = alloca_match.group(2)
                    temp_var_size = calculate_type_size(type_str)
                    temp_var_reg[temp_var_name] = type_str
                    var_size[temp_var_name] = temp_var_size  # 存储临时变量的大小
        # 提取变量访问
        variables = []

        # 提取源码地址
        loc_match = loc_pattern.search(code_text)
        source_location = loc_match.group(
            1) if loc_match else "Unknown Location"

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
                var = var_match.group(1).strip()
                if ', <' in line:
                    var = var.replace('<', '[').replace('>', ']')
                var = pattern_tool(var)
                black_name = f'{func_name}*{bb_num}'
                if ']* ' in var:
                    base_type, reg_name = var.split("]* ", 1)
                    base_type += ']*'
                elif ')*' in var:
                    base_type, reg_name = var.split(")*", 1)
                    while reg_name.startswith("*") or reg_name.startswith(" "):
                        reg_name = reg_name[1:]
                    base_type = split_tool(base_type, " ", 0)
                else:
                    base_type, reg_name = var.split(" ", 1)
                size = calculate_type_size(base_type)
                if '@' not in reg_name:
                    if reg_name in temp_var_reg or int(split_tool(reg_name, '%')) <= max_temp:
                        supple_temp_reg(reg_name, var)
                        var_name = None
                        if '[' not in temp_var_reg[reg_name]:
                            temp_name = var
                            var_name = temp_name
                            var_size[temp_name] = calculate_type_size(base_type)
                        else:
                            temp_var_match = temp_var_pattern.findall(reg_name)
                            if temp_var_match:
                                # 如果是数组变量，直接添加提取的部分
                                array_var_name = temp_var_match[-1]
                                if int(split_tool(array_var_name, '%')) > max_temp:
                                    reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                                    temp_reg_name = reg_matches[0]
                                    var_reg = uni_backtrace_register(temp_reg_name)
                                    if not var_reg:
                                        break
                                    array_var_name = array_var_name.replace(temp_reg_name, var_reg)
                                    reg_name = reg_name.replace(temp_reg_name, var_reg)
                                var_name = get_dim_tem_num(reg_name, array_var_name) + "-" + source_location
                                if black_name in seq_number:
                                    var_name += "-" + str(seq_number[black_name])
                            else:
                                var_name = temp_var_reg[reg_name] + '-' + reg_name + "-" + source_location
                                if black_name in seq_number:
                                    var_name += "-" + str(seq_number[black_name])
                        variables.append(var_name)
                    elif reg_name in var_map:
                        var_temp_flag = True
                        array_access_ins = None
                        # 如果是寄存器，进行回溯替换
                        queue = deque([reg_name])
                        reg_set = set()
                        while queue and var_temp_flag:
                            current_reg = queue.pop()
                            current_value = var_map.get(current_reg, "")
                            if '@' in current_value:
                                break
                            array_access_ins = array_access_ins.replace(
                                current_reg, current_value) if array_access_ins else current_value
                            # 检查是否有数组变量
                            temp_var_match = temp_var_pattern.findall(
                                current_value)
                            if temp_var_match:
                                # 找到数组变量，停止回溯并添加到 final_vars
                                array_var_name = temp_var_match[-1]
                                if int(split_tool(array_var_name, '%')) > max_temp:
                                    reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                                    reg_name = reg_matches[0]
                                    var_reg = uni_backtrace_register(reg_name)
                                    if not var_reg:
                                        var_temp_flag = False
                                        break
                                    array_var_name = array_var_name.replace(reg_name, var_reg)
                                    array_access_ins = array_access_ins.replace(reg_name, var_reg)
                                var_name = get_dim_tem_num(array_access_ins, array_var_name) + "-" + source_location
                                if black_name in seq_number:
                                    var_name += "-" + str(seq_number[black_name])
                                variables.append(var_name)
                                var_temp_flag = False
                                break
                            # 如果当前寄存器还有进一步的定义，继续回溯
                            reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                            if 'getelementptr inbounds' in current_value:
                                temp_var = pattern_tool(current_value)
                                if temp_var:
                                    for next_reg in reg_matches:
                                        var_reg = uni_backtrace_register(next_reg)
                                        if not var_reg:
                                            var_temp_flag = False
                                            break
                                        temp_var = temp_var.replace(next_reg, var_reg)
                                    if not var_temp_flag:
                                        break
                                    size = calculate_type_size(base_type)
                                    temp_name = base_type + " " + temp_var
                                    var_name = temp_name
                                    var_size[temp_name] = size
                                    variables.append(var_name)
                                    var_temp_flag = False
                                    break
                            for next_reg in reg_matches:
                                if next_reg in temp_var_reg or int(split_tool(next_reg, '%')) <= max_temp:
                                    var_reg = uni_backtrace_register(next_reg)
                                    if not var_reg:
                                        var_temp_flag = False
                                        break
                                    var = var.replace(current_reg, var_reg)
                                    var_name = var
                                    var_size[var] = size
                                    variables.append(var_name)
                                    var_temp_flag = False
                                    break
                                elif next_reg in var_map and current_reg not in reg_set:
                                    queue.appendleft(next_reg)
                            reg_set.add(current_reg)
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

def uni_backtrace_register(next_reg):
    global temp_var_reg, var_map, max_temp
    if next_reg in temp_var_reg:
        return next_reg
    last_reg = None
    if next_reg in var_map:
        queue = deque([next_reg])
        reg_set = set()
        while queue:
            current_reg = queue.pop()
            last_reg = current_reg
            current_value = var_map.get(current_reg, "")
            if '@' in current_value:
                return None
            # 如果当前寄存器还有进一步的定义，继续回溯
            reg_matches = re.findall(r'%\d+', current_value)
            if 'getelementptr inbounds' in current_value:
                temp_var = pattern_tool(current_value)
                if temp_var:
                    for next_reg in reg_matches:
                        var_reg = uni_backtrace_register(next_reg)
                        if not var_reg:
                            var_temp_flag = False
                            return None
                        temp_var = temp_var.replace(next_reg, var_reg)
                    return temp_var
            for next_reg in reg_matches:
                if next_reg in var_map and current_reg not in reg_set:
                    if next_reg in temp_var_reg or int(split_tool(next_reg, "%")) <= max_temp:
                        temp_var = pattern_tool(current_value)
                        supple_temp_reg(next_reg, temp_var)
                        return next_reg
                    else:
                        queue.appendleft(next_reg)  
            reg_set.add(current_reg)
    return last_reg


def parse_gep(array_access_ins, array_var_name):
    """
    从 LLVM IR 风格的 getelementptr 指令字符串中解析出索引表达式。

    Args:
        array_access_ins: 完整的 getelementptr 指令字符串。
        array_var_name: 目标数组变量名。

    Returns:
        extracted: 截取得到的参数文本。
        indexing: 形如 "globalArry[%2][3][%4]" 的最终索引表达式。
    """
    dim_length = array_var_name.count('[')  # 计算维度数量

    # 1. 定位并截取
    aaa = array_var_name.find('%')
    array_name_struct = array_var_name[0:aaa]
    array_var_name = array_var_name[aaa:]
    start = array_access_ins.find(array_var_name) + len(array_var_name) + 1
    if start == -1:
        raise ValueError(f"在指令中未找到数组名：{array_var_name}")
    extracted = array_access_ins[start:].rstrip()
    if extracted.endswith(')'):
        extracted = extracted[:-1]

    # 2. 按逗号拆分，并去除所有 dbg 注释
    parts = [p.strip() for p in extracted.split(',')]
    parts = [p for p in parts if not p.startswith('!dbg')]

    # 3. 挑出所有 i64 开头的、值不为 0 的索引
    raw_indices = []
    length = 0
    is_not_ret = False
    is_even = len(parts) % 2 == 0

    for index, token in enumerate(parts):
        token = token.replace(')', '')
        if 'sext' in token:
            aaab = token.find('%')
            aaac = token.find(' to ')
            token = token[aaab:aaac]

        # 只处理 i64/i32 等整型索引
        m = re.match(r'^(i\d+)\s+(.+)$', token)
        if m:
            val = m.group(2).strip()
            if is_even:
                if val != '0' or index % 2 != 0:
                    raw_indices.append(val)
                    length += 1
                    if length == dim_length:
                        break
            else:
                if (val != '0' or is_not_ret or ((index < len(parts) - 2 and '%' not in parts[index + 1])) or (index == len(parts) - 1)) and index != 0:
                    raw_indices.append(val)
                    is_not_ret = False
                    length += 1
                    if length == dim_length:
                        break
                else:
                    is_not_ret = True
        else:
            if '%' in token and token.strip() != '0':
                reg = re.search(r'%\d+', token)
                raw_indices.append(reg.group(0) if reg else token)
                length += 1
                if length == dim_length:
                    break

    # 4. 过滤后转换寄存器，拼成最终索引
    mapped = []
    for v in raw_indices:
        if v.startswith('%'):
            num = uni_backtrace_register(v)  # 假定函数返回寄存器编号
            mapped.append(f'%{num}')
        else:
            if ')' in v:
                mapped.append("_IMM")
            else:
                mapped.append(v)

    name = array_name_struct + array_var_name
    indexing = name + ''.join(f'[{idx}]' for idx in mapped)

    return indexing

def get_dim_tem_num(array_access_ins, array_var_name):
    global temp_var_reg, var_map
    nor = parse_gep(array_access_ins, array_var_name)
    ret = nor.replace("%%", "%")
    return ret

def parse_execution_sequence(seq_str):
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str)
    # 使用正则表达式提取每行的完整函数和编号
    exec_sequence = re.findall(r'(\w+\*\d+)', clean_str)
    seq_number = defaultdict(int)
    func_seq = defaultdict(list)
    for bb in exec_sequence:
        temp_func = bb.split('*')[0]
        func_seq[temp_func].append(bb)
        seq_number[bb] += 1
    sorted_seq = dict(
        sorted(seq_number.items(), key=lambda x: x[1], reverse=True))

    return exec_sequence, sorted_seq, func_seq

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
    logging.basicConfig(level=logging.INFO,
                        format='%(levelname)s - %(message)s')

    try:
        file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/525x264/'
        with open(f'{file_path}GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()

        # 读取CFG文件
        with open(f'{file_path}BasicBlock.txt', 'r') as f:
            cfg_content = f.read()

        # 读取执行序列
        with open(f'{file_path}BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()

            # 处理数据
        exec_sequence, seq_number, func_seq = parse_execution_sequence(
            exec_content)
        export_to_file(seq_number, f'{file_path}temp_seq_number.json')
        export_to_file(func_seq, f'{file_path}temp_func_seq.json')
        struct_size = process_sizes(sizes_file)
        bb_vars, var_size = parse_bb_variables(cfg_content, seq_number)
        export_to_file(bb_vars, f'{file_path}temp_bb_vars.json')
        export_to_file(var_size, f'{file_path}temp_var_size.json')

        # 为每个函数生成DOT文件
        for func_name in bb_vars:
            if len(bb_vars[func_name]['size']) >= 2:
                edge_weights = build_variable_graph(
                    bb_vars[func_name]['variables'], func_seq[func_name], 10)
                if (len(edge_weights) >= 1):
                    dot_output = generate_dot(
                        edge_weights, bb_vars[func_name]['size'], func_name)
                    with open(f'{file_path}/temp_dfg/temp_{func_name}_variable_access_graph.dot', 'w') as f:
                        f.write(dot_output)
                    logging.info(
                        f"成功生成DOT文件：{func_name}_variable_access_graph.dot")
                    logging.info(f"统计信息：")
                    logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
                    logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
                    logging.info(f"• 生成 {len(edge_weights)} 条依赖边")

    except Exception as e:
        logging.error(f"处理失败: {str(e)}")


if __name__ == "__main__":
    main()
