.data

    str: .space 80

.text
    main:
        # get user input str
        li $v0, 8
        li $a0, str
        li $a1, 80
        syscall


        li $v0, 10
        syscall
