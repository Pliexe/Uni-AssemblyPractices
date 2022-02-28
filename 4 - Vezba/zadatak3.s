.data

str1: .asciiz "Unesi prvi broj: "
str2: .asciiz "Unesi drugi broj: "
str3: .asciiz "Rezultat je: "

.text
main:


    la $a0, str1
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    la $a0, str2
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $t2, $v0



    add $t3, $t1, $t2

    la $a0, str3
    li $v0, 4
    syscall

    move $a0, $t3
    li $v0, 1
    syscall

    li $v0, 10
    syscall