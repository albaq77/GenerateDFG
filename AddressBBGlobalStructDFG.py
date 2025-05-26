import re
import logging
import json
import os
import itertools
from collections import defaultdict, OrderedDict, deque
import argparse
from typing import Dict, Any, Tuple, Optional
import sys

struct_size = {}
var_map = {}
max_temp = 0
type_dim = defaultdict(int)
struct_type = {}
global_struct_var = set()
global_struct = defaultdict(lambda: {'type': str, 'size': int})
all_struct_variables = {}
variables_exec = []

def parse_symbol_line(line: str) -> Optional[Tuple[str, int, int]]:
    """
    解析符号表中的一行
    
    Args:
        line: 符号表中的一行文本
        
    Returns:
        tuple: (符号名, 起始地址, 大小) 或 None
    """
    line = line.strip()
    if not line:
        return None
    
    # 解析符号表行格式
    pattern = r'^([0-9a-fA-F]+)\s+[lg]\s+O?\s*\.?\w*\s+([0-9a-fA-F]+)\s+(.+)$'
    match = re.match(pattern, line)
    
    if match:
        address_str = match.group(1)
        size_str = match.group(2)
        symbol_name = match.group(3).strip()
        
        try:
            address = int(address_str, 16)
            size = int(size_str, 16)
            return symbol_name, address, size
        except ValueError:
            return None
    
    return None

def parse_symbol_table(symbol_file: str) -> Dict[str, Dict[str, int]]:
    """
    解析符号表文件
    
    Args:
        symbol_file: 符号表文件路径
        
    Returns:
        dict: 符号名到地址和大小的映射
    """
    symbols = {}
    
    try:
        with open(symbol_file, 'r', encoding='utf-8') as f:
            for line in f:
                result = parse_symbol_line(line)
                if result:
                    symbol_name, address, size = result
                    symbols[symbol_name] = {
                        'address': address,
                        'size': size
                    }
    
    except FileNotFoundError:
        print(f"错误: 找不到符号表文件 '{symbol_file}'")
        sys.exit(1)
    except Exception as e:
        print(f"错误: 读取符号表文件时出现异常: {e}")
        sys.exit(1)
    
    return symbols

def process_sizes(sizes_content: str, symbols: Dict[str, Dict[str, int]]) -> Dict[str, Any]:
    
    """
    处理全局变量大小信息并结合符号表地址信息
    
    Args:
        sizes_content: global.txt文件内容
        symbols: 符号表信息
        
    Returns:
        dict: 完整的结构体和变量信息
    """
    global struct_size
    struct_size = {}
    current_struct = None
    
    # 读取输入文件并解析每一行
    for line in sizes_content.strip().splitlines():
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
                
                # 创建变量条目
                var_info = {
                    "type": type_part.strip(), 
                    "size": size
                }
                
                # 查找符号表中的地址信息
                symbol_name = name_part.strip()
                if symbol_name in symbols:
                    symbol_info = symbols[symbol_name]
                    var_info["address"] = f"0x{symbol_info['address']:x}"
                    var_info["symbol_size"] = symbol_info['size']
                    print(f"匹配变量 {name}: 地址={var_info['address']}, 符号大小={symbol_info['size']}")
                else:
                    print(f"警告: 在符号表中未找到变量 '{symbol_name}'")
                
                struct_size[name] = var_info
                
            elif line.startswith("Struct:"):
                line = line.replace(' class.', ' struct.class.').replace(' union.', ' struct.union.')
                # 处理结构体
                struct_name_part = line.split(", Size: ")[0].split(": ", 1)[1].split(", Type: ")[0]
                size_part = line.split(", Size: ")[1]
                struct_name = '%' + struct_name_part.strip()
                size = int(size_part.split(" ")[0])
                struct_size[struct_name] = {"size": size, "members": []}
                current_struct = struct_name
                
            elif line.startswith("Member") or line.strip().startswith("Member"):
                # 处理结构体成员
                parts = line.split(", Size ")
                type_part = parts[0].split(": Type ")[1]  # 获取类型部分
                size_part = parts[1]  # 获取大小部分
                
                if type_part.startswith('%struct.'):
                    type_part = type_part.split(" = ", 1)[0]
                
                member_type = type_part.strip()
                member_size = int(size_part.split(" ")[0])
                
                # 添加成员到当前结构体的成员列表中
                if current_struct and current_struct in struct_size:
                    struct_size[current_struct]["members"].append({
                        "type": member_type,
                        "size": member_size
                    })
    
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

