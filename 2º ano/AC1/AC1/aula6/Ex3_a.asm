strcopy:	li $t0,0 		# i = 0;

strcopy_do:	addu $t1,$a1,$t0 	# t1 = &src[i]
		addu $t2,$a0,$t0 	# t2 = &dst[i]
		lb $t3,0($t1)    	# t3 = src[i];
		sb $t3,0($t2)    	# dst[i] = t3
		addi $t0,$t0,1		# i++
		bne $t3,'\n',strcopy_do
		move $v0,$a0  		# return dst
		jr $ra
				
