.data
string1:
.ascii "testor"
length1:
.int 6
string2:
.ascii "tesa"
length2:
.int 4

.text
.globl comparaison
sup: 
    movl $1,    %eax
    jmp fin

inf:
    movl $255,  %eax
    jmp fin


case:
    decl %esi
    decl %edi
    cmpsb
    jb inf
    ja sup

comparaison:
    push %ebp
    movl %esp, %ebp
    movl $string1, %esi
    movl $string2, %edi
    movl length2, %ecx
    
check:
    cld
    repe cmpsb
    jne case

egl:
    movl $0,    %eax
    jmp fin
fin:
    leave
    ret

