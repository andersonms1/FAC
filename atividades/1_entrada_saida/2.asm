.data

    message: .asciiz "Digite um numero inteiro:\n"

.text

    li $v0, 4
    la $a0, message
    syscall

    li $v0, 5
    syscall

    move $a0, $v0

    li $v0, 1
    syscall
    
    li $v0, 10
    syscall
