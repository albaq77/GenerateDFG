import re
import logging
import json
import os
from collections import defaultdict, OrderedDict, deque

def process_sizes(sizes_file):
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

                member_type = type_part.strip()
                member_size = int(size_part.split(" ")[0])

                # 添加成员到当前结构体的成员列表中
                if current_struct in struct_size:
                    struct_size[current_struct]["members"].append({
                        "type": member_type,
                        "size": member_size
                    })

    return struct_size

def split_tool(value, flag, number=-1):
    res = value.split(flag)
    return res[number]
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
        file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/structArray/'
        with open(f'{file_path}GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()
        struct_size = process_sizes(sizes_file)
        export_to_file(struct_size, f'{file_path}struct_size.json')

        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
