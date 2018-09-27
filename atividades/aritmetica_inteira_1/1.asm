.data



.text

    main:
        li $v0, 5
        syscall
        move $t1, $v0

        li $v0, 5
        syscall
        move $t2, $v0

        li $v0, 5
        syscall
        move $t3, $v0

        li $v0, 5
        syscall
        move $t4, $v0

     	#

        add $t5, $t1, $t2
        add $t6, $t3, $t4
        add $t0, $t5, $t6

        li $v0, 1
        move $a0, $t0
        syscall

        li $v0, 10
        syscall
