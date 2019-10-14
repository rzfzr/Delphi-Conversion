//---------------------------------------------------------------------------
#include <vcl.h>
#ifndef TTokenizerH
#define TTokenizerH
//---------------------------------------------------------------------------

class TTokenizer
{
   private:
   String frase; //frase de entrada
   Char divisor; //caractere divisor
   String *tokens; //lista de tokens
   int indice; //token atual
   int qtde; //quantidade de tokens

   void separar();

   public:

   TTokenizer(String p_frase, Char p_divisor);
   TTokenizer();

   void reset();

   void proximo();

   void anterior();

   String retornarFrase();

   int count();

   String operator [] (int p_indice);

   bool puderAvancar();

   String token();
}; //fim TTokenizer


#endif
 