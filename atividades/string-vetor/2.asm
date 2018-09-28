.data
    size: .word 8
    array: .word 23, ­12, 45, ­32, 52, ­72, 8, 13

.text
    li $v0, 1 #carrega
    lw $a0, array(4)

    syscall
