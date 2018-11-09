import os


let code = if paramCount() > 0: readFile paramStr(1)
    else: readAll stdin
echo code


# paramCount() - 命令行参数计数
# let - 关键字，声明不可变变量
# readFile paramStr(1) - 如果参数是（1限制读取一个参数）文件，读取这个文件到code
# readAll stdin - 如果参数是标准输入
