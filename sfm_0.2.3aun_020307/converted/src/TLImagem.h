//---------------------------------------------------------------------------

#ifndef TLImagemH
#define TLImagemH

#include "TImagem.h"
//---------------------------------------------------------------------------
class TLImagem
{
   private:
   TImagem **imgs;
   int largura;
   int altura;
   int profundidade;
   int numeroCor;

   public:

   TLImagem(String p_arquivo);

   TLImagem(int p_altura, int p_largura, int p_profundidade);

	TLImagem();

   ~TLImagem();

   //MÉTODOS

   int pegarNumeroCor();

   int pegarAltura();

   int pegarLargura();

   int pegarProfundidade();

   TImagem* pegarImagem(int p_profundidade);

   TPixel pegarPixel(int p_x, int p_y, int p_profundidade);

   void definirPixel(int p_x, int p_y, int p_profundidade, float p_valor);

   void definirPixel(int p_x, int p_y, int p_profundidade, TPixel p_valor);

   void somarValor(int p_x, int p_y, int p_profundidade, float p_valor);

   void somarValor(int p_x, int p_y, int p_profundidade, TPixel p_valor);

   void limparImagem();

   void somatorioImagem(int p_raio);//somatorioImagem(int p_raio)

   void media(int p_raio);//media(int p_raio)

   void mediana(int p_raio);   

	void camadas(int p_ncamadas);

   Graphics::TBitmap* retornarImagem();

   void pseudoCor();

	void operator = (TLImagem *p_entrada);

	void luminancia();

	void equalizarHistograma(int borda = 0);   

};//class TLImagem

#endif
