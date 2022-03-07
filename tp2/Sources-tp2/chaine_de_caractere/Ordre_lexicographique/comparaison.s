.data
string1:
.ascii "testor"
length1:
.int 6
string2:
.ascii "tesw"
length2:
.int 4

.text
.globl comparaison

movl length2, %ecx
movl string1, %esi
movl string2, % edi

comparaison :
    movb (%esi), edx 
    cmp %edx,    (%edi)
    je iter
    ja sup
    jb inf
      
iter:
    cmp $0,     %ecx
    je fin
    incl    %esi
    incl    %edi
    decl    %ecx

sup: 
movl $1,    %eax
jmp fin

inf:
movl $255,  %eax
jmp fin

egl:
movl $0,    %eax
jmp fin

fin:
    ret

