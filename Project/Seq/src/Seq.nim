var
    tape = newSeq[char]()
    codePos = 1
    tapePos = 3


echo tape


var x = @[2, 4, 6]
echo x


proc run(skip = false): bool = 
    echo "codePos: ", codePos, " tapePos: ", tapePos, " tape: ", tape


discard run()
