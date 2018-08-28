for i in countup(1, 10):    # countup 是一个迭代器
    echo i


## 自定义迭代器
iterator counterup(a, b: int): int =
    var res = a
    while res <= b:
        yield res
        inc(res)


for i in counterup(1, 10):
    echo i
