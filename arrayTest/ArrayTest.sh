#!/bin/bash

CFG_PASS_PATH=".././CFGPass.so"
# 获取当前目录下所有的 .c 文件
for c_file in *.c; do
    # 1. 创建以 .c 文件名称命名的文件夹
    folder_name="${c_file%.c}"
    mkdir -p "$folder_name"

    # 清空文件夹中的内容
    if [ -d "$folder_name" ]; then
        rm -rf "$folder_name"/*
    fi

    # 切换到文件夹
    pushd "$folder_name" > /dev/null

    # 2. 使用 clang 编译为 .bc/.ll/.o 文件 
    O0_bc_file="${folder_name}_O0.bc"
    O0_ll_file="${folder_name}_O0.ll"
    O2_bc_file="${folder_name}_O2.bc"
    O2_ll_file="${folder_name}_O2.ll"
    clang -S -emit-llvm "../$c_file" -c -o "$O0_bc_file"
    clang -S -emit-llvm "../$c_file" -c -o "$O0_ll_file"
    clang "$O0_bc_file" -o "O0_$folder_name"
    clang -O2 -S -emit-llvm "../$c_file" -c -o "$O2_bc_file"
    clang -O2 -S -emit-llvm "../$c_file" -c -o "$O2_ll_file"
    clang -O2 "$O2_bc_file" -o "O2_$folder_name"

    # 4. 使用 opt 生成 CFG
    opt -load "$CFG_PASS_PATH" -CFG "$O0_bc_file" 

    # 返回到上级目录
    popd > /dev/null

    echo "处理完成: $c_file -> $folder_name"
done

echo "所有文件处理完毕！"