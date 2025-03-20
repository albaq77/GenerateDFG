import re
import logging
import json
from collections import defaultdict

def parse_bb_variables(cfg_str):
    """从CFG DOT文件解析每个基本块的变量访问序列"""
    bb_vars = {}
    var_size = {}
    
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
    var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)
    
    for func_name, bb_num, code_text in bb_blocks:
        
        # 提取变量访问
        variables = []
        for line in code_text.split('\n'):
            line = line.strip()
            if not line:
                continue
            
            # 匹配load/store指令
            var_match = var_pattern.search(line)
            if var_match:
                size = -1
                isLoad = ' = load ' in line
                var = var_match.group(1).strip()
                # 使用正则表达式截取第一个逗号到 align 前的内容
                # store  <4 x i32> <i32 767, i32 0, i32 0, i32 33554432>, <4 x i32>*
                if ', <' in line:
                    var = re.search(r',\s*<\s*(.*?),\s*align', var)
                    var = '<' + var.group(1).strip()
                    match = re.search(r'<(\d+)\s*x\s*i(\d+)>', var)
                    if match:
                        # 提取数值
                        vector_length = int(match.group(1))  # 4
                        element_size = int(match.group(2))   # 32
                        # 计算 size
                        size = vector_length * element_size
                    var = var.replace('<', '').replace('>', '')
                else:    
                    var = re.search(r',\s*(.*?),\s*align', var)
                    var = var.group(1).strip()
                    match = re.search(r'(\bi\d+\*)', var)
                    if match:
                        type_info = match.group(1)
                        # 提取大小信息
                        size = int(type_info.lstrip('i').rstrip('*'))

                
                if var.split("* ")[1].startswith('%'):
                    continue
                # getelementptr inbounds (*)
                if ('getelementptr inbounds' in var) and isLoad:
                     # 匹配 i64* getelementptr inbounds 后第一个括号内的内容
                     pattern = r'(\bi\d+\*)\s+getelementptr inbounds\s*\((.*?)\)'
                     match = re.search(pattern, var)
                     if match:
                        # 提取 getelementptr inbounds 部分
                        var = match.group(0)
                        # 提取类型信息和内容
                        type_info = match.group(1)
                        # 提取大小信息
                        size = int(type_info.lstrip('i').rstrip('*'))
                variables.append(var)
                var_size[var] = size
        
        # 构建字典键
        bb_key = f"{func_name}*{bb_num}"
        bb_vars[bb_key] = variables
        logging.debug(f"Parsed {bb_key} variables: {variables}")
    
    return bb_vars, var_size

def parse_execution_sequence(seq_str):
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str) 
    # 使用正则表达式提取每行的完整函数和编号
    return re.findall(r'(\w+\*\d+)', clean_str)

def build_variable_graph(bb_vars, exec_sequence):
    """构建变量访问图并计算权重"""
    edge_weights = defaultdict(int)
    last_vars = []
    
    for bb in exec_sequence:
        current_vars = bb_vars.get(bb, [])
        if not current_vars:
            continue
        
        # 处理跨BB的变量依赖
        if last_vars:
            for src in last_vars:
                for dest in current_vars:
                    if src != dest:
                        edge_weights[(src, dest)] += 1
        
        # 处理BB内部的顺序依赖
        for i in range(1, len(current_vars)):
            if current_vars[i-1] != current_vars[i]:
                edge_weights[(current_vars[i-1], current_vars[i])] += 1
        
        last_vars = current_vars[-1:]  # 只保留最后一个变量建立跨BB连接
    
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
        dot.append(f'  {node_nums[node]} [label="{node}", size={var_size[node]}, color=blue, shape=record];')
    
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
        
        # 读取执行序列
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/lwip/BasicBlockNum.txt', 'r') as f:
            exec_content = f.read()
        # 处理数据

        bb_vars, var_size = parse_bb_variables(cfg_content)
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
