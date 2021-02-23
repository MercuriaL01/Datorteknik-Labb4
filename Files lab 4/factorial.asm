# a0 = n
# v0 = result
# v1 = product
# a1 = i
# a2 = i2

.text
	addi $a0, $0, 0x6	 # n = "number to the righ"
	addi $v0, $0, 0x1 	# result = 1
	addi $a1, $0, 0x0	# i = 0
loop1:
	beq $a1, $a0, done	# if i = n end program
	nop
	addi $v1, $0, 0x0	# Product = 0
	addi $a2, $0, 0x0	# i2 = 0
mul:
	beq $a2, $v0, loop2	# End loop if i2 == result
	nop
	add $v1, $v1, $a1	# Product += i
	addi $a2, $a2, 0x1	# i2++
	beq $0, $0, mul		# Loop
	nop
loop2:
	add $v0, $v0, $v1 	# Result += product
	addi $a1, $a1, 0x1 	# i++
	beq $0, $0, loop1
	nop
	
done:	
	beq $0, $0, done	# Endless loop
	nop

