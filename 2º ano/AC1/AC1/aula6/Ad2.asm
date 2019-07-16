# mapa de registos
# $s0 - i
# $s1 - array_size
# $s2 - insert_value
# $s3 - insert_pos
# $s4 - array
	
	.data
array:	.space 50
str:	.asciiz ", "
str1:	.asciiz "Size of array: "
str2:	.asciiz "array["
str3:	.asciiz "] = "
str4:	.asciiz "Enter the value to be inserted: "
str5:	.asciiz "Enter the position: "
str6:	.asciiz "\nOriginal array: "
str7:	.asciiz "\nModified array: "
	.eqv print_str,4
	.eqv read_int,5
	.eqv print_int,1
	.text 
	.globl main
main:
	subu $sp,$sp,4
	sw $ra,0($sp)
	
	la $s4,array
			
	la $a0,str1
	li $v0,print_str
	syscall			# print_string("Size of array : ");
	
	la $v0,read_int
	syscall
	move $s1,$v0		# array_size = read_int(); 
	li $s0,0		# i = 0	
for1:
	bge $s0,$s1,endfor1
	la $a0,str2
	li $v0,print_str	
	syscall			# print_string("array["); 
	
	move $a0,$s0
	li $v0,print_int
	syscall			# print_int(i)
	
	la $a0,str3
	li $v0,print_str
	syscall			# print_string("] = ");
	
	la $v0,read_int	
	syscall 
	
	sll $t0,$s0,2
	add $t0,$t0,$s4
	sw $v0,0($t0)		# array[i] = read_int(); 
	
	addi $s0,$s0,1		# i++
	j for1
endfor1:							#### FODEU ####
	la $a0,str4
	li $v0,print_str
	syscall			# print_string("Enter the value to be inserted: "); 
	
	la $v0,read_int
	syscall
	
	move $s2,$v0		# insert_value = read_int();
	
	la $a0,str5
	li $v0,print_str
	syscall			# print_string("Enter the position: "); 
	
	la $v0,read_int
	syscall
	
	move $s3,$v0		# insert_pos = read_int(); 
	
	la $a0,str6
	li $v0,print_str
	syscall			# print_string("\nOriginal array: "); 
	
	move $a0,$s4
	move $a1,$s1
	jal print_array		# print_array(array, array_size); 
	
	move $a0,$s4
	move $a1,$s2
	move $a2,$s3
	move $a3,$s1
	jal insert		# insert(array, insert_value, insert_pos, array_size); 
	
	la $a0,str7
	li $v0,print_str
	syscall			# print_string("\nModified array: "); 
	
	addi $s1,$s1,1
	move $a0,$s4
	move $a1,$s1
	jal print_array		# print_array(array, array_size + 1);
	
	li $v0,0		# return 0
	
	lw $ra,0($sp)
	addu $sp,$sp,4 
	
	jr $ra
	
	
	
############################################################

# mapa de registos
# $a0 - *a
# $a1 - n
# $t0 - *p
# $t1 - a

print_array:
	add $t0,$a0,$a1		# *p = a + n
	move $t2,$a0
for:
	bgt $t2,$t0,endfor
	lw $a0,0($t2)
	li $v0,print_int
	syscall
	
	la $a0,str
	li $v0,print_str
	syscall
	
	add $t2,$t2,4
	j for
endfor:
	jr $ra

#####################################################################

# mapa de registos
# $a0 - *array
# $a1 - value
# $a2 - pos
# $a3 - size
# $t0 - i
# $t1 - array[i]
# $t3 - array[pos]

insert:
if:	ble $a2,$a3,else	# if(pos > size)
	li $v0,1		# return 1
else:	
	sub $t0,$a3,1		# i = size-1
for2:
	blt $t0,$a2,endfor2
	sll $t4,$t0,2		# t4 = i * 4
	add $t1,$a0,$t4		# t3 = array[i]
	lw $t2,0($t1)
	addi $t1,$t1,4		# array[i+1]
	sw $t2,0($t1)		# array[i+1] = array[i]; 
	subi $t0,$t0,1		# i--
	j for2
endfor2:
	sll $a2,$a2,2
	add $t3,$a2,$a0
	sw $a1,0($t3)
	
	li $v0,0
endif:	
	jr $ra
	
	
	
	
	
