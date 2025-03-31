import os
import re

def find_struct_definitions_from_file(input_file, directory, output_file):
    # 打开输入文件，逐行读取结构体名称
    with open(input_file, 'r', encoding='utf-8') as f:
        struct_names = [line.strip() for line in f if line.strip()]

    with open(output_file, 'w', encoding='utf-8') as out:
        # 遍历每个结构体名称
        for struct_name in struct_names:
            pattern = rf'struct\s+{struct_name}\s*\{{'
            found = False

            # 遍历目录及其子目录中的所有文件
            for root, _, files in os.walk(directory):
                for file in files:
                    if file.endswith(('.c', '.h')):  # 只检查C源文件和头文件
                        filepath = os.path.join(root, file)
                        try:
                            with open(filepath, 'r', encoding='utf-8') as f:
                                lines = f.readlines()
                                for line_number, line in enumerate(lines):
                                    if re.search(pattern, line):
                                        found = True
                                        out.write(f"Found '{struct_name}' in {filepath} at line {line_number + 1}:\n")
                                        # 输出结构体定义
                                        out.write(line)
                                        brace_count = line.count('{') - line.count('}')
                                        for following_line in lines[line_number+1:]:
                                            out.write(following_line)
                                            brace_count += following_line.count('{') - following_line.count('}')
                                            if brace_count <= 0:
                                                break
                                        out.write('\n')
                                        break  # 结束搜索当前文件，继续下一个结构体
                        except (IOError, UnicodeDecodeError) as e:
                            print(f"Could not read file {filepath}: {e}")

            if not found:
                out.write(f"No definition found for '{struct_name}'\n")

# 使用示例
input_txt_file = './struct_names.txt'  # 替换为你的输入文件路径
directory_to_search = '/home/neu/soft/cstitch/test/lwip-master'    # 替换为你的文件夹路径
output_txt_file = '/structs.txt'  # 替换为你的输出文件路径

if __name__ == "__main__":
    find_struct_definitions_from_file(input_txt_file, directory_to_search, output_txt_file)
