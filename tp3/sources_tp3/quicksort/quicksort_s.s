.data
CUTOFF:
.int 2
.text
.globl quicksort_s
.globl medianOfThree
quicksort_s:
    pushl %ebp
    movl %esp, %ebp
    pushl %ebx
    # DEBUT COMPLETION
    movl 8(%esp), %eax
    movl 12(%esp), %ebx
    movl 16(esp), %ecx

    pushl %ebx

    addl $CUTOFF, %ebx
    cmpl %ecx, %ebx
    ja retour

    popl %ebx

    pushl %eax

    pushl %eax
    pushl %ebx
    pushl %ecx

    call medianOfThree

    stosl
    movl %eax, %esi
    popl %ecx
    popl %ebx
    popl %eax

    popl %eax

    

while:
    addl %ecx, %edi
    addl %ebx, %esi
    decl %esi
    pushl %eax
    while1:
        incl %eax
        cmpl %edi, (%eax)
        jnb while1
    popl %eax
    pushl %eax
    while2:
        decl %eax
        cmpl %esi, (%eax)
        jna while2
    popl %eax

    cmpl %edi, %esi
    jnb break

    decl %edi

    jmp while










# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
popl %ebx
leave
ret
