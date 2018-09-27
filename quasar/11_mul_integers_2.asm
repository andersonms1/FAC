.data

.text

    main:
        addi $t0, $zero, 2000
        addi $t1, $zero, 10

        mult $t0, $t1

        mflo $s0

        li $v0, 1
        move $a0, $s0
        syscall

        li $v0, 10
        syscall
