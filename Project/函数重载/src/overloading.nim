proc toString(x: int): string = ... 
proc toString(x: bool): string = 
    if x: result = "true"
    else: result = "false"

echo toString(13)
echo toString(true)
