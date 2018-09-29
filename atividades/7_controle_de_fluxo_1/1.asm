.data

    line: .asciiz "\n"

.text

    main:

        addi $t0, $zero, 0
        addi $s0, $zero, 0

        jal while

        li $v0, 10
        syscall

    while:
        # condition
        beq $t0, 5, exit

        # print number
        li $v0, 1
        add $a0, $zero, $s0
        syscall

        # print new line
        li $v0, 4
        la $a0, line
        syscall

        # increment
        addi $t0, $t0, 1 # t0++
        add $s0, $s0, $t0 # s0 = s0 + t0

        # 0 + 1 + 2 + 3 + 4

        #loop
        j while

    exit:
        jr $ra
