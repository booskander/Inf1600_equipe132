.text
.globl syracuse_s_rec
.globl afficher
pair:
    incl %ecx
    divl %ebx

    jmp syracuse


syracuse_s_rec:
    pushl  %ebp
    movl   %esp, %ebp
    pushl %ebx
    movl 12(%esp), %eax
    movl 16(%esp), %ecx

# DEBUT COMPLETION
syracuse:
    push %eax
    push %ecx

    call afficher

    popl %ecx
    popl %eax

    cmpl $1, %eax
    je retour

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

    jmp syracuse





    

# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
    popl %ebx
    leave
    ret
