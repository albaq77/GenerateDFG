import re
import logging
import json
from collections import defaultdict, deque, OrderedDict


def split_tool(value, flag, number=-1):
    res = value.split(flag)
    return res[number]

def generate_array_dot(array_info): 
    result = defaultdict(lambda : {'dim': [], 'loop': int})
    index_pattern = r'\[(%\d+|\d+)\]'
    for array_var, array_var_access in array_info.items():
        length = array_var.count['[']
        num = 0
        dim = [0] * length
        for access_mode, source_loop in array_var_access.items():
            indices = re.findall(index_pattern, split_tool(access_mode, '@'))
            max_index = -1
            max_position = -1
            for index, indice in enumerate(indices):
                if '%' in indice:
                    current_index = int(split_tool(indice, '%'))
                    if current_index > max_index:
                        max_position = index
                        max_index = current_index
            if max_position != -1:
                for source, loop in source_loop.items():
                    num += loop
                    dim[max_index] += loop
        result[array_var]['dim'] = dim
        result[array_var]['loop'] = num
    number = 0
    node_nums = {}

    dot = ["strict digraph {"]
    for node in sorted(result, lambda var : var['loop']):
        number += 1
        node_nums[node] = number
        node_str = f'  {node_nums[node]} [label="{node}", '
        for index, size in enumerate(node['dim']):
            node_str += f'{chr(65 + index)}={size}, '
        node_str += "color=blue, shape=record];"
        dot.append(node_str)

    lastNode = None
    # 添加节点定义
    for node in sorted(result, lambda var : var['loop']):
        if lastNode:
            dot.append(
                f'  {node_nums[lastNode]} -> {node_nums[node]} [label="weight=1", weight="1"];')
        lastNode = node
    dot.append("}")
    return '\n'.join(dot)


def main():
    global array_info
    logging.basicConfig(level=logging.INFO,
                        format='%(levelname)s - %(message)s')

    try:

        file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/525x264/'
        with open(f'{file_path}global_array_info.json', 'r') as f:
            array_info = f.read()
        
        # 处理数据
        array_dot = generate_array_dot(array_info)
        with open(f'{file_path}_array_global_array_variable_access_graph.dot', 'w') as f:
            f.write(array_dot)

    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
