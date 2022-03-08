.data
string1:
.asciz "ceci est un test de conversion!\n"
length:
.int 30 

.text
.globl main


main : 
push %ebp
mov %esp,%ebp
push %ebx
movl $string1, %esi
movl length, %ecx

verif:
    cmpb $'A', (%esi)
    jb iter
    cmpb $'Z', (%esi)
    jbe iter
    cmpb $'a', (%esi)
    jb iter
    cmpb $'z', (%esi)
    ja iter
    subl $32, (%esi)

iter:
    incl %esi
    decl %ecx
    jcxz fin
    call verif


fin:
    subl length, %esi
    push %esi
    call printf
    leave
    ret

