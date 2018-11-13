## 流程控制
#[
  ## scopes、block: 
  ## 流程控制语句开启了一个新的scopes（作用域），语句外不可访问语句中声明的标识符
  ## while 和 for 引入了一个隐式block（块），在其中声明的标识符只在其中可用
  ## block 显式打开一个block
]#

# if
echo "What's your name? "
var name = readLine(stdin)
if name == "":
  echo "??Your name!!"
else:
  echo "Hola, ", name

# case
case name
of "":
  echo "??Your name!!"
of " ", ",", ".":     # 多个值
  echo "emmmm"
else:
  echo "Hola, ", name

# 判断范围
from Strutils import parseInt
echo "Your age? "
let age = parseInt(readLine(stdin))
case age
of -100..0:
  echo "miao miao miao???"
of 150..1000:
  echo "black mountain old monster ??"
of 1..149:
  echo "OK"
else:
  discard


# while
while name == "":
  echo "Your real name ok ?"
  name = readLine(stdin)


# for
for i in 0..<5:              # 等效于countup(0, 4)
  echo i
for i in 0..5:
  echo i
for i in countup(0, 5):
  echo i
for i in countdown(10, 5):  # 没有 10..5 与其等效
  echo i
for index, item in ["a", "b"]:    # [].pairs    ??
  echo index, ":", item


# block
block blocktest:
  var lue = "test"
  # for...
  # while...
# echo lue    # Error: 未声明的标识符


# break
# 可以跳出指定的（默认最近一层）while、for循环或者block
block myblock2:
  echo "entering block"
  while true:
    echo "looping"
    break myblock2    # 不指定的话只跳出最近一层循环或block
  echo "still in block"


# continue
discard """影响执行，注释掉
while true:
  let x = readLine(stdin)
  if x == "": continue
  echo x
"""


# when
when system.hostOS == "linux":
  echo "Running on Linux!"
elif system.hostOS == "whidows":
  echo "Running on windows!"
elif system.hostOS == "macosx":
  echo "Running on osx!"
else:
  echo "Unknow operating system"


# 缩进
const fac4 = (var x = 1; for i in 1..4: x *= i; x)
echo fac4   # 24