def uni_backtrace_register(next_reg):
    global max_temp, var_map
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
                    if int(split_tool(next_reg, '%')) <= max_temp:
                        return next_reg
                    else:
                        queue.appendleft(next_reg)
            reg_set.add(current_reg)
    return last_reg

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
    aaa = array_var_name.rfind('@')
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
        indexing += ''.join(f'[{idx}]' for idx in offset_list[:dim_length])

    if is_struct_array:
        if dim_length < len(offset_list):
            indexing += ''.join(f'.{idx}' for idx in offset_list[dim_length:] if not idx.startswith('%'))
    max_dim = dim_length if dim_length > max_dim else max_dim
    type_dim[name] = max_dim
    return indexing, name

def parse_dim_length(struct_var, var, var_name):
    dim_length = struct_var.count('[')  # 计算维度数量
    if dim_length == 0:
        dim_length = isPointerStruct(var, var_name) - 1
    else:
        if isPointerStruct(var, var_name)- 1 > 0:
            dim_length += isPointerStruct(var, var_name) - 1
    return dim_length

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

def pattern_tool(current_value, flag='* %'):

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
        non_bracket_comma = find_first_comma(temp_var, flag)
        if not non_bracket_comma:
            return None, None, None
        base_type = temp_var[0:non_bracket_comma + 1]
        var_name = temp_var[non_bracket_comma + 1:].strip()
        if not var_name:
            return None, None, None
    return base_type.strip(), var_name.strip(), temp_var.strip()

def parse_bb_variables(cfg_str):
    """从CFG DOT文件解析每个基本块的变量访问序列"""
    global var_map, max_temp, struct_size, struct_type, global_struct_var, global_struct
    bb_vars = {}
    var_size = {}
    current_func = None
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    var_pattern = re.compile(r'\b((?:load|store)\b\s+.*)')
    assign_pattern = re.compile(r'^(%\S+)\s*=\s*(.*)')  # 匹配 %number = ...
    alloca_pattern = re.compile(r'(%\d+)\s*=\s*alloca\s+(.*?)(?:,\s*align\s*(\d+))?$') # temp_var_reg
    global_var_pattern = re.compile(r'(%struct\.[^\s]*\*?)\s+(@[^\s]+.*)$')

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)
    
    for func_name, bb_num, code_text in bb_blocks:
        
        # 如果进入了新的函数，清空 var_map
        if func_name != current_func:
            logging.info(f"• 解析到 {func_name}")
            var_map = {}
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
        # 提取变量访问
        variables = []
        logging.info(f"• 解析到 {bb_num}")
        last_var_line_list = []
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
            # 匹配load/store指令
            var_match = var_pattern.search(line)
            if var_match:
                is_store = line.startswith('store')
                size = -1
                offset_list = []
                var = var_match.group(1).strip()
                if ', <' in line:
                    var = var.replace('<', '[').replace('>', ']') 
                base_type, reg_name, var_name = pattern_tool(var, '* @')
                if not base_type:
                    continue
                if re.search(r'\[\d+\s+x\s+.*?\]', var):
                    continue
                # if not line.startswith('store '):
                #     temp_base_type = var[:var.find(var_name)]
                #     while temp_base_type.endswith(',') or temp_base_type.endswith(' '):
                #         temp_base_type = temp_base_type[:len(temp_base_type) - 1]
                #     base_type = temp_base_type
                struct_name, size, offset_list = parse_global_struct_tool(base_type, reg_name, global_var_pattern, offset_list)
                if struct_name:
                    pstr = 'W' if is_store else 'R'
                    variables.append(pstr + '-' + struct_name)
                    # match_global = re.search(r'@[\w\._]+', reg_name)
                    # if match_global:
                    #     global_struct_var.add(match_global.group(0).strip())
                    var_size[struct_name] = size
                    last_var_line = "" if line.startswith('store ') else "load " + var_match.group(1)
                    last_var_line_list.append(last_var_line)
                # elif reg_name in var_map and int(split_tool(reg_name, '%')) > max_temp:
                #     var_temp_flag = True
                #     # 如果是寄存器，进行回溯替换
                #     queue = deque([reg_name])
                #     reg_set = set()
                #     struct_var = None
                #     while queue and var_temp_flag:
                #         current_reg = queue.pop()
                #         current_value = var_map.get(current_reg, "")
                #         # 如果当前寄存器还有进一步的定义，继续回溯
                #         reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
                #         for next_reg in reg_matches:
                #             if next_reg in var_map and current_reg not in reg_set:
                #                 queue.appendleft(next_reg)
                #         reg_set.add(current_reg)
                #         temp_base_type, temp_reg_name, temp_var = pattern_tool(current_value, '* @')
                #         if not temp_base_type:
                #             continue
                #         if struct_var and (not temp_base_type.startswith(struct_var)) and temp_base_type.startswith('%struct.'):
                #             offset_list = []
                #         struct_name, size, offset_list = parse_global_struct_tool(base_type, temp_reg_name, global_var_pattern, offset_list)
                #         if struct_name and (not current_value in last_var_line_list) and (not re.search(r'\[\d+\s+x\s+.*?\]', current_value)):
                #             variables.append(struct_name)
                #             match_global = re.search(r'@[\w\._]+', current_value)
                #             if match_global:
                #                 global_struct_var.add(match_global.group(0).strip())
                #             var_size[struct_name] = size
        # 构建字典键
        bb_key = f"{func_name}*{bb_num}"
        bb_vars[bb_key] = variables
        logging.debug(f"Parsed {bb_key} variables: {variables}")
    
    return bb_vars, var_size

