.data

    array: .space 12
    line: .asciiz "\n"

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

        addi $t0, $zero, 0
              
        jal while				# jump to while and save position to $ra
        

        # end of program
        li $v0, 10
        syscall

    while:
        beq $t0, 12, exit

        # load
        lw $t6, array($t0)
        
        # print 
        li $v0, 1
        add $a0, $zero, $t6
        syscall
        
        # print 
        li $v0, 4
        la $a0, line
        syscall
        
        # increment 
        addi $t0, $t0, 4

        # recall function
        j while

    exit:
        jr $ra
        

        