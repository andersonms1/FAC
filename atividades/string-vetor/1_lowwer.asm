.data
    string: .asciiz "ABCDEFG"
    line: .asciiz "\n"

.text
    main:
        # print string
        li $v0, 4
        la $a0, string
        syscall


        # print line
        li $v0, 4
        la $a0, line
        syscall

        #initiate
        addi $t0, $zero, 0
        addi $t1, $zero, 0

        #call function
        jal while

        # end program
        li $v0, 10
        syscall

    while:
        # condition
        beq $t0, 24, end

        # print
        li $v0, 4
        la $t1, string(t0)

        addi $a0, $t1, 0x20
        syscall

        # increment
        addi $t0, $t0, 1

        j while

    end:
        jr $ra
