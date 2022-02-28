.data
n: .word 5

.text
main:
    li $t1,0
    lw $t2,n

loop:
    add $t1,$t2,$t1
    addi $t2,$t2,-1
    bgt $t2,$zero, loop

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 10
    syscall