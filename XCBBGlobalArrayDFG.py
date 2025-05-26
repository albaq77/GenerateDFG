import re
import logging
import json
from collections import defaultdict, deque, OrderedDict

temp_var_reg = set()
var_map = {}

def parse_bb_variables(cfg_str, seq_number):
	global temp_var_reg, var_map
	"""从CFG DOT文件解析每个基本块的变量访问序列，并处理寄存器回溯"""
	bb_vars = {}
	var_size = {}
	
	# 正则表达式匹配基本块和其对应的指令
	bb_pattern = r"\[.*?\]@(.+?)\*(\d+)\n([\s\S]*?)(?=\n\[.*?\]@.+?\*\d+|\Z)"
	loc_pattern = re.compile(r'Basic Block Source Location: (\S+:\d+)')
	var_pattern = re.compile(r'\b(?:load|store)\b\s+(.*)')
	assign_pattern = re.compile(r'^(%\S+)\s*=\s*(.*)')  # 匹配 %number = ...
	global_var_pattern = re.compile(r'.*,\s*(\[.*?\]\*\s*@\w+),') # 匹配全局数组变量
	alloca_pattern = re.compile(r'(%\d+)\s*=\s*alloca\s+\S+,\s*align\s*\d+') # temp_var_reg

	# 提取所有基本块的代码
	bb_blocks = re.findall(bb_pattern, cfg_str)
	
	current_func = None
	
	for func_name, bb_num, code_text in bb_blocks:
		# 如果进入了新的函数，清空 var_map
		if func_name != current_func:
			var_map = {}
			temp_var_reg = set()
			current_func = func_name
			for line in code_text.split('\n'):
				line = line.strip()
				if not line:
					continue
				# 提取临时变量定义
				alloca_match = alloca_pattern.match(line)
				if alloca_match:
					temp_var_name = alloca_match.group(1)
					temp_var_reg.add(temp_var_name)

		final_vars = []
		# 提取源码地址
		loc_match = loc_pattern.search(code_text)
		source_location = loc_match.group(1) if loc_match else "Unknown Location"

		for line in code_text.split('\n'):
			line = line.strip()
			if not line:
				continue

			# 捕获所有形如 %number = ... 的指令
			assign_match = assign_pattern.match(line)
			if assign_match:
				var_name = assign_match.group(1)
				value = assign_match.group(2)
				var_map[var_name] = value


			# 匹配 load/store 指令
			var_match = var_pattern.search(line)
			if var_match:
				black_name = f'{func_name}*{bb_num}'
				var = var_match.group(1).strip()
				var = re.search(r',\s*(.*?),\s*align', var)
				if var:
					var = var.group(1).strip()
					base_type, reg_name = var.split(" ", 1)
					# 检查 reg_name 本身是否是全局数组变量
					global_var_match = global_var_pattern.findall(reg_name)
					if global_var_match:
						# 如果是全局数组变量，直接添加提取的部分
						array_var_name = global_var_match[-1]
						array_var_name = get_dim_tem_num(reg_name, array_var_name) + "-" + source_location + "-" + str(seq_number[black_name])
						final_vars.append(array_var_name)
					elif reg_name in var_map:
						array_access_ins = None
						# 如果是寄存器，进行回溯替换
						queue = deque([reg_name])
						reg_set = set()
						while queue:
							current_reg = queue.pop()
							current_value = var_map.get(current_reg, "")
							array_access_ins = array_access_ins.replace(current_reg, current_value) if array_access_ins else current_value
							# 检查是否有全局数组变量
							global_var_match = global_var_pattern.findall(current_value)
							if global_var_match:
								array_var_name = global_var_match[-1]
								array_var_name = get_dim_tem_num(array_access_ins, array_var_name) + "-" + source_location + "-" + str(seq_number[black_name])
								# 找到全局数组变量，停止回溯并添加到 final_vars
								final_vars.append(array_var_name)
								break
							# 如果当前寄存器还有进一步的定义，继续回溯
							reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
							for next_reg in reg_matches:
								if next_reg in var_map and current_reg not in reg_set:
									queue.appendleft(next_reg)
							reg_set.add(current_reg)  

		bb_key = f"{func_name}*{bb_num}"
		bb_vars[bb_key] = final_vars
		logging.debug(f"Parsed {bb_key} variables: {final_vars}")
	
	return bb_vars, var_size

def uni_backtrace_register(next_reg):
	global temp_var_reg, var_map
	last_reg = None
	if next_reg in var_map :
		queue = deque([next_reg])
		reg_set = set()
		while queue:
			current_reg = queue.pop()
			last_reg = current_reg
			current_value = var_map.get(current_reg, "")
			# 如果当前寄存器还有进一步的定义，继续回溯
			reg_matches = re.findall(r'%\d+', current_value)  # 使用 findall 查找多个寄存器
			for next_reg in reg_matches:
				if next_reg in var_map and current_reg not in reg_set:
					if next_reg in temp_var_reg :
						return next_reg
					else: 
						queue.appendleft(next_reg)
			reg_set.add(current_reg) 
	return last_reg

