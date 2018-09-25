.data 
    newLine: .asciiz "\n"

.text
    main:
        
        # sum value
        addi $s0, $zero, 10

        # call function
        jal increaseRegister

        # print s0, on the main function
        li $v0, 4
        la $a0, newLine
        syscall

        li $v0, 1
        move $a0, $s0
        syscall

    # end program
    li $v0, 10
    syscall
    

    increaseRegister:
        # allocate space on the stack   
        addi $sp, $sp, -4
        # store s0 on the first adress
        sw $s0, 0($sp)

        # add 30 to s0
        addi $s0, $s0, 30

        # print s0, on this function
        li $v0, 1
        move $a0, $s0
        syscall 


        lw $s0, 0($sp)
        # free the stack
        addi $sp, $sp, 4

        jr $ra