def parse_global_struct_tool(base_type, reg_name, global_var_pattern, offset_list):
    global struct_type, global_struct
    size = -1
    if '@' in reg_name:
        size = calculate_type_size(base_type)
        struct_name = base_type
        global_var = reg_name
        reg_offset = global_var.strip().split(',')
        struct_var_name = reg_name
        if 'getelementptr inbounds' in reg_name:
            # 提取是否含有全局变量
            match_global = global_var_pattern.search(reg_name)
            if match_global:
                struct_name = match_global.group(1).strip()
                global_var = match_global.group(2).strip()
                reg_offset = global_var.strip().split(',')    
        reg_name = reg_offset[0]
        reg_name = re.search(r'@[\w\._]+', global_var).group(0).strip()
        if len(reg_offset) >= 2:
            reg_offset = reg_offset[1:]
            curr_offset = register_offset(reg_offset)
            offset_list.extend(curr_offset)
        if len(offset_list) > 0:
            struct_var_name, array_name = parse_gep(offset_list, struct_name + " " + reg_name)
            if struct_var_name:
                struct_var_name = struct_var_name.replace("%%", "%")
        struct_name = struct_var_name if struct_var_name else reg_name
        struct_name = '@' + split_tool(struct_name, '@')
        base_type = global_struct.get(struct_name, None)
        if base_type:
            size = base_type['size']
            base_type = base_type['type']
            struct_name = base_type + " " + struct_name
            return struct_name, size, offset_list
        else:
            return None, None, []
    else:
        return None, None, []

def parse_execution_sequence(seq_str):
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str) 
    # 使用正则表达式提取每行的完整函数和编号
    return re.findall(r'(\w+\*\d+)', clean_str)

def build_variable_graph(bb_vars, exec_sequence, window_size=10):
    global all_struct_variables, variables_exec
    """构建变量访问图并计算权重"""
    edge_weights = defaultdict(int)
    weight_window = OrderedDict()  # 使用 OrderedDict 保证顺序

    for bb in exec_sequence:
        curr_vars = bb_vars.get(bb, [])
        if not curr_vars:
            continue

        for curr_var in curr_vars:
            ptr, curr_var = curr_var.split('-', 1)
            address = all_struct_variables.get(curr_var, {}).get('address', '0x0')
            size = all_struct_variables.get(curr_var, {}).get('size', -1)
            ptr_str = f'{ptr} {curr_var} {address} {size}'
            variables_exec.append(ptr_str)
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

def generate_dot(edge_weights, var_size, all_nodes = None):
    """生成优化的DOT文件"""
    dot = ["strict digraph {"]
    number = 0
    node_nums = {}
    
    # 创建节点集合
    nodes = set()
    for edge in edge_weights:
        nodes.update(edge)
    if all_nodes:
        nodes.update(all_nodes)
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

