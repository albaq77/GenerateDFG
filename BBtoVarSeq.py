import re
import logging
from collections import defaultdict

def parse_bb_variables(cfg_str):
    """从CFG DOT文件解析每个基本块的变量访问序列"""
    bb_vars = defaultdict(list)
    
    # 正则表达式匹配基本块和其对应的指令
    bb_pattern = re.compile(r'BB(\d+)\s*.*?label="\{(.*?)\}"', re.DOTALL)
    # var_pattern = re.compile(r'\b(?:load|store)\b\s+[^,]+,\s*([^,]+)')
    var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')

    # 提取所有基本块的代码
    bb_blocks = re.findall(bb_pattern, cfg_str)
    
    for bb_num, code_text in bb_blocks:
        # 清理代码文本
        code_text = code_text.replace('\\l', '\n').replace('\\', '')
        
        # 提取变量访问
        variables = []
        for line in code_text.split('\n'):
            line = line.strip()
            if not line:
                continue
            
            # 匹配load/store指令
            var_match = var_pattern.search(line)
            if var_match:
                var = var_match.group(1).strip()
                # 使用正则表达式截取第一个逗号到 align 前的内容
                var = re.search(r',\s*(.*?),\s*align', var)
                if var:
                    var = var.group(1).strip()
                
                if var.split(" ")[1].startswith('%'):
                    continue
                else:
                    variables.append(var)
        
        bb_vars[bb_num] = variables
        logging.debug(f"Parsed BB{bb_num} variables: {variables}")
    
    return bb_vars


def parse_execution_sequence(seq_str):
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str)  # 移除ANSI颜色代码
    # 使用正则表达式提取每行星号后面的编号
    return re.findall(r'\*(\d+)', clean_str)


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
                    edge_weights[(src, dest)] += 1
        
        # 处理BB内部的顺序依赖
        for i in range(1, len(current_vars)):
            edge_weights[(current_vars[i-1], current_vars[i])] += 1
        
        last_vars = current_vars[-1:]  # 只保留最后一个变量建立跨BB连接
    
    return edge_weights

def generate_dot(edge_weights):
    """生成优化的DOT文件"""
    dot = ["strict digraph {"]
    
    # 创建节点集合
    nodes = set()
    for (src, dest) in edge_weights:
        nodes.add(src)
        nodes.add(dest)
    
    # 添加节点定义
    for node in sorted(nodes):
        dot.append(f'  "{node}" [label="MEM,{node}", color=blue, shape=record];')
    
    # 添加边定义（按权重降序排列）
    for (src, dest), weight in sorted(edge_weights.items(), key=lambda x: -x[1]):
        dot.append(f'  "{src}" -> "{dest}" [label="weight={weight}", weight="{weight}"];')
    
    dot.append("}")
    return '\n'.join(dot)

def main():
    logging.basicConfig(level=logging.INFO, format='%(levelname)s - %(message)s')
    
    try:
        # # 读取CFG文件
        # with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/main.dot', 'r') as f:
        #     cfg_content = f.read()
        
        # # 读取执行序列
        # with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/main.txt', 'r') as f:
        #     exec_content = f.read()

        # 读取CFG文件
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/arrayTest/mulitArray/main.dot', 'r') as f:
            cfg_content = f.read()
        
        # 读取执行序列
        with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/arrayTest/mulitArray/main.txt', 'r') as f:
            exec_content = f.read()
        
        # 处理数据
        bb_vars = parse_bb_variables(cfg_content)
        exec_sequence = parse_execution_sequence(exec_content)
        edge_weights = build_variable_graph(bb_vars, exec_sequence)
        
        # 生成输出
        dot_output = generate_dot(edge_weights)
        with open('global_variable_access_graph.dot', 'w') as f:
            f.write(dot_output)
        
        logging.info("变量访问图已生成到 global_variable_access_graph.dot")
        logging.info(f"统计信息：")
        logging.info(f"• 解析到 {len(bb_vars)} 个基本块的变量信息")
        logging.info(f"• 处理 {len(exec_sequence)} 个执行步骤")
        logging.info(f"• 生成 {len(edge_weights)} 条依赖边")
        
    except Exception as e:
        logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
    main()
