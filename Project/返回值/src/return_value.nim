proc p(x, y: int): int {.discardable.} = 
    return x + y

p(3, 4)


proc tt(x, y: int): int = 
    discard


var result: int
echo result