def parse_source_layout(mem_line_size=64):
    """
    解析源码布局，生成包含地址信息的内存行布局
    
    Args:
        mem_line_size: 内存行大小，默认64字节
        
    Returns:
        dict: 包含内存行布局的字典
    """
    global global_struct_var, struct_size, global_struct
    source_struct_layout = {}  # 用于存储 memoryLine 信息
    current_memory_line = {}  # 当前 memoryLine 中的变量
    current_line_size = 0  # 当前 memoryLine 的大小
    line_index = 0  # memoryLine 的索引
    
    def calculate_member_address(base_address, member_offset):
        """
        计算成员变量的地址
        
        Args:
            base_address: 结构体基地址
            member_offset: 成员在结构体中的偏移量
            
        Returns:
            str: 格式化的十六进制地址字符串
        """
        if isinstance(base_address, str):
            # 如果base_address是字符串格式 "0x..."，转换为整数
            base_addr_int = int(base_address, 16)
        else:
            base_addr_int = base_address
        
        member_addr = base_addr_int + member_offset
        return f"0x{member_addr:x}"
    
    def add_to_memory_line(var_name, var_type, var_size, var_address=None, is_struct=False, struct_name=None, member_index=None):
        """
        添加变量到内存行
        
        Args:
            var_name: 变量名
            var_type: 变量类型
            var_size: 变量大小
            var_address: 变量地址
            is_struct: 是否为结构体成员
            struct_name: 结构体名称
            member_index: 成员索引
        """
        nonlocal current_line_size, line_index, current_memory_line
        
        # 检查当前变量是否可以放入当前 memoryLine 中
        if current_line_size + var_size > mem_line_size:
            # 如果装不下，保存当前 memoryLine 并开始新的 memoryLine
            source_struct_layout[f"memoryLine_{line_index}"] = current_memory_line
            current_memory_line = {}
            current_line_size = 0
            line_index += 1
        
        temp_type = None
        temp_name = None
        
        # 添加变量到当前 memoryLine
        if is_struct and struct_name:
            temp_type = f"{var_type}* {struct_name}*"
            temp_name = f"{var_name}.{member_index}"
        else:
            temp_type = f"{var_type}*"
            temp_name = f"{var_name}"
        
        formatted_name = f"{temp_type} {temp_name}"
        
        # 创建变量信息，包含地址
        var_info = {
            'size': var_size
        }
        if var_address:
            var_info['address'] = var_address
        
        current_memory_line[formatted_name] = var_info
        
        # 更新全局结构体信息，包含地址
        global_struct_info = {
            'type': temp_type, 
            'size': var_size
        }
        if var_address:
            global_struct_info['address'] = var_address
            
        global_struct[temp_name] = global_struct_info
        current_line_size += var_size
    
    def process_members(var_name, members, struct_name, base_address=None):
        """
        处理结构体成员
        
        Args:
            var_name: 变量名
            members: 成员列表
            struct_name: 结构体名称
            base_address: 结构体基地址
        """
        member_offset = 0  # 当前成员在结构体中的偏移量
        
        for index, member in enumerate(members):
            member_type = member['type']
            member_size = member['size']
            
            # 计算当前成员的地址
            member_address = None
            if base_address:
                member_address = calculate_member_address(base_address, member_offset)
            
            if '[' in member_type:
                # 跳过数组类型，但要更新偏移量
                member_offset += member_size
                continue
            
            if member_type.startswith('%struct.'):
                member_struct_name = member_type
                if not member_struct_name.endswith('*'):
                    # 嵌套结构体，需要递归处理
                    nested_members = struct_size.get(member_struct_name, {}).get('members', [])
                    process_members(f"{var_name}.{index}", nested_members, struct_name, member_address)
                else:
                    # 结构体指针
                    add_to_memory_line(var_name, member_type, member_size, member_address, 
                                     is_struct=True, struct_name=struct_name, member_index=index)
            else:
                # 普通类型成员
                add_to_memory_line(var_name, member_type, member_size, member_address,
                                 is_struct=True, struct_name=struct_name, member_index=index)
            
            # 更新偏移量
            member_offset += member_size
    
    # 遍历结构体大小字典
    for var_name in struct_size.keys():
        if var_name.startswith('%struct.'):
            break 
        
        var_info = struct_size[var_name]
        var_type = var_info['type']
        var_size = var_info['size']
        
        # 获取变量的基地址
        base_address = var_info.get('address', None)
        
        if '[' in var_type:
            continue
        
        if var_type.startswith("%struct."):
            # 如果是结构体，拆分成员变量
            struct_name = var_type
            if not struct_name.endswith('*'):
                members = struct_size.get(struct_name, {}).get('members', [])
                process_members(var_name, members, struct_name, base_address)
            else:
                add_to_memory_line(var_name, struct_name, var_size, base_address)
        else:
            # 普通类型变量
            add_to_memory_line(var_name, var_type, var_size, base_address)
    
    # 添加最后一个 memoryLine 如果它不是空的
    if current_memory_line:
        source_struct_layout[f"memoryLine_{line_index}"] = current_memory_line
    
    return source_struct_layout

