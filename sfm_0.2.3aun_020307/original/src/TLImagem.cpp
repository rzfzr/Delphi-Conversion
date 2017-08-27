//---------------------------------------------------------------------------


#pragma hdrstop

#include "TLImagem.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

TLImagem::TLImagem(String p_localizacao)
{
	Byte *ptr;
	Graphics::TBitmap* temp = new Graphics::TBitmap();

	temp->Dormant();

	temp->LoadFromFile(p_localizacao);

	altura = temp->Height;
	largura = temp->Width;

	if (temp->PixelFormat == pf24bit)
   {
   	profundidade = numeroCor = 3;
      imgs = (TImagem **) calloc(3,sizeof(TImagem*));
      imgs[0] = new TImagem(altura, largura);
      imgs[1] = new TImagem(altura, largura);
      imgs[2] = new TImagem(altura, largura);
      for(int x = 0; x < altura; x++)
		{
			ptr = (Byte *) temp->ScanLine[x];

			for(int y = 0; y < largura; y++)
			{
				imgs[0]->definirPixel(x, y, ptr[3*y+2]);
            imgs[1]->definirPixel(x, y, ptr[3*y+1]);
            imgs[2]->definirPixel(x, y, ptr[3*y]);
			};//largura
		};//altura
   }
   else
   {
   	profundidade = numeroCor = 1;

      imgs = (TImagem **) calloc(1,sizeof(TImagem*));
      imgs[0] = new TImagem(altura, largura);
    	temp->PixelFormat = pf24bit;
		for(int x = 0; x < altura; x++)
		{
			ptr = (Byte *) temp->ScanLine[x];

			for(int y = 0; y < largura; y++)
			{
				imgs[0]->definirPixel(x, y, ptr[3*y]);
			};//largura
		};//altura
   };

	temp->FreeImage();
	delete temp;
};

TLImagem::TLImagem(int p_altura, int p_largura, int p_profundidade)
{
	largura = p_largura;
	altura = p_altura;
   numeroCor = profundidade = p_profundidade;

	imgs = (TImagem **) calloc(profundidade,sizeof(TImagem*));

	for(int i = 0; i < profundidade; i++)
	{
		imgs[i] = new TImagem(altura, largura);
	};
};

TLImagem::TLImagem()
{
	largura = altura = profundidade = numeroCor = 0;
};

TLImagem::~TLImagem()
{
	for(int i = 0; i < profundidade; i++)
	{
		delete imgs[i];
	};
   delete[] imgs;
};

//MÉTODOS

int TLImagem::pegarNumeroCor()
{
	return(numeroCor);
};

int TLImagem::pegarAltura()
{
	return(altura);
};

int TLImagem::pegarLargura()
{
	return(largura);
};

int TLImagem::pegarProfundidade()
{
	return(profundidade);
};

TImagem* TLImagem::pegarImagem(int p_profundidade)
{
	return(imgs[p_profundidade]);
};

TPixel TLImagem::pegarPixel(int p_x, int p_y, int p_profundidade)
{
	return(imgs[p_profundidade]->pegarPixel(p_x,p_y));
};

void TLImagem::definirPixel(int p_x, int p_y, int p_profundidade, float p_valor)
{
	imgs[p_profundidade]->definirPixel(p_x, p_y,p_valor);
};

void TLImagem::definirPixel(int p_x, int p_y, int p_profundidade, TPixel p_valor)
{
	imgs[p_profundidade]->definirPixel(p_x, p_y,p_valor);
};


void TLImagem::somarValor(int p_x, int p_y, int p_profundidade, float p_valor)
{
	imgs[p_profundidade]->somarValor(p_x, p_y, p_valor);
};

void TLImagem::somarValor(int p_x, int p_y, int p_profundidade, TPixel p_valor)
{
	imgs[p_profundidade]->somarValor(p_x, p_y, p_valor);
};

void TLImagem::limparImagem()
{
	for(int i = 0; i < profundidade; i++)
	{
		imgs[i]->limparImagem();
	};
};


void TLImagem::somatorioImagem(int p_raio)
{
	for(int i = 0; i < profundidade; i++)
	{
		imgs[i]->somatorioImagem(p_raio);
	};
};//somatorioImagem(int p_raio)


void TLImagem::media(int p_raio)
{
	for(int i = 0; i < profundidade; i++)
		imgs[i]->media(p_raio);
};//media(int p_raio)

void TLImagem::mediana(int p_raio)
{
	for(int i = 0; i < profundidade; i++)
		imgs[i]->mediana(p_raio);
};

