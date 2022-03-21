.text
.globl syracuse_s_rec
.globl afficher
pair:
    movl $0, %edx
    divl %edi
    incl %ecx

    pushl %ecx
    pushl %eax

    call syracuse_s_rec

    popl %eax
    popl %ecx


syracuse_s_rec:
    pushl  %ebp
    movl   %esp, %ebp
    pushl %ebx
    movl 12(%esp), %eax
    movl 16(%esp), %ecx
    movl $2, %edi
    movl $3, %esi


# DEBUT COMPLETION

    pushl %eax
    pushl %ecx

    call afficher

    popl %ecx
    popl %eax

    pushl %eax
    movl $0, %edx
    divl %edi
    popl %eax

    cmpl $0, %edx
    je pair

    cmpl $1, %eax
    je retour

    mull %esi
    incl %eax
    incl %ecx

    pushl %ecx
    pushl %eax

    call syracuse_s_rec

    popl %eax
    popl %ecx
# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:
    popl %ebx
    leave
    ret
