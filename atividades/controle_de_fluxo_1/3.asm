.data

    line: .asciiz "\n"

.text

    main:
        addi $s0, $zero, 0 #sum
        addi $s1, $zero, 0 #counter
        addi $s2,  $zero, 10110 #

        jal loop

    loop:
        beq $s1, $s2, exit
        add $s0, $s0, $s1
        addi $s1, $s1, 1
        j loop

    exit:
        j exit # sponge for excess machine cycles
        sll $0,$0,0
        
