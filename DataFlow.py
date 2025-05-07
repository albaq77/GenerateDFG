# -*- coding: utf-8 -*-
import os
import shutil
import subprocess
import logging
import re
import json
from collections import defaultdict, OrderedDict
import math

# 配置路径
INPUT_DIR = './input'
OUTPUT_DIR = './output'
BRANCHER_PATH = "./brancher"
EXAMPLE_APP = "./structArray"
BB_VARS = os.path.join(OUTPUT_DIR, "bb_vars.json")
VAR_SIZE = os.path.join(OUTPUT_DIR, "var_size.json")
PERF_DATA_FILE = "perf.data"
PERF_TXT_FILE = os.path.join(OUTPUT_DIR, "perf.txt")
BB_FUNCTION_FILE = os.path.join(OUTPUT_DIR, "bb_function.txt")
BASIC_BLOCK_CFG_FILE = os.path.join(INPUT_DIR, "BasicBlock.txt")
GLOBAL_STRUCT_SIZES_FILE = os.path.join(INPUT_DIR, "GlobalAndStructSizes.txt")
BASIC_BLOCK_NUM_OUTPUT = os.path.join(INPUT_DIR, "BasicBlockNum.txt")
VARIABLE_ACCESS_GRAPH = os.path.join(OUTPUT_DIR, "variable_access_graph.dot")
RUN_TIME = 10

# 初始化日志
logging.basicConfig(level=logging.INFO, format='%(levelname)s - %(message)s')

def copy_files_to_input():
    """复制必要的文件到输入目录"""
    try:
        os.makedirs(INPUT_DIR, exist_ok=True)
        shutil.copy("/home/neu/soft/cstitch/output/BasicBlock.txt", BASIC_BLOCK_CFG_FILE)
        shutil.copy("/home/neu/soft/cstitch/output/GlobalAndStructSizes.txt", GLOBAL_STRUCT_SIZES_FILE)
        logging.info("文件已成功复制到输入目录")
    except Exception as e:
        logging.error(f"文件复制失败: {str(e)}")

def perform_perf_record():
    """使用 brancher 进行 perf 采集"""
    try:
        os.makedirs(OUTPUT_DIR, exist_ok=True)

        # 使用 brancher 记录 perf 数据
        logging.info("开始 perf 数据采集...")
        subprocess.run(f"sudo {BRANCHER_PATH} record '{EXAMPLE_APP}' ", shell=True, check=True)
        # 将 perf.data 转换为 perf.txt
        logging.info("转换 perf 数据...")
        shutil.move("perf.txt", PERF_TXT_FILE)
        logging.info("perf 数据采集和转换完成。")

    except subprocess.CalledProcessError as e:
        logging.error(f"Brancher record failed: {str(e)}")
        shutil.move("perf.txt", PERF_TXT_FILE)

def parse_funs(cfg_str):
    functions = set()
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    bb_blocks = re.findall(bb_pattern, cfg_str)
    for func_name, bb_num, code_text in bb_blocks:
        functions.add(func_name)
    return list(functions)

def export_function_names_to_file(function_names):
    """将函数名列表写入指定文件"""
    try:
        with open(BB_FUNCTION_FILE, 'w', encoding='utf-8') as f:
            for function_name in function_names:
                f.write(f"{function_name} ")
    except IOError as e:
        logging.error(f"文件写入失败：{str(e)}")

def change_file_permissions(file_path):
    """更改文件权限"""
    try:
        if os.path.exists(file_path):
            subprocess.run(f"sudo chmod 777 {file_path}", shell=True, check=True)
        else:
            logging.warning(f"文件 {file_path} 不存在，跳过权限更改。")
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to change permissions for {file_path}: {str(e)}")

def filter_basic_blocks():
    """过滤基本块执行序列"""
    try:
        with open(BB_FUNCTION_FILE, 'r', encoding='utf-8') as f:
            function_names = f.read().strip()
        subprocess.run(f"sudo {BRANCHER_PATH} filter -f {PERF_TXT_FILE} {function_names} > {BASIC_BLOCK_NUM_OUTPUT}", shell=True, check=True)
    except subprocess.CalledProcessError as e:
        logging.error(f"Brancher filter failed: {str(e)}")

