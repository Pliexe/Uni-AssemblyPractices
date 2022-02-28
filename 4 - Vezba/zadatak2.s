.data

str1: .asciiz "Unesi neki broj: "

.text
main:

    la $a0, str1
    li $v0, 4
    syscall

    li $v0, 8
    move $t0, $a0
    syscall

    li $v0, 4
    syscall

    li $v0, 10
    syscall