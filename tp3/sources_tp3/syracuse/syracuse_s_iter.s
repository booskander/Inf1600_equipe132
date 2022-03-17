.text
.globl syracuse_s_iter
.globl afficher
print:
    pushl   %eax
    push    %ecx

    call afficher

    popl    %ecx
    popl    %eax
    jmp next

pair:
    popl %eax 
    divl %ebx
    incl %ecx
    jmp while



syracuse_s_iter:
    pushl   %ebp
    movl    %esp, %ebp
    pushl %ebx

    movl 12(%esp),   %eax
    movl $0,        %ecx

while:
    cmpl $1, %eax
    je fin

    call print

next:

    movl $2, %ebx

    push %eax

    movl $0, %edx
    divl %ebx

    cmpl $0,    %edx

    je pair

    popl %eax 

    movl $3, %ebx

    mull %ebx

    incl %eax

    incl %ecx

    jmp while

fin:
    pushl   %eax
    push    %ecx

    call afficher

    popl    %ecx
    popl    %eax

    




# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:
popl %ebx
leave
ret
