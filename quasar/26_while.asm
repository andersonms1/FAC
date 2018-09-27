.data

    mss: .asciiz "The loop is done\n"
    space: .asciiz ", "

.text
    main:
        add $t0, $zero, $zero

        while:
            bgt $t0, 10, exit
            jal print
            addi $t0, $t0, 1
            j while

        exit:
            li $v0, 4
            la $a0, mss
            syscall

            li $v0, 10
            syscall

    print:
        li $v0, 1
        add $a0, $t0, 0
        syscall

        li $v0, 4
        la $a0, space
        syscall

        jr $ra
