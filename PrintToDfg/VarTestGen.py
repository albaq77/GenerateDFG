import random

# 定义更多变量名列表
variable_names = ['x', 'y', 'z', 'a', 'b', 'c', 'temp', 'result', 'counter', 'flag', 'index', 'sum', 'product', 'average', 'max_val', 'min_val', 'ptr', 'arr', 'matrix', 'vec']

# 定义 C 语言常见变量类型列表
variable_types = ['int', 'float', 'double', 'char', 'short', 'long', 'long long', 'unsigned int', 'unsigned short', 'unsigned long', 'unsigned long long', 'void *', 'char *', 'int *', 'float *', 'double *']

# 定义变量大小映射
type_sizes = {
    'int': 32,
    'float': 32,
    'double': 64,
    'char': 8,
    'short': 16,
    'long': 32,
    'long long': 64,
    'unsigned int': 32,
    'unsigned short': 16,
    'unsigned long': 32,
    'unsigned long long': 64,
    'void *': 64,
    'char *': 64,
    'int *': 64,
    'float *': 64,
    'double *': 64
}

# 定义生成的变量信息数量
num_variables = 1000

# 用于存储每个变量的类型
variable_type_mapping = {}

# 打开文件以写入模式
try:
    with open('test_case.txt', 'w') as file:
        for _ in range(num_variables):
            # 随机选择变量名
            name = random.choice(variable_names)
            if name not in variable_type_mapping:
                # 随机选择变量类型
                var_type = random.choice(variable_types)
                variable_type_mapping[name] = var_type
            else:
                var_type = variable_type_mapping[name]

            # 获取变量大小
            size = type_sizes[var_type]
            # 构建变量信息字符串
            info = f"[{name},{var_type},{size}]\n"
            # 将信息写入文件
            file.write(info)
    print("测试用例已成功生成到 test_case.txt 文件中。")
except Exception as e:
    print(f"发生错误: {e}")
    