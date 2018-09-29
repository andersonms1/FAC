.data

	myAge: .word 24 #para integer .word

.text

	li $v0, 1 #carrega 
	lw $a0, myAge
	
	syscall