def process_sizes(sizes_file):
    sizes = {}
    for line in sizes_file.strip().splitlines():
        line = line.strip()
        if line:
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
    struct_names = set()
    
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)
    
    for func_name, bb_num, code_text in bb_blocks:
        
        # 提取变量访问
        variables = []
        for line in code_text.split('\n'):
            line = line.strip()
            if not line:
                continue
            
            # 匹配load/store指令
            var_match = var_pattern.search(line)
            if var_match:
                size = -1
                var = var_match.group(1).strip()
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
                    # 正则表达式模式
                    pattern = r'@([\w\d_.]+)'
                    # 使用 re.search 找到第一个匹配
                    match = re.findall(pattern, var)
                    if match:
                        # 提取匹配的名称
                        stutsize = struct_size.get('@' + match[0])
                        if stutsize is not None:
                            size = stutsize * 8
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

def parse_execution_sequence(seq_str):
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str)
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
                    edge_weights[(last_var, curr_var)] += 1
                    weight_window[last_var] -= 1
                
                # 检查并移除第一个元素的权重是否为0
                if weight_window:
                    first_var, first_weight = next(iter(weight_window.items()))
                    if first_weight <= 0:
                        weight_window.popitem(last=False)
                weight_window[curr_var] = window_size

    return edge_weights   

def generate_dot(edge_weights, var_size):
    dot = ["strict digraph {"]
    number = 0
    node_nums = {}
    nodes = set()
    for (src, dest) in edge_weights:
        nodes.add(src)
        nodes.add(dest)
    for node in sorted(nodes):
        number += 1
        node_nums[node] = number
        dot.append(f'  {node_nums[node]} [label="{node}", size={var_size[node]}, color=blue, shape=record];')
    for (src, dest), weight in sorted(edge_weights.items(), key=lambda x: -x[1]):
        dot.append(f'  {node_nums[src]} -> {node_nums[dest]} [label="weight={weight}", weight="{weight}"];')
    dot.append("}")
    return '\n'.join(dot)

def export_to_file(bb_vars, file_name):
    try:
        with open(file_name, 'w', encoding='utf-8') as f:
            json.dump(bb_vars, f, indent=2, ensure_ascii=False)
    except IOError as e:
        logging.error(f"文件写入失败：{str(e)}")

def generate_data_flow_graph():
    try:
        with open(GLOBAL_STRUCT_SIZES_FILE, 'r') as f:
            sizes_file = f.read()
        with open(BASIC_BLOCK_CFG_FILE, 'r') as f:
            cfg_content = f.read()
        with open(BASIC_BLOCK_NUM_OUTPUT, 'r') as f:
            exec_content = f.read()

        struct_size = process_sizes(sizes_file)
        bb_vars, var_size = parse_bb_variables(cfg_content, struct_size)

        export_to_file(bb_vars, BB_VARS)
        export_to_file(var_size, VAR_SIZE)
        exec_sequence = parse_execution_sequence(exec_content)
        edge_weights = build_variable_graph(bb_vars, exec_sequence)

        dot_output = generate_dot(edge_weights, var_size)
        with open(VARIABLE_ACCESS_GRAPH, 'w') as f:
            f.write(dot_output)

        logging.info("变量访问图已生成到 variable_access_graph.dot")
        logging.info(f"统计信息：")
        logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
        logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
        logging.info(f"• 生成 {len(edge_weights)} 条依赖边")

    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

def main():

    
    copy_files_to_input()
    
    # 1. 使用 brancher 进行 perf 采集
    logging.info("步骤 1: 使用 brancher 进行 perf 采集")
    perform_perf_record()

    # 2. 提取函数名
    logging.info("步骤 2: 提取函数名")
    with open(BASIC_BLOCK_CFG_FILE, 'r', encoding='utf-8') as f:
        cfg_content = f.read()
    function_names = parse_funs(cfg_content)
    export_function_names_to_file(function_names)

    # 3. 更改 perf.txt 权限
    logging.info("步骤 3: 更改 perf.txt 权限")
    change_file_permissions(PERF_TXT_FILE)

    # 4. 过滤基本块执行序列
    logging.info("步骤 4: 过滤基本块执行序列")
    filter_basic_blocks()

    # 5. 生成数据流图
    logging.info("步骤 5: 生成数据流图")
    generate_data_flow_graph()

    logging.info("流程执行完毕。请检查生成的数据流图和性能信息。")

if __name__ == "__main__":
    main()
