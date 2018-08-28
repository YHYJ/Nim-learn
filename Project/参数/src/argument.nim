proc divmode(a, b: int; res, remainder: var int) = 
    res = a div b           # 整除
    remainder = a mod b     # 取模


var
    x, y: int


divmode(8, 5, x, y)
echo x
echo y
