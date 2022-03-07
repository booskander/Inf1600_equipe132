.text
.globl racine_carree_entiere

racine_carree_entiere:

movl 4(%esp),%esi        # esi = n
movl 8(%esp),%ecx        # ecx = iteration

push %ebp
mov %esp,%ebp
push %ebx

###
# Votre code ici
###

pop %ebx
pop %ebp
ret
