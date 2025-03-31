import os
import re

def extract_struct_definitions(file_content, struct_name):
    # 正则表达式模式，用于匹配结构体定义，包括注释和不同格式的花括号
    pattern = re.compile(
        rf'struct\s+{struct_name}\s*{{.*?}};|struct\s+{struct_name}\s*\n?\{{.*?}};',
        re.DOTALL
    )
    # 找到所有匹配的结构体定义
    matches = pattern.findall(file_content)
    return matches

def find_struct_definitions_from_file(input_file, directory, output_file):
    # 打开输入文件，逐行读取结构体名称
    with open(input_file, 'r', encoding='utf-8') as f:
        struct_names = [line.strip() for line in f if line.strip()]

    with open(output_file, 'w', encoding='utf-8') as out:
        # 遍历每个结构体名称
        for struct_name in ['netif_ext_callback']:
            found = False

            # 遍历目录及其子目录中的所有文件
            for root, _, files in os.walk(directory):
                for file in files:
                    if file.endswith(('.c', '.h')):  # 只检查C源文件和头文件
                        filepath = os.path.join(root, file)
                        try:
                            with open(filepath, 'r', encoding='latin-1', errors='ignore') as f:
                                content = f.read()
                                struct_definitions = extract_struct_definitions(content, struct_name)
                                for definition in struct_definitions:
                                    found = True
                                    out.write(f"Found '{struct_name}' in {filepath}:\n{definition}\n\n")
                        except (IOError, UnicodeDecodeError) as e:
                            print(f"Could not read file {filepath}: {e}")

            if not found:
                out.write(f"No definition found for '{struct_name}'\n")

# 使用示例
input_txt_file = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/struct_names.txt'  # 替换为你的输入文件路径
directory_to_search = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/lwip-master'    # 替换为你的文件夹路径
output_txt_file = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/structs.txt'  # 替换为你的输出文件路径

if __name__ == "__main__":
    find_struct_definitions_from_file(input_txt_file, directory_to_search, output_txt_file)
