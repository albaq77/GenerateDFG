# 变量访问图生成工具

## 项目简介

该项目的目的是通过解析控制流图（CFG）和执行序列，构建一个变量访问图。变量访问图记录了在不同基本块（BB）之间的变量依赖关系，并生成一个可用于可视化分析的DOT格式文件。

## 功能

1. **解析基本块中的变量访问**：从CFG DOT文件中提取每个基本块内的变量访问信息。
2. **解析执行序列**：从执行序列中提取出按照执行顺序排列的基本块编号。
3. **构建变量访问图**：根据解析的基本块变量信息和执行序列，构建变量访问图并计算依赖关系的权重。
4. **生成DOT文件**：生成一个包含变量依赖关系的DOT文件，可以用于可视化工具（如Graphviz）查看变量访问图。

## 代码说明

### `parse_bb_variables(cfg_str)`

该函数解析控制流图（CFG）DOT文件，提取出每个基本块中的变量访问信息。它处理`load`和`store`指令，并返回一个字典，其中键为基本块编号，值为该基本块访问的变量列表。变量包括指针类型（如 `i32* %a`）和普通变量（如 `%a`）。

**输入**：包含基本块信息的字符串（`cfg_str`）。

**输出**：一个字典，键为基本块编号，值为该基本块内的变量访问列表。

### `parse_execution_sequence(seq_str)`

该函数解析执行序列字符串，提取出每一行中的星号后跟随的编号。返回一个按顺序排列的基本块编号列表。

**输入**：包含执行序列的字符串（`seq_str`）。

**输出**：按顺序排列的基本块编号列表。

### `build_variable_graph(bb_vars, exec_sequence)`

该函数根据基本块的变量访问信息和执行序列构建变量访问图。通过计算变量之间的依赖关系来生成图的边，依赖关系的权重表示变量之间的访问频率。

**输入**：

- `bb_vars`：包含每个基本块变量访问的字典。
- `exec_sequence`：按顺序排列的基本块编号列表。

**输出**：一个字典，其中键是变量对（源变量，目标变量），值是边的权重。

### `generate_dot(edge_weights)`

该函数根据变量访问图的边定义生成一个DOT格式的字符串。DOT格式可以被Graphviz等可视化工具解析并显示为图形。

**输入**：包含边及其权重的字典（`edge_weights`）。

**输出**：一个字符串，表示生成的DOT文件内容。

### `main()`

该函数是程序的主入口。它读取配置文件和执行序列，调用上述函数处理数据，并生成最终的DOT文件。

## 使用说明

1. **安装依赖**：

   - 请确保Python环境已经安装，并且安装了必要的模块：
     ```bash
     pip install re logging collections
     ```
2. **准备输入文件**：

   - `c_cfg.dot`：包含控制流图的DOT文件。该文件应该包含基本块（BB）及其指令。
   - `a.txt`：包含程序执行序列的文件，按顺序列出基本块编号。
3. **运行脚本**：

   - 使用Python运行脚本：
     ```bash
     python script_name.py
     ```
4. **查看输出**：

   - 运行脚本后，输出将生成一个名为 `variable_access_graph.dot` 的DOT文件。
   - 使用Graphviz等可视化工具打开该文件，查看生成的变量访问图。

   例如，可以使用以下命令将DOT文件转换为PNG图像：

   ```bash
   dot -Tpng variable_access_graph.dot -o variable_access_graph.png
   ```
