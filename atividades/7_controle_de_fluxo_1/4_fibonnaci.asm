.data

    separation: .asciiz ", "
    end: "\nEND\n"

.text

    main:
        addi $s0, $zero, 0
        addi $s1, $zero, 0 #anterior
        addi $s2, $zero, 0 #atual

    fib:
        # condition
        
        ble $s0, 1, base1 # =< 1
            
            base1:
                addi $s2, $s0, 0 # atual = contador 


        beq $s0, 10, exit

        # print sum current + previous
        li $v0, 1
        add $a0, $s1, $s2
        syscall

        #
        addi $s1, $s2, 0    # anterior = atual 
        addi $s2, $a0, 0  

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
