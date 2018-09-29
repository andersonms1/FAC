.data

    line: .asciiz "\n"

.text

    main:
        li $a1, 11
        jal show

        li $a1, 11
        jal clear

        move $a1, $v0
        jal show

        li $v0, 10
        syscall

    show:
        li $v0, 4
        la $a0, line
        syscall

        li $v0, 1
        move $a0, $a1
        syscall

        jr $ra

    clear:
        addi $sp, $sp, -4
        # salva o valor de sp na pilha
        # para que depois possa ser recuperado 
        # e não interferir em demais areas 
        # eu acho
        sw $s0, 0($sp) 

        li $s0, -1
        sll $s0, $s0, 1
        and $v0, $a1, $s0

        lw $s0, 0($sp) 
        addi $sp, $sp, 4

        jr $ra
