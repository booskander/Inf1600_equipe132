.text
.globl syracuse_s_rec
.globl afficher
pair:
    incl %ecx
    divl %ebx

    jmp next


syracuse_s_rec:
    pushl  %ebp
    movl   %esp, %ebp
    movl 12(%esp), %eax
    movl 16(%esp), %ecx
    pushl %eax
    pushl %ecx

# DEBUT COMPLETION
syracuse:
    call afficher

    cmpl $1, %eax
    je retour

    popl %eax
    popl %ecx

    pushl %eax

    movl $2, %ebx
    movl $0, %edx
    divl %ebx

    popl %eax

    cmpl $0, %edx
    je pair

    movl $3, %ebx
    mull %ebx
    incl %eax

    incl %ecx
next:
    pushl %eax
    pushl %ecx

    jmp syracuse



# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
    leave
    ret
