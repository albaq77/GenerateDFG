import re
import logging
import json
from collections import defaultdict

def parse_bb_variables(cfg_str):
    """从CFG DOT文件解析每个基本块的全局变量访问序列"""
    bb_vars = {}
    
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    global_var_pattern = re.compile(r'@[\w.\d_]+(?=,)')

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)
    
    for func_name, bb_num, code_text in bb_blocks:
        
        # 提取全局变量
        global_vars = []
        for line in code_text.split('\n'):
            line = line.strip()
            if not line:
                continue
            
            # 匹配全局变量
            matches = global_var_pattern.findall(line)
            if matches:
                global_vars.extend(matches)
        
        # 构建字典键
        bb_key = f"{func_name}*{bb_num}"
        bb_vars[bb_key] = global_vars
        logging.debug(f"Parsed {bb_key} global variables: {global_vars}")
    
    return bb_vars


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
            name = '@' + name_part.split(": ", 1)[1].strip()
            size = int(size_part.split(" ")[0])
            sizes[name] = size
    return sizes

def parse_execution_sequence(seq_str):
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str) 
    # 使用正则表达式提取每行的完整函数和编号
    return re.findall(r'(\w+\*\d+)', clean_str)

def build_variable_graph(bb_vars, exec_sequence):
    """构建变量访问图并计算权重"""
    edge_weights = defaultdict(int)
    last_vars = None
    
    for bb in exec_sequence:
        current_vars = bb_vars.get(bb, [])
        if not current_vars:
            continue
        
        # 处理跨BB的变量依赖
        if last_vars and current_vars:
            if last_vars != current_vars[0]:
                    edge_weights[(last_vars, current_vars[0])] += 1
        
        # 处理BB内部的顺序依赖
        for i in range(1, len(current_vars)):
            if current_vars[i-1] != current_vars[i]:
                edge_weights[(current_vars[i-1], current_vars[i])] += 1
        
        last_vars = current_vars[-1]  # 只保留最后一个变量建立跨BB连接
    
    return edge_weights

def generate_dot(edge_weights, var_size):
    """生成优化的DOT文件"""
    dot = ["strict digraph {"]
    number = 0
    node_nums = {}
    
    # 创建节点集合
    nodes = set()
    for (src, dest) in edge_weights:
        nodes.add(src)
        nodes.add(dest)
    
    # 添加节点定义
    for node in sorted(nodes):
        number += 1
        node_nums[node] = number
        size = var_size.get(node)
        if size is None:
            size = 8
        dot.append(f'  {node_nums[node]} [label="{node}", size={size}, color=blue, shape=record];')
    
    # 添加边定义（按权重降序排列）
    for (src, dest), weight in sorted(edge_weights.items(), key=lambda x: -x[1]):
        dot.append(f'  {node_nums[src]} -> {node_nums[dest]} [label="weight={weight}", weight="{weight}"];')
    
    dot.append("}")
    return '\n'.join(dot)

def export_bbvars_to_file(bb_vars, output_path):
    """将基本块变量信息写入指定文件"""
    try:
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

        # 读取CFG文件
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/BasicBlock.txt', 'r') as f:
            cfg_content = f.read()

        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/GlobalAndStructSizes.txt', 'r') as f:
            sizes_file = f.read()
        
        # 读取执行序列
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()
        # 处理数据

        bb_vars = parse_bb_variables(cfg_content)
        var_size = process_sizes(sizes_file)
        export_bbvars_to_file(bb_vars, "./bb_vars.json")
        exec_sequence = parse_execution_sequence(exec_content)
        edge_weights = build_variable_graph(bb_vars, exec_sequence)

        # 生成输出
        dot_output = generate_dot(edge_weights, var_size)
        with open('variable_access_graph.dot', 'w') as f:
            f.write(dot_output)
        
        logging.info("变量访问图已生成到 variable_access_graph.dot")
        logging.info(f"统计信息：")
        logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
        logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
        logging.info(f"• 生成 {len(edge_weights)} 条依赖边")
        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
