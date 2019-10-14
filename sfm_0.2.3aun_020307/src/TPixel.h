//---------------------------------------------------------------------------

#ifndef TPixelH
#define TPixelH
#include <vcl.h>
#include "Utilitarios.h"
#include "math.h"

#define RED(value)   (Byte) (value & 0xFF)
#define GREEN(value) (Byte) ((value >> 8) & 0xFF)
#define BLUE(value)  (Byte) ((value >> 16) & 0xFF)

class TPixel
{
   private:
   float r,g,b;

   public:
   TPixel(float p_entrada);

   TPixel(float p_R, float p_G, float p_B);

   TPixel();

   //MÉTODOS

   float pegarValor();

   float TPixel::pegarValorCinza();

   float pegarVermelho();
   float pegarVerde();
   float pegarAzul();

   void tonsDeCinza();

   //OPERADORES
   TPixel operator + (TPixel p_entrada);

   TPixel operator + (float p_entrada);

   TPixel operator - (TPixel p_entrada);

   TPixel operator - (float p_entrada);

   TPixel operator / (TPixel p_entrada);

   TPixel operator / (float p_entrada);

   TPixel operator * (TPixel p_entrada);

   TPixel operator * (float p_entrada);

   void operator += (TPixel p_entrada);

   void operator -= (TPixel p_entrada);

   void operator = (float p_entrada);

   TPixel operator ^ (int p_entrada);

   bool operator > (int p_entrada);

   bool operator < (int p_entrada);

   void raiz();

};//class TPixel

//---------------------------------------------------------------------------
#endif
 