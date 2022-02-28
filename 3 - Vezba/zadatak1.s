
.data

vrednostA: .word 4
vrednostB: .word 12

.text
main:
    lw $t1,vrednostA
    lw $t2,vrednostB

loop:
    beq $t1,$t2, kraj
    bgt $t1,$t2, oduzimanje
    sub $t2,$t2,$t1
    j loop

oduzimanje:
    sub $t1,$t1,$t2
    j loop

kraj:
    li $v0, 10
    syscall