def print_memory_layout_with_address(source_struct_layout):
    """
    打印基于地址的内存布局信息
    
    Args:
        source_struct_layout: 源码结构布局字典
    """
    print("=== 基于实际地址的内存布局信息 ===")
    
    for memory_line, line_info in source_struct_layout.items():
        address_range = line_info.get('address_range', 'N/A')
        variables = line_info.get('variables', {})
        
        print(f"\n{memory_line} ({address_range}):")
        
        total_size = 0
        var_list = []
        
        for var_name, var_info in variables.items():
            size = var_info.get('size', 0)
            address = var_info.get('address', 'N/A')
            is_array = var_info.get('is_array', False)
            is_struct_member = var_info.get('is_struct_member', False)
            
            array_flag = " [ARRAY]" if is_array else ""
            member_flag = " [STRUCT_MEMBER]" if is_struct_member else " [GLOBAL]"
            
            var_list.append({
                'name': var_name,
                'size': size,
                'address': address,
                'flags': array_flag + member_flag
            })
            total_size += size
        
        # 按地址排序显示
        var_list.sort(key=lambda x: int(x['address'], 16) if x['address'] != 'N/A' else 0)
        
        for var in var_list:
            print(f"  {var['name']}: {var['size']} bytes, 地址: {var['address']}{var['flags']}")
        
        print(f"  Memory Line总大小: {total_size} bytes")

def analyze_memory_gaps(source_struct_layout):
    """
    分析内存间隙，检查是否有未使用的内存空间
    """
    print("\n=== 内存间隙分析 ===")
    
    all_ranges = []
    for memory_line, line_info in source_struct_layout.items():
        variables = line_info.get('variables', {})
        for var_name, var_info in variables.items():
            address = var_info.get('address', 'N/A')
            size = var_info.get('size', 0)
            if address != 'N/A':
                start_addr = int(address, 16)
                end_addr = start_addr + size - 1
                all_ranges.append((start_addr, end_addr, var_name))
    
    # 按起始地址排序
    all_ranges.sort()
    
    # 检查间隙
    for i in range(len(all_ranges) - 1):
        current_end = all_ranges[i][1]
        next_start = all_ranges[i + 1][0]
        
        if next_start > current_end + 1:
            gap_size = next_start - current_end - 1
            print(f"间隙: 0x{current_end + 1:x} - 0x{next_start - 1:x} ({gap_size} bytes)")

