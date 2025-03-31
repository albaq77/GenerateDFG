import json

def process_sizes(input_filename):
    sizes = {}

    # 读取输入文件并解析每一行
    with open(input_filename, 'r') as file:
        for line in file:
            line = line.strip()  # 去除首尾空格
            if line:  # 如果行不为空
                # 解析一行文本，提取名称和大小
                parts = line.split(", Size: ")
                if len(parts) != 2:
                    return None
                name_part, size_part = parts
                name = '@' + name_part.split(": ", 1)[1].strip()
                size = int(size_part.split(" ")[0])
                sizes[name] = size

    return sizes
       
# 调用函数进行处理
process_sizes("/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/GlobalAndStructSizes.txt")
