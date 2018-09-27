.data

.text

    main:

        addi $s0, $zero, 4
        addi $s1, $zero, 10

        mul $t0, $s0, $s1

        move $a0, $t0
        li $v0, 1
        syscall

        li $v0, 10
        syscall