def parse_gep(mycmd: str, array_var_name: str):
    """
    从 LLVM IR 风格的 getelementptr 指令字符串中解析出索引表达式。

    Args:
        mycmd: 完整的 getelementptr 指令字符串。
        array_var_name: 目标数组变量名。

    Returns:
        extracted: 截取得到的参数文本。
        indexing: 形如 "globalArry[%2][3][%4]" 的最终索引表达式。
    """
    dim_length = array_var_name.count('[')  # 计算维度数量

    # 1. 定位并截取
    aaa = array_var_name.find('@')
    array_name_struct = array_var_name[0:aaa]
    array_var_name = array_var_name[aaa:]
    bbb = array_var_name.find('%')
    if bbb > 0:
        array_var_name = array_var_name[:bbb-1]

    start = mycmd.find(array_var_name)
    if start == -1:
        raise ValueError(f"在指令中未找到数组名：{array_var_name}")
    extracted = mycmd[start:].rstrip()
    if extracted.endswith(')'):
        extracted = extracted[:-1]

    # 2. 按逗号拆分，并去除所有 dbg 注释
    parts = [p.strip() for p in extracted.split(',')]
    parts = [p for p in parts if not p.startswith('!dbg')]
    parts = parts[1:]  # 去掉第一个部分（通常是类型信息）

    # 3. 挑出所有 i64 开头的、值不为 0 的索引
    raw_indices = []
    length = 0
    is_not_ret = False
    is_even = len(parts) % 2 == 0

    for index, token in enumerate(parts):
        token = token.replace(')', '')
        if 'sext' in token:
            aaab = token.find('%')
            aaac = token.find(' to ')
            token = token[aaab:aaac]

        # 只处理 i64/i32 等整型索引
        m = re.match(r'^(i\d+)\s+(\d+)$', token)
        if m:
            val = m.group(2).strip()
            if is_even:
                if val != '0' or index % 2 != 0:
                    raw_indices.append(val)
                    length += 1
                    if length == dim_length:
                        break
            else:
                if (val != '0' or is_not_ret or ((index < len(parts) - 2 and '%' not in parts[index + 1])) or (index == len(parts) - 1)) and index != 0:
                    raw_indices.append(val)
                    is_not_ret = False
                    length += 1
                    if length == dim_length:
                        break
                else:
                    is_not_ret = True
        else:
            if '%' in token and token.strip() != '0':
                reg = re.search(r'%\d+', token)
                raw_indices.append(reg.group(0) if reg else token)
                length += 1
                if length == dim_length:
                    break

    # 4. 过滤后转换寄存器，拼成最终索引
    mapped = []
    for v in raw_indices:
        if v.startswith('%'):
            num = uni_backtrace_register(v)  # 假定函数返回寄存器编号
            mapped.append(f'%{num}')
        else:
            if ')' in v:
                mapped.append("_IMM")
            else:
                mapped.append(v)

    name = array_name_struct + array_var_name
    indexing = name + ''.join(f'[{idx}]' for idx in mapped)

    return indexing


def get_dim_tem_num(array_access_ins, array_var_name):
	global temp_var_reg, var_map
	nor = parse_gep(array_access_ins, array_var_name)
	ret = nor.replace("%%", "%")
	return ret 


def parse_execution_sequence(seq_str):
    """解析执行序列，处理ANSI转义字符和无效输入"""
    clean_str = re.sub(r'\x1b\[[0-9;]*m', '', seq_str) 
    # 使用正则表达式提取每行的完整函数和编号
    exec_sequence = re.findall(r'(\w+\*\d+)', clean_str)
    seq_number = defaultdict(int)
    for bb in exec_sequence:
        seq_number[bb] += 1
    sorted_seq  = dict(sorted(seq_number.items(), key=lambda x: x[1], reverse=True))
    return exec_sequence, sorted_seq

def export_to_file(bb_vars, output_path):
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
		with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/structArray/BasicBlock.txt', 'r') as f:
			cfg_content = f.read()
			
		# 读取CFG文件
		with open(r'/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/input/structArray/BasicBlockNum.txt', 'r') as f:
			exec_content = f.read()
		
		# 处理数据
		exec_sequence, seq_number = parse_execution_sequence(exec_content)
		export_to_file(seq_number , "./seq_number.json")
		bb_vars, var_size = parse_bb_variables(cfg_content, seq_number)
		export_to_file(bb_vars, "./array_bb_vars.json")

	except Exception as e:
		logging.error(f"处理失败: {str(e)}")

if __name__ == "__main__":
	main()
