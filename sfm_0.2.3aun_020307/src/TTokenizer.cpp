//---------------------------------------------------------------------------


#pragma hdrstop

#include "TTokenizer.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)


void TTokenizer::separar()
{
   qtde = 1;
   indice = 0;

   for(int i = 1; i < (frase.Length()+1); i++)
   {
   	if(frase[i] == divisor)
      	qtde++;
   };

   tokens = (String *) calloc(qtde, sizeof(String));

	String buffer = "";
	int temp = 0;

   for(int i = 1; i < (frase.Length()+1); i++)
   {
   	if(frase[i] == divisor)
		{
			tokens[temp] = buffer;
         temp++;
         buffer = "";
         continue;
      };
      buffer += frase[i];
      if(i == frase.Length())
      {
      	tokens[temp] = buffer;
      };
   };
};

TTokenizer::TTokenizer(String p_frase, Char p_divisor)
{
	frase = p_frase;
   divisor = p_divisor;
   separar();
};

TTokenizer::TTokenizer()
{
};

void TTokenizer::reset()
{
	indice = 0;
};

void TTokenizer::proximo()
{
	if(indice < (qtde))
		indice++;
};

void TTokenizer::anterior()
{
	if(indice > 0)
   	indice--;
};

String TTokenizer::retornarFrase()
{
	return(frase);
};

int TTokenizer::count()
{
	return(qtde);
};

String TTokenizer::operator [] (int p_indice)
{
	if((p_indice < qtde) && (p_indice >= 0) )
		return(tokens[p_indice]);
   else
   	return("-1");
};

bool TTokenizer::puderAvancar()
{
	if(indice < qtde)
   	return(true);
   else
   	return(false);
};

String TTokenizer::token()
{
	return(tokens[indice]);
};

