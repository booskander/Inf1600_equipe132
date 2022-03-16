.data 
string1:
.ascii   "This is an example of a test for your function"
length:
.int 49
string2:
.ascii "test"

res:
.ascii "le resultat est %d"
.text
.globl scan


true:
    movl length,    %edx
    subl %ecx,      %edx
    dec %edi
    scasl
    jne back
    je fin
back:
    inc %edi
    jmp comparaison

scan: 
    push %ebp
    mov %esp,%ebp
    push %ebx
    movl length,    %ecx
    movl $string1,  %edi
    movl $string2,  %esi
    lodsl 

comparaison:
    cld
    repne scasb
    je true
    movl $0, %edx
fin:
    movl %edx,      %eax
    pop %ebx
    pop %ebp
    ret
    
