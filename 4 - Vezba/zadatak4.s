.data

buffer: .space  15
str1: .asciiz "Unesi string (max 15 karaktera): "
str2: .asciiz "Napisali ste: "

.text
main:

    la $a0, str1
    li $v0, 4
    syscall

    li $v0, 8
    la $a0, buffer
    li $a1, 15
    move $t0, $a0
    syscall

    la $a0, str2
    li $v0, 4
    syscall

    la $a0, buffer
    move $a0, $t0
    li $v0, 4
    syscall

    li $v0, 10
    syscall
