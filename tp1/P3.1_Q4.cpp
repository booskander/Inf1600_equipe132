#pragma once
#include <stdio.h>
#include <string.h>

void main() {
	//data
	int* data = new int(26);
	int* data_tmp = new int(0);
	int* len = new int(0);
	int* len_tmp = new int(0);
	int* adder = new int(1);
	int* res = new int(0);
	int Acc = 0;

	//text
	Acc = *data;
	*data_tmp = *data;
	//get_length
	while (Acc != 0) {
		Acc = int(Acc / 2);
		*data_tmp = Acc;
		Acc = *len;
		Acc += *adder;
		*len = Acc;
		Acc = *data_tmp;
	}
	//deep_copy
	Acc = *len;
	*len_tmp = Acc;
	Acc = *data;
	*data_tmp = Acc;
	//shift_L
	Acc = *len;
	Acc -= *adder;
	while (Acc != 0) {
		*len = Acc;
		Acc = *data_tmp;
		Acc = int(Acc / 2);
		*data_tmp = Acc;
		Acc = *len;
		Acc -= *adder;
	}
	//shift_R
	Acc = *len_tmp;
	Acc -= *adder;
	while (Acc != 0) {
		*len_tmp = Acc;
		Acc = *data_tmp;
		Acc = int(Acc / 2);
		*data_tmp = Acc;
		Acc = *len_tmp;
		Acc -= *adder;
	}
	//fin
	Acc = *data_tmp;
	Acc -= *adder;
	if (Acc == 0) {
		Acc += *adder;
		*res = *adder;
	}
	printf("La valeur finale de RES est %d", *res);
	//liberate the memory
	delete data;
	delete data_tmp;
	delete len;
	delete len_tmp;
	delete adder;
	delete res;
}

