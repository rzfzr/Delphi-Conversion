//---------------------------------------------------------------------------


#pragma hdrstop

#include "TPixel.h"
//---------------------------------------------------------------------------

#pragma package(smart_init)

TPixel::TPixel(float p_entrada)
{
   r = RED((int) p_entrada);
   g = GREEN((int) p_entrada);
   b = BLUE((int) p_entrada);
};

TPixel::TPixel(float p_R, float p_G, float p_B)
{
   r = p_R;
   g = p_G;
   b = p_B;
};

TPixel::TPixel()
{
   r = g = b = 0;
};

   //MÉTODOS

float TPixel::pegarValor()
{
   return(RGB((int) r, (int) g, (int) b));
};

float TPixel::pegarValorCinza()
{
   if((r==g)&&(g==b))
   {
      return(r);
   }
   else
      return(-1); //caso o pixel não esteja em algum tom de cinza
};

float TPixel::pegarVermelho()
{
   return(r);
};

float TPixel::pegarVerde()
{
   return(g);
};

float TPixel::pegarAzul()
{
   return(b);
};


void TPixel::tonsDeCinza()
{
   float media;

   media = (r + g + b)/3;
   r = g = b = media;
};

   //OPERADORES
TPixel TPixel::operator + (TPixel p_entrada) //operador de +
{
   TPixel temp = TPixel();

   temp.r = r + p_entrada.r;
   temp.g = g + p_entrada.g;
   temp.b = b + p_entrada.b;

   return(temp);
};

TPixel TPixel::operator + (float p_entrada) //operador de + com float
{
   TPixel temp = TPixel(p_entrada, p_entrada, p_entrada);

   return(temp+*this);
};

TPixel TPixel::operator - (TPixel p_entrada) //operador de -
{
   TPixel temp = TPixel();

   temp.r = r - p_entrada.r;
   temp.g = g - p_entrada.g;
   temp.b = b - p_entrada.b;

      return(temp);
};

TPixel TPixel::operator - (float p_entrada) //operador de - com float
{
   TPixel temp = TPixel(p_entrada, p_entrada, p_entrada);

   return(*this-temp);
};

TPixel TPixel::operator / (TPixel p_entrada)
{
   TPixel temp = TPixel();

   temp.r = r / p_entrada.r;
   temp.g = g / p_entrada.g;
   temp.b = b / p_entrada.b;

   return(temp);
};

TPixel TPixel::operator / (float p_entrada) //operador de /
{
   TPixel temp = TPixel();

   temp.r = r / p_entrada;
   temp.g = g / p_entrada;
   temp.b = b / p_entrada;

   return(temp);
};

TPixel TPixel::operator * (TPixel p_entrada)
{
   TPixel temp = TPixel();

   temp.r = r * p_entrada.r;
   temp.g = g * p_entrada.g;
   temp.b = b * p_entrada.b;

   return(temp);
};

TPixel TPixel::operator * (float p_entrada) //operador de *
{
   TPixel temp = TPixel();

   temp.r = r * p_entrada;
   temp.g = g * p_entrada;
   temp.b = b * p_entrada;

   return(temp);
};

void TPixel::operator += (TPixel p_entrada) //operador de +=
{
   *this = *this + p_entrada; //faz a soma de dois TPixel e atribui o resultado para *this
};

void TPixel::operator -= (TPixel p_entrada) //operador de +=
{
   *this = *this - p_entrada; //faz a subtracao de dois TbPixel e atribui o resultado para *this
};

void TPixel::operator = (float p_entrada)
{
   r = RED((int) p_entrada);
   g = GREEN((int) p_entrada);
   b = BLUE((int) p_entrada);
};

TPixel TPixel::operator ^ (int p_entrada)
{
   TPixel temp = *this;
   if(p_entrada == 0) temp = TPixel(1);

   for(int i = 1; i < p_entrada; i++)
   {
      temp = temp * temp;
   };

   return(temp);
};

bool TPixel::operator > (int p_entrada)
{
   return(( (r > p_entrada) || (g > p_entrada) || (b > p_entrada) ));
};

bool TPixel::operator < (int p_entrada)
{
   return(( (r < p_entrada) || (g < p_entrada) || (b < p_entrada) ));
};


void TPixel::raiz()
{
   r = sqrt(r);
   g = sqrt(g);
   b = sqrt(b);
};
