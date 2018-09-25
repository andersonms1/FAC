.data
	msg: .asciiz "Chaos isn’t a pit. Chaos is a ladder."

.text

	main:
		jal displayMessage
		
		li $v0, 10
		syscall
	
	displayMessage:
		
		li $v0, 4
		la $a0, msg
		syscall
		jr $ra
