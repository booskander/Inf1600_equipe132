.data
CUTOFF:
.int 2
.text
.globl quicksort_s
.globl medianOfThree
.globl swapRefs
back:
    popl %ebx
    jmp retour
quicksort_s:
    pushl %ebp
    movl %esp, %ebp
    pushl %ebx
    # DEBUT COMPLETION
    movl 8(%esp), %eax #tabl
    movl 12(%esp), %ebx # left
    movl 16(%esp), %ecx # right

    pushl %ebx

    addl $CUTOFF, %ebx
    cmpl %ecx, %ebx
    ja back

    popl %ebx

    pushl %eax

    pushl %eax
    pushl %ebx
    pushl %ecx

    call medianOfThree

    stosl
    popl %ecx
    popl %ebx
    popl %eax

    popl %eax

    movl %eax, %esi

    addl %ebx, %eax

    addl %ecx, %esi
    decl %esi

    
while:
    pushl %eax
    while1:
        incl %eax
        cmpl %edi, (%eax)
        jnb while1
    popl %eax
    pushl %esi
    while2:
        decl %esi
        cmpl %edi, (%esi)
        jna while2
    popl %esi

    cmpl %eax, %esi
    jnb break

    decl %edi

    jmp while










# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
popl %ebx
leave
ret
