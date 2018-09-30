# FAC: TRABALHO 01
.text
	main:
		li $v0, 5	# load appropriate system call code into register $v0;
				# code for reading integer is 5
		syscall		# call operating system to perform operation
		move $a0, $v0	# O PRIMEIRO VALOR LIDO DO TECLADO ESTA DISPONIVEL EM $A0
		li $v0, 5	# load appropriate system call code into register $v0;
				# code for reading integer is 5
		syscall		# call operating system to perform operation
		move $a1, $v0	# O SEGUNDO VALOR LIDO DO TECLADO ESTA DISPONIVEL EM $A1
      
# =================== IMPLEMENTE AQUI SUA SOLUCAO: INICIO
	blt		$a0, 2, exit	# if $a0 < 2 then exit
	blt		$a1, 2, exit	# if $a1 < 2 then exit

	div		$a0, $a1			# $a0 / $a1
	mfhi	$t0					# $t1 = $a0 mod $a1 
	add 	$t1, $t0, $zero

	add		$t2, $a0, $zero		# $t2 = $a0 + $zero
	add		$t3, $a1, $zero		# $t3 = $a1 + $zero

	while:
		bne		$t0, 0, exit_while	# if $t0 != 0 then exit_while
		move $t2, $t3		# $t2 = $t3
		move $t3, $t0		# $t3 = $t1
		div $t2, $t3		# $t2 / $t3
		mfhi	$t0			# $t1 = $t2 / $t3
		j while
	
	exit_while:
		

	add		$t2, $a0, $zero		# $t2 = $a0 + $zero
	add		$t3, $a1, $zero		# $t3 = $a1 + $zero

	while1:
		bne		$t1, 0, exit_while1	# if $t0 != 0 then exit_while
		move $t2, $t3		# $t2 = $t3
		move $t3, $t1		# $t3 = $t1
		div $t2, $t3		# $t2 / $t3
		mfhi	$t1	
		j while1

	exit_while1:
		mul $t1, $t2, $t3
		div $t1, $t2
		mflo $t1

		


	
	
	
# =================== IMPLEMENTE AQUI SUA SOLUCAO: FIM      

      jal  print            # call print routine. 
      li   $v0, 10          # system call for exit
      syscall               # we are out of here.
		
#########  routine to print messages
.data
	space:		.asciiz  " "          # space
	new_line:	.asciiz  "\n"         # newline
	string_MDC:	.asciiz  "MDC: "
	string_MMC:	.asciiz  "\nMMC: "
	invalid: .asciiz "Entrada invalida.\n"

	.text
print:	
	la   $a0, string_MDC  
	li   $v0, 4		# specify Print String service
	syscall               	# print heading
	move   $a0, $t0      	# 
	li   $v0, 1           	# specify Print Integer service
	syscall               	# print $t0
		la   $a0, string_MMC   	# load address of print heading
			li   $v0, 4           	# specify Print String service
			syscall               	# print heading
			move   $a0, $t1      	# 
		li   $v0, 1           	# specify Print Integer service
			syscall               	# print $t1
		jr   $ra              	# return

	exit:
		li		$v0, 4		# 
		la		$a0, invalid		# 
		syscall

		li		$v0, 10		# $v0 = 10
		syscall

	
