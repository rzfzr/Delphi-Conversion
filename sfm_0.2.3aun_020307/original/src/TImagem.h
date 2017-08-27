//---------------------------------------------------------------------------

#ifndef TImagemH
#define TImagemH
#include "TPixel.h"
#include "pilha1.txt"


class TImagem
{
   private:
   TPixel **img;
   int largura;
   int altura;
   int numeroCor;
   CPilha1 ppilha;
   public:

   TImagem(int p_largura, int p_altura);//TImagem(int p_largura, int p_altura)

   TImagem(String p_localizacao);

   TImagem();

   ~TImagem();

   void desalocar();

   void alocar(int p_largura, int p_altura);

   //MÉTODOS

   int pegarNumeroCor();

   int pegarAltura();

   int pegarLargura();

   //retorna o pixel (x,y)
   TPixel pegarPixel(int p_x, int p_y);//pegarPixel(int x, int y)

   void definirPixel(int p_x, int p_y, float p_valor);

   void definirPixel(int p_x, int p_y, TPixel p_valor);

   void somarValor(int p_x, int p_y, float p_valor);

   void somarValor(int p_x, int p_y, TPixel p_valor);

   void limparImagem();


   void tonsDeCinza();

   //abre uma imagem a partir de um arquivo
   void abrirImagem(String p_localizacao);

   //retorna a imagem no formato de BitMap
   Graphics::TBitmap* retornarImagem();//exibirImagem()

   void somatorioImagem(int p_raio);

   void media(int p_raio);//media(int p_raio)

   void mediana(int p_raio);
   
   void camadas(int p_ncamadas);

   void pseudoCor(TPixel inicio, TPixel fim);

   void sobel();

   void laplacian();

   void limiar(float limite);

   void inverter();

   TImagem* canalVermelho();

   TImagem* canalVerde();

   TImagem* canalAzul();

   void zoomIn();

   void zoomOut();

   void zoomLinear();

   void operator = (TImagem *p_entrada);

   void linha(int x0, int y0, int xn, int yn, TPixel cor);

   void CirculoMidpoint (int xCenter, int YCenter, int Rx, TPixel cor);

   void ellipseMidpoint (int xCenter, int yCenter, int Rx, int Ry, TPixel cor);

   void clarear(float fator);

   void escurecer(float fator);

   void dft2D(DynamicArray<DynamicArray<double> > &ri,
              DynamicArray<DynamicArray<double> > &ii,
              DynamicArray<DynamicArray<double> > &ro,
              DynamicArray<DynamicArray<double> > &io);

   void idft2D(DynamicArray<DynamicArray<double> > &ri,
              DynamicArray<DynamicArray<double> > &ii,
              DynamicArray<DynamicArray<double> > &ro,
              DynamicArray<DynamicArray<double> > &io);

   void dft1D(DynamicArray<double> &ri, DynamicArray<double> &ii, DynamicArray<double> &ro, DynamicArray<double> &io);

   void idft1D(DynamicArray<double> &ri, DynamicArray<double> &ii, DynamicArray<double> &ro, DynamicArray<double> &io);
   TImagem* TImagem::separacor(byte rcor, byte gcor, byte bcor,byte deltacor, byte obcor, byte bacor);
   TImagem* TImagem::separaobj(byte rcor, byte gcor, byte bcor, byte obcor, byte bacor);
   void TImagem::FloodFill4(int X, int Y, byte ro,byte go , byte b0, byte rs,byte gs , byte bs, int *cont);
   int TImagem::pintaPixel(int X, int Y, byte V, byte r,byte g, byte b, int *cont);
   int TImagem::pegaPixelVizinhoMaior(int X, int Y,int cor1,int cor2);
   };//class TImagem
//---------------------------------------------------------------------------
#endif
