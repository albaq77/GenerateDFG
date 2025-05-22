# -*- coding: utf-8 -*-
import os
import shutil
import subprocess
import logging
import re
# 配置路径
INPUT_DIR = './input'
OUTPUT_DIR = './output'
BRANCHER_PATH = "./brancher"
EXE_NAME = 'milc'
EXAMPLE_APP = "./milc < su3imp.in"
BB_VARS = os.path.join(OUTPUT_DIR, "bb_vars.json")
VAR_SIZE = os.path.join(OUTPUT_DIR, "var_size.json")
PERF_DATA_FILE = "perf.data"
PERF_NAME_FILE = os.path.join(OUTPUT_DIR, "perf.name")
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
        shutil.copy("path/output/BasicBlock.txt", BASIC_BLOCK_CFG_FILE)
        shutil.copy("path/output/GlobalAndStructSizes.txt", GLOBAL_STRUCT_SIZES_FILE)
        logging.info("文件已成功复制到输入目录")
    except Exception as e:
        logging.error(f"文件复制失败: {str(e)}")

def get_perf_name():
    """复制必要的文件到输入目录"""
    try:
        os.makedirs(OUTPUT_DIR, exist_ok=True)
        subprocess.run(f"sudo nm {EXE_NAME} > {PERF_NAME_FILE} ", shell=True, check=True)
    except Exception as e:
        logging.error(f"失败: {str(e)}")

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

# def filter_basic_blocks():
#     """过滤基本块执行序列"""
#     try:
#         with open(BB_FUNCTION_FILE, 'r', encoding='utf-8') as f:
#             function_names = f.read().strip()
#         subprocess.run(f"sudo {BRANCHER_PATH} filter -f {PERF_TXT_FILE} {function_names} > {BASIC_BLOCK_NUM_OUTPUT}", shell=True, check=True)
#     except subprocess.CalledProcessError as e:
#         logging.error(f"Brancher filter failed: {str(e)}")

def filter_basic_blocks():
    """过滤基本块执行序列"""
    try:
        subprocess.run(f"sudo {BRANCHER_PATH} filter -f {PERF_TXT_FILE} -l {PERF_NAME_FILE} > {BASIC_BLOCK_NUM_OUTPUT}", shell=True, check=True)
    except subprocess.CalledProcessError as e:
        logging.error(f"Brancher filter failed: {str(e)}")

def main():

    # copy_files_to_input()

    # get_perf_name()
    
    # 1. 使用 brancher 进行 perf 采集
    logging.info("步骤 1: 使用 brancher 进行 perf 采集")
    # perform_perf_record()

    # # 2. 提取函数名
    # logging.info("步骤 2: 提取函数名")
    # with open(BASIC_BLOCK_CFG_FILE, 'r', encoding='utf-8') as f:
    #     cfg_content = f.read()
    # function_names = parse_funs(cfg_content)
    # export_function_names_to_file(function_names)

    # 2. 更改 perf.txt 权限
    logging.info("步骤 3: 更改 perf.txt 权限")
    change_file_permissions(PERF_TXT_FILE)

    # 3. 过滤基本块执行序列
    logging.info("步骤 4: 过滤基本块执行序列")
    filter_basic_blocks()

if __name__ == "__main__":
    main()
