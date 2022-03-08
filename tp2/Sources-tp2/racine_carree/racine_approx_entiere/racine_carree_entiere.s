.text
.globl racine_carree_entiere

racine_carree_entiere:

	movl 4(%esp),%esi        # esi = n
	movl 8(%esp),%ecx        # ecx = iteration

	push %ebp
	mov %esp,%ebp
	push %ebx

	movl %esi, %eax

While_loop:
	cmp $0, %ecx
	je bye	
	sub $1, %ecx
	
	mov %al, %dl
	movl %esi, %eax

	div %dl
	mov $0, %ah
	add %dl, %al
	shr $1, %ax
	jmp While_loop

bye: 
	pop %ebx
	pop %ebp
	ret
