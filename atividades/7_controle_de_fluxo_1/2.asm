.data

    line: .asciiz "\n"

.text

    main:
        # add    $t0, $t0, 100            # $t0 =  100
        addu    $t0, $t0, 100

    loop:
        # increment
        # add $t0, $t0, $t0
        addu $t0, $t0, $t0

        # print
        li $v0, 1
        add $a0, $t0, $zero
        syscall

        # print new line
        li $v0, 4
        la $a0, line
        syscall

        j loop
