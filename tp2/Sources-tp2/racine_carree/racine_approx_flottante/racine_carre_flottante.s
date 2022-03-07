.data
n:
.float 12        # valeur de n
iteration:
.int 10          # nombre d'iterations
x:
.float 12
adr_2:
.float 2

.text
.globl racine_carre_flottante

racine_carre_flottante:

push %ebp               # prologue
mov %esp,%ebp
push %ebx

###
# Votre code ici
###

pop %ebx
pop %ebp
ret
