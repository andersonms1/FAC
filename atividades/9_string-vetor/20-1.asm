## prog20-1.asm -- To Lower Case
##
##
## Write a program that converts the string to all lower case
## characters. Do this by adding 0x20 to each character in the string.

## Register Use:
##
## $8  --- current character
## $10 --- character pointer

         .text
         .globl    main

main:    lui       $10,0x1000          # initialize base register

         lbu       $8,($10)            # get the first char of the string
         sll       $0,$0,0
loop:
         beq       $8,$0,halt          # while ( char != '/0' )
         sll       $0,$0,0             #
         addiu     $8,$8,0x20          #   uncapitalize char
         sb        $8,($10)            #   replace char in string
         addiu     $10,$10,1           #   advance the char pointer
         lbu       $8,($10)            #   get the next char of the string
         j         loop                # end while
         sll       $0,$0,0
         
halt:   
        li $v0, 4
        la $a0, string
        syscall

        li $v0, 10
        syscall
          
         .data
string:  .asciiz   "ABCDEFGHIJKLMNOP"

## End of file  
