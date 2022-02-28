
.data


.text
main:	li $t0, 555
	li $t1, 556
	blt $t0,$t1, labela1
	j labela2	

labela1: li $t3,1

labela2: li $t3,0

	li $v0, 10
	syscall
