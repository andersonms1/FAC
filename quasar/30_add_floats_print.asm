.data

    num1: .float 3.14
    num2: .float 2.96

.text

    lwc1 $f2, num1
    lwc1 $f4, num2


    add.s $f12, $f4, $f2

    li $v0, 3
    syscall

