import argparse
import logging
from collections import defaultdict
import os

# intput: var [变量名,变量的类型,变量的大小]
# output: DFG
def parse_variables(var_seq):
    vars = []
    lines = var_seq.strip().splitlines()
    
    for line in lines:
        line = line.strip().strip('[]')  # 去除方括号
        parts = line.split(',')  # 按逗号分隔
        if len(parts) == 3:
            variable = {
                'name': parts[0].strip(),
                'type': parts[1].strip(),
                'size': parts[2].strip()
            }
            vars.append(variable)
    
    return vars

def gen_var_graph(vars):

    edge_weights = defaultdict(int)
    
    for i in range(1, len(vars)):
        src = vars[i - 1]['name']
        dest = vars[i]['name']
        if (src != dest):
            edge_weights[(src, dest)] += 1

    return edge_weights

def generate_dot(vars, edge_weights):

    dot = ["strict digraph {"]
    added_nodes = set()
    nodes_num = {}
    number = 0

   # 添加节点定义
    for var in vars:
        node = var['name']
        if node not in added_nodes:
            nodes_num[node] = number
            number += 1
            dot.append(f'  {nodes_num[node]} [label="{node}", size="{var["size"]}", type="{var["type"]}", color=blue, shape=record];')
            added_nodes.add(node)


     # 添加边定义（按权重降序排列）
    for (src, dest), weight in sorted(edge_weights.items(), key=lambda x: -x[1]):
        dot.append(f'  {nodes_num[src]} -> {nodes_num[dest]} [label="weight={weight}", weight="{weight}"];')

    dot.append("}")
    return '\n'.join(dot)


def main():

    logging.basicConfig(level=logging.INFO, format='%(levelname)s - %(message)s')
    
    try:

        parser = argparse.ArgumentParser(description="Generate DFG from variable access sequence")
        parser.add_argument('input_path', type=str, help='Path to the input file containing variable access sequence')
        args = parser.parse_args()

        # 获取输入文件路径
        input_file_path = args.input_path
        # input_file_path = "/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/PrintToDfg/test_case.txt"
        input_dir = os.path.dirname(input_file_path) 

        with open(input_file_path, 'r') as file:
            var_seq = file.read()
    
        # 解析变量序列
        variables = parse_variables(var_seq)
    
        # 构建变量访问图
        edge_weights = gen_var_graph(variables)
    
        # 生成 DOT 文件
        dot_output = generate_dot(variables, edge_weights)

        # 输出 DOT 文件
        dot_file_path = os.path.join(input_dir, "variable_access_graph.dot")
        with open(dot_file_path, 'w') as dot_file:
            dot_file.write(dot_output)
            
        logging.info("变量访问图已生成到 variable_access_graph.dot")
        logging.info(f"统计信息：")
        logging.info(f"• 处理 {len(var_seq)} 个执行步骤")
        logging.info(f"• 生成 {len(edge_weights)} 条依赖边")
        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}") 

if __name__ == "__main__":
    main()