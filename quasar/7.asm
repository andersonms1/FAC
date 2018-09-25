.data

	myDouble: .double 7.12345 
	zeroDouble: .double 0.0
.text

	ldc1 $f2, myDouble
	ldc1 $f0, zeroDouble
	
	li $v0, 3
	
	add.d $f12, $f0, $f2
		
	syscall