.data

.text

    main:

        addi $t0, $zero, 30
        addi $t1, $zero, 8

        div $t0, $t1

        mflo $s0
        mfhi $s1

        move $a0, $s0
        li $v0, 1
        syscall

        li $v0, 10
        syscall
