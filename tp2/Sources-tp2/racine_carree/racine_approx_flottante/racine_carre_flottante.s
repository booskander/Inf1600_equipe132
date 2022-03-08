.data
n: .float 12        # valeur de n
iteration: .int 10          # nombre d'iterations
x: .float 12
adr_2: .float 2

.text
.globl racine_carre_flottante

racine_carre_flottante:

	push %ebp               # prologue
	mov %esp,%ebp
	push %ebx

	movl iteration, %ecx

While_loop: 
	cmpl $0 , %ecx
	je Bye
	flds n
	flds x
	fdivrp
	flds x
	faddp
	flds adr_2
	fdivrp
	decl %ecx
	fstps x
	jmp While_loop

Bye:
	flds x
	call printf
	leave
	ret