def parse_source_layout_by_address(mem_line_size=64):
    """
    修正版本的基于实际内存地址解析源码布局
    """
    global global_struct_var, struct_size, global_struct, all_struct_variables
    
    all_variables = []
    
    def calculate_member_address(base_address, member_offset):
        """计算成员变量的地址"""
        if isinstance(base_address, str):
            base_addr_int = int(base_address, 16)
        else:
            base_addr_int = base_address
        
        member_addr = base_addr_int + member_offset
        return member_addr
    
    def collect_struct_members(var_name, members, struct_name, base_address):
        """收集结构体成员信息 - 只记录最内层的非结构体变量"""
        member_offset = 0
        
        for index, member in enumerate(members):
            member_type = member['type']
            member_size = member['size']
            
            member_address = calculate_member_address(base_address, member_offset)
            
            # 如果是嵌套结构体，递归处理，不记录结构体本身
            if member_type.startswith('%struct.') and not member_type.endswith('*'):
                nested_members = struct_size.get(member_type, {}).get('members', [])
                if nested_members:
                    collect_struct_members(f"{var_name}.{index}", nested_members, 
                                         member_type, member_address)
                else:
                    # 结构体定义不存在，作为最内层处理
                    temp_type = f"{member_type}* {struct_name}*"
                    temp_name = f"{var_name}.{index}"
                    formatted_name = f"{temp_type} {temp_name}"
                    
                    var_info = {
                        'name': formatted_name,
                        'display_name': temp_name,
                        'type': temp_type,
                        'size': member_size,
                        'address': f"0x{member_address:x}",
                        'is_array': '[' in member_type,
                        'is_struct_member': True,
                        'parent_struct': struct_name
                    }
                    
                    all_variables.append(var_info)
            
                    # 更新全局结构体信息
                    global_struct[temp_name] = {
                        'type': temp_type, 
                        'size': member_size,
                        'address': f"0x{member_address:x}"
                    }
            else:
                # 最内层的非结构体变量，记录它
                temp_type = f"{member_type}* {struct_name}*"
                temp_name = f"{var_name}.{index}"
                formatted_name = f"{temp_type} {temp_name}"
                
                var_info = {
                    'name': formatted_name,
                    'display_name': temp_name,
                    'type': temp_type,
                    'size': member_size,
                    'address': f"0x{member_address:x}",
                    'is_array': '[' in member_type,
                    'is_struct_member': True,
                    'parent_struct': struct_name
                }
                
                all_variables.append(var_info)
                
                # 更新全局结构体信息
                global_struct[temp_name] = {
                    'type': temp_type, 
                    'size': member_size,
                    'address': f"0x{member_address:x}"
                }
            
            member_offset += member_size
    
    # 收集所有变量信息
    for var_name in struct_size.keys():
        if var_name.startswith('%struct.'):
            continue
        
        var_info = struct_size[var_name]
        var_type = var_info['type']
        var_size = var_info['size']
        
        if 'address' not in var_info:
            print(f"警告: 变量 {var_name} 没有地址信息，跳过")
            continue
        
        base_address = var_info['address']
        if isinstance(base_address, str):
            base_addr_int = int(base_address, 16)
        else:
            base_addr_int = base_address
        
        if var_type.startswith("%struct."):
            # 结构体变量
            struct_name = var_type
            if not struct_name.endswith('*'):
                members = struct_size.get(struct_name, {}).get('members', [])
                if members:
                    collect_struct_members(var_name, members, struct_name, base_addr_int)
                else:
                    # 结构体定义不存在，作为整体处理
                    formatted_name = f"{var_type}* {var_name}"
                    var_entry = {
                        'name': formatted_name,
                        'display_name': var_name,
                        'type': var_type,
                        'size': var_size,
                        'address': f"0x{base_addr_int:x}",
                        'is_array': False,
                        'is_struct_member': False,
                        'parent_struct': None
                    }
                    all_variables.append(var_entry)
            else:
                # 结构体指针
                formatted_name = f"{var_type}* {var_name}"
                var_entry = {
                    'name': formatted_name,
                    'display_name': var_name,
                    'type': var_type,
                    'size': var_size,
                    'address': f"0x{base_addr_int:x}",
                    'is_array': False,
                    'is_struct_member': False,
                    'parent_struct': None
                }
                all_variables.append(var_entry)
        else:
            # 普通全局变量（包括数组）
            formatted_name = f"{var_type}* {var_name}"
            var_entry = {
                'name': formatted_name,
                'display_name': var_name,
                'type': var_type,
                'size': var_size,
                'address': f"0x{base_addr_int:x}",
                'is_array': '[' in var_type,
                'is_struct_member': False,
                'parent_struct': None
            }
            all_variables.append(var_entry)
            
            # 更新全局结构体信息
            global_struct[var_name] = {
                'type': f"{var_type}*",
                'size': var_size,
                'address': f"0x{base_addr_int:x}"
            }
    
    # 按地址排序
    all_variables.sort(key=lambda x: int(x['address'], 16))
    
    all_struct_variables = {}
    # 基于实际地址分配到memory lines
    source_struct_layout = {}
    
    for var in all_variables:
        if not var['is_array']:
            all_struct_variables[var['name']] = var
        var_address_str = var['address']
        var_address_int = int(var_address_str, 16)  # 将字符串地址转换为整数
        var_size = var['size']
        # 计算变量所属的memory line
        memory_line_index = var_address_int // mem_line_size
        memory_line_key = f"memoryLine_{memory_line_index}"
        
        if memory_line_key not in source_struct_layout:
            line_start = memory_line_index * mem_line_size
            line_end = line_start + mem_line_size - 1
            source_struct_layout[memory_line_key] = {
                'address_range': f"0x{line_start:x}-0x{line_end:x}",  # 修正：统一格式化为16位十六进制
                'variables': {}
            }
        
        # 添加变量信息
        var_info = {
            'size': var['size'],
            'address': var['address'],  # 已经是16位十六进制格式
            'type': var['type'],
            'is_array': var['is_array'],
            'is_struct_member': var['is_struct_member']
        }
        
        if var['parent_struct']:
            var_info['parent_struct'] = var['parent_struct']
        
        source_struct_layout[memory_line_key]['variables'][var['name']] = var_info
    
    return source_struct_layout, all_struct_variables

