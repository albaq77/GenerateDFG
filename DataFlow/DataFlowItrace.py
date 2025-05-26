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
EXAMPLE_APP = "./milc < su3imp.in"
BB_VARS = os.path.join(OUTPUT_DIR, "bb_vars.json")
VAR_SIZE = os.path.join(OUTPUT_DIR, "var_size.json")
PERF_DATA_FILE = "perf.data"
PERF_DATA_FILE_ITRACE = 'perf.data.itrace'
PERF_TXT_FILE = os.path.join(OUTPUT_DIR, "perf.txt")
BB_FUNCTION_FILE = os.path.join(OUTPUT_DIR, "bb_function.txt")
BASIC_BLOCK_CFG_FILE = os.path.join(INPUT_DIR, "BasicBlock.txt")
GLOBAL_STRUCT_SIZES_FILE = os.path.join(INPUT_DIR, "GlobalAndStructSizes.txt")
BASIC_BLOCK_NUM_OUTPUT = os.path.join(INPUT_DIR, "BasicBlockNum.txt")
VARIABLE_ACCESS_GRAPH = os.path.join(OUTPUT_DIR, "variable_access_graph.dot")
RUN_TIME = 10
ITRACE = 10000

# 初始化日志
logging.basicConfig(level=logging.INFO, format='%(levelname)s - %(message)s')

def copy_files_to_input():
    """复制必要的文件到输入目录"""
    try:
        os.makedirs(INPUT_DIR, exist_ok=True)
        shutil.copy("/home/neu/soft/cstitch/test/433.milc/output/BasicBlock.txt", BASIC_BLOCK_CFG_FILE)
        shutil.copy("/home/neu/soft/cstitch/test/433.milc/output/GlobalAndStructSizes.txt", GLOBAL_STRUCT_SIZES_FILE)
        logging.info("文件已成功复制到输入目录")
    except Exception as e:
        logging.error(f"文件复制失败: {str(e)}")

def perform_perf_record():
    """使用 brancher 进行 perf 采集"""
    try:
        os.makedirs(OUTPUT_DIR, exist_ok=True)

        # 使用 brancher 记录 perf 数据
        logging.info("开始 perf 数据采集...")
        subprocess.run(f"sudo perf record -e intel_pt//u -o {PERF_DATA_FILE} -- {EXAMPLE_APP} ", shell=True, check=True)
        logging.info("转换 perf.data 数据...")
        subprocess.run(f"sudo perf inject -i {PERF_DATA_FILE} -o {PERF_DATA_FILE_ITRACE} --itrace=i{ITRACE} ", shell=True, check=True)
        logging.info("转换 perf.data.itrace 数据...")
        subprocess.run(f"sudo perf script -i {PERF_DATA_FILE_ITRACE} > perf.txt", shell=True, check=True)
        # 将 perf.data 转换为 perf.txt
        shutil.move("perf.txt", PERF_TXT_FILE)
        logging.info("perf 数据采集和转换完成。")

    except subprocess.CalledProcessError as e:
        logging.error(f"Brancher record failed: {str(e)}")
        subprocess.run(f"sudo perf inject -i {PERF_DATA_FILE} -o {PERF_DATA_FILE_ITRACE} --itrace=i{ITRACE}", shell=True, check=True)
        subprocess.run(f"sudo perf script -i {PERF_DATA_FILE_ITRACE} > perf.txt", shell=True, check=True)
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
        with open(BB_FUNCTION_FILE, 'r') as file:
            # 函数名用空格隔开，使用 split 进行分割
            func_names = set(file.read().strip().split())
    
        # 用于存储基本块的统计信息
        blocks = []
    
        with open(PERF_TXT_FILE, 'r') as file:
            for line in file:
                # 使用正则表达式提取 instructions:u 后面的部分
                match = re.search(r'instructions:[^:]*:\s+[\da-f]+ (\S+)', line)
                if match:
                    block_info = match.group(1)
                    # 提取 functionname*blockNum
                    function_block_match = re.search(r'(\w+\*\d+)', block_info)
                    if function_block_match:
                        function_block = function_block_match.group(1)
                        # 分离函数名和块编号
                        function_name = function_block.split('*')[0]
                        # 只记录在函数名列表中的函数
                        if function_name in func_names:
                            blocks.append(function_block)
    
        # 将统计结果写入输出文件
        with open(BASIC_BLOCK_NUM_OUTPUT, 'w') as file:
            for block in blocks:
                file.write(f"{block}\n")
    except subprocess.CalledProcessError as e:
        logging.error(f"Brancher filter failed: {str(e)}")

def main():

    # copy_files_to_input()
    
    # # 1. 使用 brancher 进行 perf 采集
    # logging.info("步骤 1: 使用 brancher 进行 perf 采集")
    # perform_perf_record()

    # # 2. 提取函数名S
    # logging.info("步骤 2: 提取函数名")
    # with open(BASIC_BLOCK_CFG_FILE, 'r', encoding='utf-8') as f:
    #     cfg_content = f.read()
    # function_names = parse_funs(cfg_content)
    # export_function_names_to_file(function_names)

    # # 3. 更改 perf.txt 权限
    # logging.info("步骤 3: 更改 perf.txt 权限")
    # change_file_permissions(PERF_TXT_FILE)

    # 4. 过滤基本块执行序列
    logging.info("步骤 4: 过滤基本块执行序列")
    filter_basic_blocks()

    logging.info("流程执行完毕。请检查生成的数据流图和性能信息。")

if __name__ == "__main__":
    main()
