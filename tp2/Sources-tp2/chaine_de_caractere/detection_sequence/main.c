#include <stdio.h>
#include<stdint.h>

extern int32_t scan(void);

int main(void) {
	int32_t a = scan();
	if (a==0) printf("Sequence de caractere non trouvee\n");
	else printf("Sequence de caractere trouvee a partir de la position %d si l'on commence a compter a partir de 1\n",a);
	return 0;
}