def generate_source_layout_dot(memory_lines, edge_weights):

    """为每个memoryLine生成数据流图"""
    graphs = {}

    for line_name, line_contents in memory_lines.items():
        # 提取变量节点
        nodes = list(line_contents.keys())

        # 初始化子图的权重
        subgraph_weights = defaultdict(int)

        # 生成所有可能的两两组合
        for src, dest in itertools.combinations(nodes, 2):
            edge = frozenset([src, dest])
            if edge in edge_weights:
                subgraph_weights[edge] = edge_weights[edge]

        # 生成 DOT 图
        graphs[line_name] = generate_dot(subgraph_weights, line_contents, all_nodes = nodes)

    return graphs

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
    logging.basicConfig(level=logging.INFO, format='%(levelname)s - %(message)s')
    
    try:

        global variables_exec

        file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/'
        with open(f'{file_path}GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()
        
        # 读取CFG文件
        with open(f'{file_path}BasicBlock.txt', 'r') as f:
            cfg_content = f.read()
        
        # 读取执行序列
        with open(f'{file_path}BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()
        
        # symbol_table
        with open(f'{file_path}symbol_table.txt', 'r') as f:
            symbol_file = f.read()

        # 处理数据
        symbols = parse_symbol_table(f'{file_path}symbol_table.txt')
        struct_size = process_sizes(sizes_file, symbols)

        source_layout = parse_source_layout()

        address_layout, all_struct_variables = parse_source_layout_by_address(mem_line_size=64)
    
        # 打印结果
        print_memory_layout_with_address(address_layout)
        export_to_file(struct_size, f'{file_path}global_struct_size.json')
        export_to_file(all_struct_variables, f'{file_path}global_all_struct_variables.json')
        
        export_to_file(address_layout, f'{file_path}global_address_layout.json')
        export_to_file(source_layout, f'{file_path}global_source_layout.json')

        bb_vars, var_size = parse_bb_variables(cfg_content)
        export_to_file(bb_vars, f'{file_path}global_struct_bb_vars.json')
        export_to_file(var_size, f'{file_path}global_struct_var_size.json')
        exec_sequence = parse_execution_sequence(exec_content)
        edge_weights = build_variable_graph(bb_vars, exec_sequence, 10)

        export_to_file(variables_exec, f'{file_path}global_variables_exec.json')
        # 生成输出
        dot_output = generate_dot(edge_weights, var_size)
        with open(f'{file_path}global_struct_variable_access_graph.dot', 'w') as f:
            f.write(dot_output)

        source_layouts = generate_source_layout_dot(source_layout, edge_weights)


        for memory_line, dot in source_layouts.items():
            dot_path = f'{file_path}source_layout/{memory_line}_global_struct_variable_access_graph.dot'
            mkdir_outpath(dot_path)
            with open(dot_path, 'w') as f:
                f.write(dot)
        
        logging.info("变量访问图已生成到 global_struct_variable_access_graph.dot")
        logging.info(f"统计信息：")
        logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
        logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
        logging.info(f"• 生成 {len(edge_weights)} 条依赖边")
        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
