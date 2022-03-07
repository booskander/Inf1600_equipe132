.data
string1:
.asciz "This is a TEST, of the conversion program!\n"
length:
.int 43 

.text
.globl main


main : 
push %ebp
mov %esp,%ebp
push %ebx
movl $string1, %esi
movl length, %ecx

verif:
cmpb $'a', (%esi)
jb iter
cmpb $'z', (%esi)
ja iter
subl $32, (%esi)

iter:
incl %esi
decl %ecx
cmp $0, %ecx
je fin
jmp verif


fin:
subl length, %esi
push %esi
call printf
addl $4, %esp
pop %ebx
pop %ebp
ret

