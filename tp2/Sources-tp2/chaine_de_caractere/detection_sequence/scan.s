.data 
string1:
.ascii "skander"         #"This is an example of a text for your function"
length:
.int 49
string2:
.ascii "z"

res:
.ascii "le resultat est %d"
.text
.globl scan

true:
movl $0, %eax
jmp fin

scan: 
push %ebp
mov %esp,%ebp
push %ebx
movl $length, %ecx
movl $string1, %edi
movl $string2, %eax

comparaison:
    cld
    repne scasl
    je true

fin:
   
push %eax
push $res
call printf
addl $8, %esp
pop %ebx
pop %ebp
ret
