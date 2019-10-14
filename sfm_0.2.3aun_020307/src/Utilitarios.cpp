//---------------------------------------------------------------------------


#pragma hdrstop

#include "Utilitarios.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)
void QuickSort(float *entrada, int tamanho)
{
	qsort(entrada, 0, tamanho-1);
};

void qsort(float *entrada, int primeiro, int ultimo)
{
	float temp, pivo;
   int baixo, alto;

	baixo = primeiro;
	alto = ultimo;
	pivo = entrada[(primeiro + ultimo) / 2];

	do {
		while (entrada[baixo] < pivo)
			baixo++;

		while (entrada[alto] > pivo)
			alto--;

		if (baixo <= alto)
		{
			temp = entrada[baixo];
			entrada[baixo++] = entrada[alto];
			entrada[alto--] = temp;
		}
	} while (baixo <= alto);

	if (primeiro < alto)
		qsort(entrada, primeiro, alto);
	if (baixo < ultimo)
		qsort(entrada, baixo, ultimo);
};
