.data

    message: .asciiz "Alo mundo !\n"

.text

    li $v0, 4 # carrega inteiro que deve ser impresso
    la $a0, message
    syscall


    li $v0, 10
    syscall
