.data

    num1: .word 20
    num2: .word 8

.text

    main:
        lw $s0, num1
        lw $s1, num2

        sub    $t0, $s0, $s1

        li $v0, 1
        move $a0, $t0
        syscall

        li $v0, 10
        syscall
