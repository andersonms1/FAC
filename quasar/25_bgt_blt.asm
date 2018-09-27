.data

    mss: .asciiz "Chaos isnt a pit. Chaos is latter\n"

.text

    main:
        addi $t0, $zero, 30
        addi $t1, $zero, 8

        # blt, ggzt
        bgt $t0, $t1, not_equal

        li $v0, 10
        syscall

    not_equal:
        li $v0, 4
        la $a0, mss
        syscall
