.data

str1: .asciiz "Srecna Nova godina"

.text
main:

    
    la $a0, str1

    li $v0, 4
    syscall

    li $v0, 10
    syscall