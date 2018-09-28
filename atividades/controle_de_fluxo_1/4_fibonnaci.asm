.data

    separation: .asciiz ", "
    end: "\nEND\n"

.text

    main:
        addi $s0, $zero, 0
        addi $s1, $zero, 1 #anterior
        addi $s2, $zero, 2 #atual

    fib:
        # condition
        beq $s0, 10, exit

        # print sum current + previous
        li $v0, 1
        add $a0, $s1, $s2
        syscall

        #
        add $s1, $s2, $zero
        add $s2, $s2, $s1

        # print ,
        li $v0, 4
        la $a0, separation
        syscall

        # increment
        addi $s0, $s0, 1
        j fib

    exit:
        # print END
        li $v0, 4
        la $a0, end
        syscall

        li $v0, 10
        syscall
