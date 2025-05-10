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
    global_var_pattern = re.compile(r'.*,\s*(\[.*?\]\*\s*@\w+),')  # 匹配全局数组变量
    alloca_pattern = re.compile(
        r'(%\d+)\s*=\s*alloca\s+(.*?)(?:,\s*align\s*(\d+))?$')  # temp_var_reg

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
                # base_type, var_name, var = pattern_tool(var)
                var = re.search(r',\s*(.*?),\s*align', var)
                if var:
                    var = var.group(1).strip()
                    base_type, reg_name = var.split(" ", 1)
                    # 检查 reg_name 本身是否是全局数组变量
                    global_var_match = global_var_pattern.findall(reg_name)
                    if global_var_match:
                        array_var_name = parse_array_tool(global_var_match, reg_name, black_name, source_location)
                        # 如果是全局数组变量，直接添加提取的部分
                        if array_var_name:
                            final_vars.append(array_var_name)
                    elif reg_name in var_map:
                        array_access_ins = None
                        # 如果是寄存器，进行回溯替换
                        queue = deque([reg_name])
                        reg_set = set()
                        while queue:
                            current_reg = queue.pop()
                            current_value = var_map.get(current_reg, "")
                            array_access_ins = array_access_ins.replace(
                                current_reg, current_value) if array_access_ins else current_value
                            # 检查是否有全局数组变量
                            global_var_match = global_var_pattern.findall(
                                array_access_ins)
                            if global_var_match:
                                array_var_name = parse_array_tool(global_var_match, array_access_ins, black_name, source_location)
                                if array_var_name:
                                    final_vars.append(array_var_name)
                                break
                            # 如果当前寄存器还有进一步的定义，继续回溯
                            reg_matches = re.findall(
                                r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                            for next_reg in reg_matches:
                                if next_reg in var_map and current_reg not in reg_set:
                                    queue.appendleft(next_reg)
                            reg_set.add(current_reg)

        bb_key = f"{func_name}*{bb_num}"
        bb_vars[bb_key] = final_vars

        logging.debug(f"Parsed {bb_key} variables: {final_vars}")

    return bb_vars, var_size

def parse_array_tool(global_var_match, array_access_ins, black_name, source_location):
    global array_dim_info, array_loop_info, array_access_info, seq_number
    loop_num = seq_number.get(black_name, 0)
    if loop_num == 0:
        return None
    array_var_name = global_var_match[-1]
    array_var_name, array_name = get_dim_tem_num(array_access_ins, array_var_name)
    array_dim_info[array_name][array_var_name][source_location] += loop_num
    source_loop = source_location + "-" + str(loop_num)
    array_loop_info[source_loop].append(array_var_name)
    array_var_name += "-" + source_loop
    array_access_info.append(array_var_name)
    return array_var_name

def pattern_tool(current_value):
    current_value = current_value.split(', align')[0].split(', !dbg')[0]
    if ')* ' not in current_value:
        search_str = ',\s*(.*)$'
        temp_var = re.search(f'{search_str}', current_value)
        temp_var = temp_var.group(1).strip()
    else:
        search_str = '\)\*+\s*,?\s*(.*)$'
        temp_var = re.search(f'{search_str}', current_value)
        temp_var = temp_var.group(1).strip()
        if ', ' in temp_var:
            temp_var = temp_var.split(', ', 1)[1]
    if ']* ' in temp_var:
        base_type, var_name = temp_var.split("]* ", 1)
        base_type += ']*'
    elif ')* ' in temp_var:
        base_type, var_name = temp_var.split(")* ", 1)
        while var_name.startswith("*") or var_name.startswith(" "):
            var_name = var_name[1:]
        base_type = split_tool(base_type, " ", 0)
    else:
        base_type, var_name = temp_var.split(" ", 1)
    return base_type, var_name, temp_var

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

def parse_gep(mycmd: str, array_var_name: str):
    """
    从 LLVM IR 风格的 getelementptr 指令字符串中解析出索引表达式。

    Args:
        mycmd: 完整的 getelementptr 指令字符串。
        array_var_name: 目标数组变量名。

    Returns:
        extracted: 截取得到的参数文本。
        indexing: 形如 "globalArry[%2][3][%4]" 的最终索引表达式。
    """
    dim_length = array_var_name.count('[')  # 计算维度数量

    # 1. 定位并截取
    aaa = array_var_name.find('@')
    array_name_struct = array_var_name[0:aaa]
    array_var_name = array_var_name[aaa:]
    bbb = array_var_name.find('%')
    if bbb > 0:
        array_var_name = array_var_name[:bbb-1]

    start = mycmd.find(array_var_name)
    if start == -1:
        raise ValueError(f"在指令中未找到数组名：{array_var_name}")
    extracted = mycmd[start:].rstrip()
    if extracted.endswith(')'):
        extracted = extracted[:-1]

    # 2. 按逗号拆分，并去除所有 dbg 注释
    parts = [p.strip() for p in extracted.split(',')]
    parts = [p for p in parts if not p.startswith('!dbg')]
    parts = parts[1:]  # 去掉第一个部分（通常是类型信息）

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

    return indexing, name

def get_dim_tem_num(array_access_ins, array_var_name):
    global temp_var_reg, var_map
    nor, var_name = parse_gep(array_access_ins, array_var_name)
    ret = nor.replace("%%", "%")
    return ret, var_name

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
        length = array_var.count('[')
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
        node_str = f'  {number} [label="{node}", '
        for index, size in enumerate(value['dim']):
            node_str += f'{chr(65 + index)}={size}, '
        node_str += "color=blue, shape=record];"
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
        # edge_weights = build_variable_graph(bb_vars, exec_sequence)
        # 生成输出
        # dot_output = generate_dot(edge_weights)

        array_access_dot = generate_access_dot()
        array_dim_dot = generate_dim_dot()
        with open(f'{file_path}global_array_variable_access_graph.dot', 'w') as f:
            f.write(array_access_dot)
        with open(f'{file_path}array_global_array_variable_access_graph.dot', 'w') as f:
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
