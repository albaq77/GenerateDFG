#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
符号表解析与JSON更新脚本
用于解析ELF符号表文件并将地址和大小信息添加到JSON全局变量文件中
"""

import json
import re
import sys
import argparse
from typing import Dict, Any, Tuple, Optional


def parse_symbol_line(line: str) -> Optional[Tuple[str, int, int]]:
    """
    解析符号表中的一行
    
    Args:
        line: 符号表中的一行文本
        
    Returns:
        tuple: (符号名, 起始地址, 大小) 或 None
    """
    # 去除首尾空白字符
    line = line.strip()
    if not line:
        return None
    
    # 使用正则表达式解析符号表行
    # 格式: 地址 标志 段名 大小 符号名
    pattern = r'^([0-9a-fA-F]+)\s+[lg]\s+O?\s*\.?\w*\s+([0-9a-fA-F]+)\s+(.+)$'
    match = re.match(pattern, line)
    
    if match:
        address_str = match.group(1)
        size_str = match.group(2)
        symbol_name = match.group(3).strip()
        
        try:
            address = int(address_str, 16)
            size = int(size_str, 16)
            return symbol_name, address, size
        except ValueError:
            return None
    
    return None


def parse_symbol_table(symbol_file: str) -> Dict[str, Dict[str, int]]:
    """
    解析符号表文件
    
    Args:
        symbol_file: 符号表文件路径
        
    Returns:
        dict: 符号名到地址和大小的映射
    """
    symbols = {}
    
    try:
        with open(symbol_file, 'r', encoding='utf-8') as f:
            for line_num, line in enumerate(f, 1):
                result = parse_symbol_line(line)
                if result:
                    symbol_name, address, size = result
                    symbols[symbol_name] = {
                        'address': address,
                        'size': size
                    }
                    print(f"解析符号: {symbol_name} -> 地址: 0x{address:x}, 大小: {size}")
    
    except FileNotFoundError:
        print(f"错误: 找不到符号表文件 '{symbol_file}'")
        sys.exit(1)
    except Exception as e:
        print(f"错误: 读取符号表文件时出现异常: {e}")
        sys.exit(1)
    
    return symbols


def load_json_file(json_file: str) -> Dict[str, Any]:
    """
    加载JSON文件
    
    Args:
        json_file: JSON文件路径
        
    Returns:
        dict: JSON数据
    """
    try:
        with open(json_file, 'r', encoding='utf-8') as f:
            return json.load(f)
    except FileNotFoundError:
        print(f"错误: 找不到JSON文件 '{json_file}'")
        sys.exit(1)
    except json.JSONDecodeError as e:
        print(f"错误: JSON文件格式错误: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"错误: 读取JSON文件时出现异常: {e}")
        sys.exit(1)


def update_json_with_symbols(json_data: Dict[str, Any], symbols: Dict[str, Dict[str, int]]) -> Dict[str, Any]:
    """
    使用符号表信息更新JSON数据
    
    Args:
        json_data: 原始JSON数据
        symbols: 符号表数据
        
    Returns:
        dict: 更新后的JSON数据
    """
    updated_data = json_data.copy()
    
    # 遍历JSON中的全局变量
    for key in json_data:
        if key.startswith('@'):
            # 移除 @ 前缀来匹配符号表中的名称
            symbol_name = key[1:]
            
            if symbol_name in symbols:
                symbol_info = symbols[symbol_name]
                updated_data[key]['address'] = f"0x{symbol_info['address']:x}"
                updated_data[key]['symbol_size'] = symbol_info['size']
                print(f"更新变量 {key}: 地址={updated_data[key]['address']}, 符号大小={symbol_info['size']}")
            else:
                print(f"警告: 在符号表中未找到变量 '{symbol_name}'")
    
    return updated_data


def save_json_file(data: Dict[str, Any], output_file: str):
    """
    保存JSON文件
    
    Args:
        data: 要保存的数据
        output_file: 输出文件路径
    """
    try:
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(data, f, indent=2, ensure_ascii=False)
        print(f"成功保存更新后的JSON文件: {output_file}")
    except Exception as e:
        print(f"错误: 保存JSON文件时出现异常: {e}")
        sys.exit(1)


def main():
    """主函数"""
    parser = argparse.ArgumentParser(description='解析ELF符号表并更新JSON全局变量文件')
    parser.add_argument('symbol_file', help='符号表文件路径')
    parser.add_argument('json_file', help='JSON全局变量文件路径')
    parser.add_argument('-o', '--output', help='输出文件路径 (默认覆盖原JSON文件)')
    
    args = parser.parse_args()
    
    # 设置输出文件路径
    output_file = args.output if args.output else args.json_file
    
    print("=== 符号表解析与JSON更新工具 ===")
    print(f"符号表文件: {args.symbol_file}")
    print(f"JSON文件: {args.json_file}")
    print(f"输出文件: {output_file}")
    print()
    
    # 解析符号表
    print("正在解析符号表...")
    symbols = parse_symbol_table(args.symbol_file)
    print(f"共解析到 {len(symbols)} 个符号")
    print()
    
    # 加载JSON文件
    print("正在加载JSON文件...")
    json_data = load_json_file(args.json_file)
    print(f"JSON文件加载成功，包含 {len(json_data)} 个条目")
    print()
    
    # 更新JSON数据
    print("正在更新JSON数据...")
    updated_data = update_json_with_symbols(json_data, symbols)
    print()
    
    # 保存更新后的文件
    print("正在保存文件...")
    save_json_file(updated_data, output_file)
    print()
    print("处理完成!")


if __name__ == "__main__":
    main()