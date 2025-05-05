# %1 = alloca i32, align 4
# %2 = alloca i32, align 4
# %3 = alloca i32, align 4
# %3 = alloca %struct.Points, align 8
# %4 = alloca %struct.Points, align 8
# %5 = alloca i64, align 8
# %5 = alloca [2 x i16], align 2
# %5 = alloca [40 x [40 x i32]], align 2
# %5 = alloca [40 x [40 x %struct.Points]], align 2
# %4 = alloca [1 x %struct.__va_list_tag], align 16

import re
import logging
import json
import math
from collections import defaultdict, deque, OrderedDict

var_map = {}
temp_var_reg = set()

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
            if name_part.startswith('Global Variable'):
                name = '@' + name_part.split(": ", 1)[1].strip()
            else:
                name = '%' + name_part.split(": ", 1)[1].strip()
            size = int(size_part.split(" ")[0])
            sizes[name] = size
    return sizes

def calculate_type_size(type_str, struct_size):
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
    
    # 检查简单类型
    if type_str in type_sizes:
        return type_sizes[type_str]

    # 处理数组类型（包括多维数组）
    array_match = re.match(r'\[(\d+)\s+x\s+(.+)\]', type_str)
    if array_match:
        array_size = int(array_match.group(1))
        element_type = array_match.group(2)
        return array_size * calculate_type_size(element_type, struct_size)

    # 处理结构体大小 (假设结构体大小已知并传入)
    struct_match = re.match(r'%struct\.(\w+)', type_str)
    if struct_match:
        struct_name = struct_match.group(1)
        return struct_size.get(struct_name, 0)

    # 默认返回0
    return 0

def parse_bb_variables(cfg_str, struct_size, seq_number):
    global temp_var_reg, var_map
    """从CFG DOT文件解析每个基本块的变量访问序列"""
    bb_vars = {}
    var_size = {}
    
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    loc_pattern = re.compile(r'Basic Block Source Location: (\S+:\d+)')
    var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')
    assign_pattern = re.compile(r'^(%\S+)\s*=\s*(.*)')  # 匹配 %number = ...
    global_var_pattern = re.compile(r'.*,\s*(\[.*?\]\*\s*@\w+),') # 匹配全局数组变量
    alloca_pattern = re.compile(r'(%\d+)\s*=\s*alloca\s+(\S+),\s*align\s*\d+') # temp_var_reg

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
                    type_str = alloca_match.group(2)
                    temp_var_size = calculate_type_size(type_str, struct_size)
                    temp_var_reg.add(temp_var_name)
                    var_size[temp_var_name] = temp_var_size  # 存储临时变量的大小
        # 提取变量访问
        variables = []