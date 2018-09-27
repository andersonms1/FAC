.data

array: .space 12

.text

    main:

        addi $s0, $zero, 4
        addi $s1, $zero, 10
        addi $s2, $zero, 12

        addi $t0, $zero, 0
        sw $s0, array($t0)

        addi $t0, $t0, 4
        sw $s1, array($t0)

        addi $t0, $t0, 4
        sw $s2, array($t0)

        lw $t6, array($zero)

        li $v0, 1
        add $a0, $zero, $t6
        syscall

        li $v0, 10
        syscall