void TLImagem::camadas(int p_ncamadas)
{
	for(int i = 0; i < profundidade; i++)
		imgs[i]->camadas(p_ncamadas);
};

Graphics::TBitmap* TLImagem::retornarImagem()
{
	Byte *ptr;
	Graphics::TBitmap *saida = new Graphics::TBitmap();
   float temp;

	saida->Width = largura;
	saida->Height = altura;
	saida->PixelFormat = pf24bit;

   if(numeroCor == 3)
		for(int x = 0; x < altura; x++)
		{
			ptr = (Byte *) saida->ScanLine[x];

			for(int y = 0; y < largura; y++)
			{
				ptr[3*y] = pegarPixel(x,y,2).pegarValor();
				ptr[3*y+1] = pegarPixel(x,y,1).pegarValor();
				ptr[3*y+2] = pegarPixel(x,y,0).pegarValor();
			};
		};

   if(numeroCor == 1)
		for(int x = 0; x < altura; x++)
		{
			ptr = (Byte *) saida->ScanLine[x];

			for(int y = 0; y < largura; y++)
			{
				temp = pegarPixel(x,y,0).pegarValor();
				ptr[3*y] = temp;
				ptr[3*y+1] = temp;
				ptr[3*y+2] = temp;
			};
		};
	return(saida);
};

void TLImagem::pseudoCor() //gera pseuco-cores baseados no espectro do arco-íris
{
	float temp;
	float red, green, blue;
   TImagem *ponteiro = imgs[0];

   imgs = (TImagem **) calloc(3, sizeof(TImagem *));
   imgs[0] = ponteiro;
   imgs[1] = new TImagem(altura, largura);
   imgs[2] = new TImagem(altura, largura);

   numeroCor = profundidade = 3;
//	pseudoCor(TPixel(0,0,0), TPixel(255,255,255));



   for(int x = 0; x < altura; x++) //pegar a maior intensidade e a menor
   {
   	for(int y = 0; y < largura; y++)
      {
			temp = pegarPixel(x, y, 0).pegarValor();
         if(temp >= 192)
         {
         	temp -= 191;

         	red = 255;
            green = 256 - (4 * temp);
            blue = 0;
         }
         else
         {
         	if(temp >= 128)
            {
            	temp -= 127;

         		red = (4 * temp);
               if(red > 255)
               	red = 255;
            	green = 255;
            	blue = 0;
            }
            else
            {
            	if(temp >= 64)
               {
               	temp -= 63;

         			red = 0;
            		green = 255;
            		blue = 256 - (4 * temp);
               }//64
               else
               {
               	red = 0;
            		green = (4 * temp);
                  if(green > 255)
                  	green = 255;
            		blue = 255;
               };//resto
            };//128
         };//192
         definirPixel(x, y, 0, red);
         definirPixel(x, y, 1, green);
         definirPixel(x, y, 2, blue);
//         img[x][y] = TPixel(red, green, blue);
      };//linha
   };//coluna
};

void TLImagem::operator = (TLImagem *p_entrada)
{
	altura = p_entrada->altura;
   largura = p_entrada->largura;
   profundidade = numeroCor = p_entrada->profundidade;

   imgs = (TImagem **) calloc(profundidade, sizeof(TImagem *));

   for(int i = 0; i < profundidade; i++)
   {
   	imgs[i] = new TImagem();
	   *(imgs[i]) = p_entrada->pegarImagem(i);
   };
};

void TLImagem::luminancia()
{
	if(numeroCor == 3)
   {
   	profundidade = numeroCor = 1;
		float mediaP; //média ponderada
   	float wR = 0.3086, wG = 0.6094, wB = 0.0820; //pesos

	   for(int x = 0; x < altura; x++) //pegar a maior intensidade e a menor
	   	for(int y = 0; y < largura; y++)
		      definirPixel(x,y,0, wR*pegarPixel(x,y,0).pegarValor() + wG*pegarPixel(x,y,1).pegarValor() + wB*pegarPixel(x,y,2).pegarValor());

      TImagem *ponteiro = imgs[0];
      imgs[1]->desalocar();
      imgs[2]->desalocar();
      imgs = (TImagem **) calloc(1, sizeof(TImagem *));
      imgs[0] = ponteiro;
   };
};

void TLImagem::equalizarHistograma(int borda)
{
	for(int i = 0; i < profundidade; i++)
   	imgs[i]->equalizarHistograma(borda);
};
