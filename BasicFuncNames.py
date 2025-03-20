import re
import logging
from collections import defaultdict

def parse_bb_variables(cfg_str):

    functions = set()
    
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)
    
    for func_name, bb_num, code_text in bb_blocks:
        # 记录出现过的函数名
        functions.add(func_name)
    
    return list(functions)


def export_function_names_to_file(function_names, output_path):
    """将函数名列表写入指定文件"""
    try:
        with open(output_path, 'w', encoding='utf-8') as f:
            for function_name in function_names:
                f.write(f"{function_name}"  " ")
    except IOError as e:
        logging.error(f"文件写入失败：{str(e)}")
    except Exception as e:
        logging.error(f"发生意外错误：{str(e)}")



def main():
    logging.basicConfig(level=logging.INFO, format='%(levelname)s - %(message)s')
    
    try:

        # 读取CFG文件
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/BasicBlock.txt', 'r') as f:
            cfg_content = f.read()

        # 处理数据
        function_names = parse_bb_variables(cfg_content)
        export_function_names_to_file(function_names, "/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/output/bb_function.txt")
        
        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
