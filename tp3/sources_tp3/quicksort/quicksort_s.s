.data
CUTOFF:
.int 2
.text
.globl quicksort_s
.globl medianOfThree
.globl swapRefs
swap:
    pushl %eax
    pushl %ecx
    pushl %edx

    call swapRefs

    popl %edx
    popl %ecx
    popl %eax
    jmp while
    
    
quicksort_s:
    pushl %ebp
    movl %esp, %ebp
    pushl %ebx
    # DEBUT COMPLETION
    movl 12(%esp), %edx #tableau
    movl 16(%esp), %ecx #left
    movl 20(%esp), %eax #right

    pushl %ecx
    addl $CUTOFF, %ecx
    cmpl %ecx, %eax
    ja retour

    popl %ecx
    

    pushl %eax
    pushl %ecx
    pushl %edx

    call medianOfThree

    stosl 

    popl %edx
    popl %ecx
    popl %eax



    subl $4, %ecx

    pushl %ecx
    pushl %eax

while:
    addl $4, %ecx
    cmpl (%edx, %ecx, 1), %edi
    jb while

    
while2:
    subl $4, %eax
    cmpl (%edx, %eax, 1), %edi
    ja while2

    cmpl %ecx, %eax
    jb  swap

    popl %eax
    popl %ecx

break:
    
    pushl %eax
    

    pushl %eax
    pushl %ecx
    pushl %edx

    call swapRefs

    popl %edx
    popl %ecx
    popl %eax

    popl %eax

    movl %ecx, %ebx

    pushl %ecx

    subl $4, %ecx

    pushl %ecx
    pushl %ebx
    pushl %edx

    call quicksort_s

    popl %edx
    popl %ebx
    popl %ecx

    popl %ecx

    pushl %eax
    
    addl $4, %ecx

    pushl %ecx
    pushl %edx

    call quicksort_s

    popl %edx
    popl %ecx

# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
popl %ebx
leave
ret
