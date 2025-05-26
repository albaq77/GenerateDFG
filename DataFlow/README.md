# 变量访问图生成工具

## 项目简介

该项目的目的是通过解析基本块IR中间代码中存在的访存变量和执行序列，构建一个变量访问图。变量访问图记录了在不同变量之间的依赖关系，并生成一个可用于可视化分析的DOT格式文件。

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

5. 脚本说明

   1. 全局变量

      - [x] 结构体变量和普通变量：BBGlobalStructDFG.py 已完成
      - [x] 静态定长 结构体数组和普通数组：BBGlobalArrayDFG.py 待完善
      - [ ] malloc动态 结构体数组和普通数组：BBGlobalMallocArrayDFG.py​ ​ 待完成

   2. 局部变量

      已初步实现整体临时变量数据的提取：BBTempDFG.py

      - [ ] 结构体变量和普通变量：BBTempStructDFG.py 待完成
      - [ ] 静态定长 结构体数组和普通数组：BBTempArrayDFG.py 待完成
      - [ ] malloc动态 结构体数组和普通数组：BBTempMallocArrayDFG.py 待完成

## 数据流图节点提取规则

在LLVM中间代码（LLVM IR）中，程序变量的内存操作主要通过`load`和`store`指令进行处理。为了正确地提取和分类变量，需要进行回溯分析，以判断变量是全局变量、局部变量还是堆分配的变量

### 指令识别

- **`load`指令**：用于从内存中读取数据到寄存器。它通常用于提取变量的当前值

  ```java
  %40 = load double*, double** @nodekindf, align 8, !dbg !232
  %41 = load double, double* %40, align 4, !dbg !233
  ```

- **`store`指令**：用于将寄存器中的数据写入内存地址。它通常用于更新变量的值

  ```java
  store i32 %14, i32* getelementptr inbounds (%struct.HotData, %struct.HotData* @hot_data, i32 0, i32 4), align 4, !dbg !46
  store i8 98, i8* getelementptr inbounds (%struct.HotData, %struct.HotData* @hot_data, i32 0, i32 1, i64 0), align 4, !dbg !47
  ```

### 全局变量

全局变量在LLVM IR中以 **@var** 标识，全局变量指示的的类型一定是单 ***** 的（多 ***** 代表的是一个指针数组变量，动态申请的堆上内存空间，如 double** @nodekindf）。这种变量的存储空间在全局范围内分配

- 结构体成员和基本类型

  **识别 type* @var**

  - %struct.source* @Src 

  - double* @Num

  - 匹配规则

    1. 检索到 load, store 指令

    2. 判断操作的变量是否为结构体和基本类型变量

       1. 内存操作指令直接操作结构体成员和基本类型，记录变量名

          ```java
          store double 0x3FFEFF3E818748AF, double* getelementptr inbounds (%struct.source, %struct.source* @Src, i32 0, i32 1), align 8, !dbg !256
          ```

       2. 内存操作指令间接操作结构体成员和基本类型（操作的寄存器编号通过回溯发现指向的是结构体成员和基本类型），回溯寄存器值，记录变量名

- 定长静态数组

  **识别 [n x type]* @var**

  匹配规则：

  - [128 x [2 x i8]]* @x264_cabac_transition

  - [4 x i8* ]* @demuxer_names

  - [10 x %struct.HotData]* @hot_array

  - 匹配规则

    1. 检索到 load, store 指令

    2. 判断操作的变量是否为定长静态数组

       1. 内存操作指令直接操作的是数组变量，记录变量名和访问情况

          ```java
          %74 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), align 16, !dbg !15978
          ```

       2. 内存操作指令间接操作结构体成员和基本类型，回溯寄存器值，记录变量名和访问顺序情况

          ```java
          %10 = getelementptr inbounds [4 x %struct.sio_status_s], [4 x %struct.sio_status_s]* @statusar, i64 0, i64 %9, !dbg !15888
          store %struct.sio_status_s* %10, %struct.sio_status_s** %5, align 8, !dbg !15886
          ```

### 临时变量

1. 局部变量通常在函数中定义。在LLVM IR中，在函数的第一个基本块中声明当前函数的所有临时变量定义

2. 在每个函数的基本块（Basic Block）中，局部变量通过`alloca`指令进行内存分配，使用寄存器编号来标识。

3. 在临时变量的提取过程中，判断操作的寄存器编号是否对应的是申请临时变量所指向的编号

   ```java
   @main*0
        Basic Block Source Location: quake.c:153
        %1 = alloca i32, align 4
        %2 = alloca [4 x i32], align 16
        %3 = alloca [4 x i32], align 16
        %4 = alloca i32, align 4
        %5 = alloca double, align 8
        %6 = alloca [12 x [12 x double]], align 16
        %7 = alloca [12 x double], align 16
   ```

- 结构体成员和基本类型

  **识别 type* %n**

  - %struct.x264_sps_t* %37

  - 匹配规则

    - 匹配步骤与全局变量一致，主要区别在于全局变量是识别@var，局部变量是识别 %n (%n是代表结构体和基本类型临时变量的寄存器编号)

    ```java
    %38 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %37, i32 0, i32 16, !dbg !8970
    %37 = load i32, i32* %38, align 4, !dbg !8970
    ```

- 定长静态数组

  **识别 [n x type]* %n**

  - 匹配规则

    - 匹配步骤与全局变量一致，主要区别在于全局变量是识别 [n x type]* @var，局部变量是识别 [n x type]* %n (%n是代表定长静态数组临时变量的寄存器编号)

    ~~~java
    %16 = alloca [5 x i32], align 16
    ```
    %35 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0, !dbg !15938
    store i32 %34, i32* %35, align 16, !dbg !15939
    ~~~

### 堆变量

- 堆变量通过 **malloc** 和 **remalloc** 函数在堆上申请内存空间。在 LLVM IR 具体表现为 store 指令操作的第一个寄存器参数是通过@malloc和@remalloc函得到的，操作的第二个寄存器参数所指向的变量就是堆变量
- 变量的匹配规则和上述全局变量和临时变量匹配规则一致，区别在于需要判断操作的是否是一个堆变量