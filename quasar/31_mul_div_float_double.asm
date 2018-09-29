.data

    num1: .float 5.0
    num2: .float 2.0

    line: .asciiz ", "

.text

    main:
        lwc1 $f2, num1
        lwc1 $f4, num2

        add.s $f12, $f4, $f2
        jal print
        
        mul.s $f12, $f4, $f2
        jal print

        div.s $f12, $f4, $f2
        jal print

        li $v0, 10
        syscall

    print:
        li $v0, 3
        syscall

        li $v0, 4
        la $a0, line
        syscall

        jr $ra
