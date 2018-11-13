## 文档注释
## 4种注释、变量、不可变量、常量、类型判断

echo "What's your name? "
var name = readLine(stdin)
# let name = readLine(stdin)    # √
# const name = readLine(stdin)  # ×：无法在编译时求常量的值
# var name: string = readLine(stdin)  # Nim会进行类型判断
echo "Hi, ", name, "!"


#[
多行注释
# 可以嵌套
#[嵌套]#
]#

discard """
块注释
"""

## 声明变量
var x, y: int   # √
var
  X, Y: int
  # I am Grout!! (ˇˍˇ)
  Z: string

var z = 1 + 2 + 3     # 进行变量声明的时候可以做运算（常量也可以）
echo "z = ", z

var a, b, c = 123     # √
echo "a = ", a        # prints 123


# 声明不可变量
let Q = "3"           # 声明变量Q，绑定值为"3"
echo "Q = ", Q
# Q = "1"               # 不可变


## 声明常量
const C = 1 + 2 + 3   # 常量x，值为"NPC"
echo "C = ", C


discard """let和const的区别：
let声明一个变量，只是这个变量被初始化一个值后就无法重新赋另一个值
const声明一个常量，常量在编译时求值"""
