.data

    mss: .asciiz "LESS\n"

.text

    main:
        addi $t0, $zero, 30
        addi $t1, $zero, 8

        slt $s0, $t0, $t1
        bqn $s0, $zero, not_equal
        bne $s0, $zero, not_equal

        li $v0, 10
        syscall

    not_equal:
        li $v0, 4
        la $a0, mss
        syscall
    
