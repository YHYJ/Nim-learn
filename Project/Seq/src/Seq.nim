import os


let code = if paramCount() > 0: readFile paramStr(1)
    else: readAll stdin
echo code


var x = @[2, 4, 6]
var
    tape = newSeq[char]()
    codePos = 0
    tapePos = 0


proc run(skip = true): bool =      # 关键字 函数名(参数 = 类型): 返回值类型 = 
    while tapePos >= 0 and codePos < code.len:
        if tapePos >= tape.len:
            tape.add '\0'

        if code[codePos] == '[':
            inc codePos
            let oldPos = codePos
            while run(tape[tapePos] == '\0'):
                codePos = oldPos
        elif code[codePos] == ']':
            return tape[tapePos] != '\0'
        elif not skip:
            case code[codePos]
            of '+': inc tape[tapePos]
            of '-': dec tape[tapePos]
            of '>': inc tapePos
            of '<': dec tapePos
            of '.': stdout.write tape[tapePos]
            of ',': tape[tapePos] = stdin.readChar
            else: discard

        inc codePos

# 符号
discard """
符号    含义            语句
>       在tape上右移    inc tapePos
<       在tape上左移    dec tapePos
+       增大tape        inc tape[tapePos]
-       减小tape        dec tape[tapePos]
.       tape上的值      stdout.write tape[tapePos]
,       写入值到tape    tape[tapePos] = stdin.readChar
[       如果tape上的值是'\0'，匹配到']'后跳转到命令？？
]       如果tape上的值不是'\0'，匹配到'['后跳转回命令？？
"""


var res =  run()
echo res
# 参数要指定类型
# 必须使用 discard 抛出或者直接接收函数的返回值
# 隐式变量 result 传递返回值
# 默认返回值是初始化为二进制的0，因此默认返回false（二进制的0转化为bool应该是true吧？？）
