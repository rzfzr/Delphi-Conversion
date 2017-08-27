//---------------------------------------------------------------------------


#pragma hdrstop

#include "TImagem.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

TImagem::TImagem(int p_largura, int p_altura)
{
	largura = p_largura;
	altura = p_altura;
	alocar(largura, altura);
};//TImagem(int p_largura, int p_altura)


TImagem::TImagem(String p_localizacao)
{
	abrirImagem(p_localizacao);
//	numeroCor = 1;
};

TImagem::TImagem()
{
	largura = altura = 0;
};

TImagem::~TImagem()
{
	desalocar();
};


void TImagem::desalocar()
{
	for(int i = 0; i < largura; i++)
	{
		delete[] img[i];
	};
	delete[] img;
};


void TImagem::alocar(int p_largura, int p_altura)
{
	img = (TPixel **) calloc(p_largura,sizeof(TPixel *));

	for(int i = 0; i < p_largura; i++)
	{
		img[i] = (TPixel *) calloc(p_altura,sizeof(TPixel));
	};
};

//MÉTODOS

int TImagem::pegarNumeroCor()
{
	return(numeroCor);
};

int TImagem::pegarAltura()
{
	return(altura);
};

int TImagem::pegarLargura()
{
	return(largura);
};

//retorna o pixel (x,y)
TPixel TImagem::pegarPixel(int p_x, int p_y)
{
	if((p_x <= largura)&&(p_y <= altura)){
		return(img[p_x][p_y]);
	}
	else
	{
		return(-1);
	};
};//pegarPixel(int x, int y)

void TImagem::definirPixel(int p_x, int p_y, float p_valor)
{
	if((p_x <= largura)&&(p_y <= altura)){
		img[p_x][p_y] = p_valor;
	};
};

void TImagem::definirPixel(int p_x, int p_y, TPixel p_valor)
{
	if((p_x < largura)&&(p_y < altura)&&p_y>=0&&p_x>=0){
		img[p_x][p_y] = p_valor;
	};
};

void TImagem::somarValor(int p_x, int p_y, float p_valor)
{
	img[p_x][p_y] = img[p_x][p_y] + p_valor;
};

void TImagem::somarValor(int p_x, int p_y, TPixel p_valor)
{
	img[p_x][p_y] = img[p_x][p_y] + p_valor;
};

void TImagem::limparImagem()
{
	for(int x = 0; x < largura; x++)
	{
		for(int y = 0; y < altura; y++)
		{
			img[x][y] = 0;
		};
	};
};


void TImagem::tonsDeCinza()
{
	for(int x = 0; x < largura; x++)
	{
		for(int y = 0; y < altura; y++)
		{
			img[x][y].tonsDeCinza();
		};
	};
};

//abre uma imagem a partir de um arquivo
void TImagem::abrirImagem(String p_localizacao)
{
	Byte *ptr;
	Graphics::TBitmap* temp = new Graphics::TBitmap();

	temp->Dormant();

	temp->LoadFromFile(p_localizacao);

//	if((altura+largura) > 0) desalocar();

	altura = temp->Height;
	largura = temp->Width;

	alocar(largura, altura);
	if (temp->PixelFormat == pf24bit) numeroCor = 3; else numeroCor = 1;

	temp->PixelFormat = pf24bit;

	for(int y = 0; y < altura; y++)
	{
		ptr = (Byte *) temp->ScanLine[y];

		for(int x = 0; x < largura; x++)
		{
			definirPixel(x, y, RGB(ptr[3*x+2], ptr[3*x+1],ptr[3*x]));
		};//largura
	};//altura
	temp->FreeImage();
	delete temp;
};

//retorna a imagem no formato de BitMap
Graphics::TBitmap* TImagem::retornarImagem()
{
	int temp;
	Byte *ptr;
	Graphics::TBitmap *saida = new Graphics::TBitmap();


	saida->Width = largura;
	saida->Height = altura;
	saida->PixelFormat = pf24bit;

	for(int y = 0; y < altura; y++)
	{
		ptr = (Byte *) saida->ScanLine[y];

		for(int x = 0; x < largura; x++)
		{
			temp = pegarPixel(x,y).pegarValor();
			ptr[3*x] = BLUE(temp);
			ptr[3*x+1] = GREEN(temp);
			ptr[3*x+2] = RED(temp);
		};
	};
	return(saida);
};//exibirImagem()


void TImagem::somatorioImagem(int p_raio)
{
	int qtde;
	int calculo;
	TPixel sum = TPixel();

	calculo = (2*p_raio) + 1;
	qtde = calculo*calculo;

	TImagem *temp = new TImagem(largura, altura);

	for(int x = p_raio; x < largura-p_raio; x++)
	{
		for(int y = p_raio; y < altura-p_raio; y++)
		{
			sum = TPixel();
			for(int j = 0; j < qtde; j++)
			{
				sum += pegarPixel((x-p_raio)+(j%calculo),(y-p_raio)+(j/calculo));
			};
			temp->definirPixel(x,y,sum);
		};
	};
   desalocar();
	*this = *temp;
};

void TImagem::media(int p_raio)
{
	int denom;

	somatorioImagem(p_raio);

	denom = (2*p_raio) + 1;
	denom *= denom;

	for(int x = p_raio; x < largura-p_raio; x++)
	{
		for(int y = p_raio; y < altura-p_raio; y++)
		{
			definirPixel(x,y,(pegarPixel(x,y)/denom));
		};//y
	};//x
};//media(int p_raio)

//funciona somente para imagens em tons de cinza
void TImagem::mediana(int p_raio)
{
	int tamanho, calculo;
   float *valores, meio;
	TImagem *temp = new TImagem(largura, altura);

   calculo = (2*p_raio) + 1;
   tamanho = calculo*calculo;

   valores = (float *) calloc(tamanho, sizeof(float));

	for(int x = p_raio; x < largura-p_raio; x++)
	{
		for(int y = p_raio; y < altura-p_raio; y++)
		{
			for(int j = 0; j < tamanho; j++)
			{
				valores[j] = pegarPixel((x-p_raio)+(j%calculo),(y-p_raio)+(j/calculo)).pegarValorCinza();
			};
         QuickSort(valores, tamanho);
			meio = valores[(tamanho-1)/2];
			temp->definirPixel(x,y,TPixel(meio, meio, meio));
		};
	};

   desalocar();
	*this = *temp;
};

void TImagem::camadas(int p_ncamadas)
{
	float div = (float)255.0/(float)p_ncamadas;
   float *niveis = (float *) calloc(p_ncamadas, sizeof(float));
	float temp;

   for(int i = 0; i < p_ncamadas; i++)
   {
   	niveis[i] = ((i*div) + (div/2.0));
   };

   for(int x = 0; x < largura; x++)
   {
   	for(int y = 0; y < altura; y++)
      {
      	temp = niveis[(int)floor(img[x][y].pegarValorCinza()/div)];
      	img[x][y] = TPixel(temp, temp, temp);
      };
   };

   delete[] niveis;
};

void TImagem::pseudoCor(TPixel inicio, TPixel fim)
{
	int start_color_red, start_color_green, start_color_blue;
   int end_color_red, end_color_green, end_color_blue;
   int min_intensity, max_intensity, intensity_difference;
	float red_slope, green_slope, blue_slope, normalized_value;
   int red_delta, green_delta, blue_delta;
   int result_color_red, result_color_green, result_color_blue;

   int temp;

	start_color_red = inicio.pegarVermelho();
   start_color_green = inicio.pegarVerde();
   start_color_blue  = inicio.pegarAzul();

   end_color_red   = fim.pegarVermelho();
   end_color_green = fim.pegarVerde();
   end_color_blue  = fim.pegarAzul();

   min_intensity = 255;
   max_intensity = 0;

   for(int x = 0; x < largura; x++) //pegar a maior intensidade e a menor
   {
   	for(int y = 0; y < altura; y++)
      {
      	temp = (int) img[x][y].pegarValorCinza();
      	if(temp > max_intensity) max_intensity = temp;
         if(temp < min_intensity) min_intensity = temp;
      };
   };

	intensity_difference = max_intensity - min_intensity;

   if (end_color_red > start_color_red)
     {
       red_slope = 1.0;
       red_delta = end_color_red - start_color_red;
     }
   else
     {
       red_slope = -1.0;
       red_delta = start_color_red - end_color_red;
     }

   if (end_color_green > start_color_green)
     {
       green_slope = 1.0;
       green_delta = end_color_green - start_color_green;
     }
   else
     {
       green_slope = -1.0;
       green_delta = start_color_green - end_color_green;
     }

   if (end_color_blue > start_color_blue)
     {
       blue_slope = 1.0;
       blue_delta = end_color_blue - start_color_blue;
     }
   else
     {
       blue_slope = -1.0;
       blue_delta = start_color_blue - end_color_blue;
     }

   for(int x = 0; x < largura; x++) //pegar a maior intensidade e a menor
   {
   	for(int y = 0; y < altura; y++)
      {
      	temp = (int) img[x][y].pegarValorCinza();
      	normalized_value = (float)(temp - min_intensity) /
                               ((float) intensity_difference);
         result_color_red = start_color_red + (red_slope *
                                normalized_value * red_delta);
         result_color_green = start_color_green + (green_slope *
                                normalized_value * green_delta);
         result_color_blue = start_color_blue + (blue_slope *
                                normalized_value * blue_delta);

         if(result_color_red > 255) result_color_red = 255;
         if(result_color_red < 0) result_color_red = 0;

         if(result_color_green > 255) result_color_green = 255;
         if(result_color_green < 0) result_color_green = 0;

         if(result_color_blue > 255) result_color_blue = 255;
         if(result_color_blue < 0) result_color_blue = 0;

         img[x][y] = TPixel(result_color_red, result_color_green, result_color_blue);
      };
   };

};

void TImagem::sobel()
{
   TImagem *S = new TImagem(largura, altura);
   TPixel v, h, s;

   int GH[9] =   {-1, 0, 1, //cria a matriz horizontal
                  -2, 0, 2,
                  -1, 0, 1};
   int GV[9] =   {-1, -2, -1, //cria a matriz vertical
                  0,  0,  0,
                  1,  2,  1};

   for(int x = 1; x < (largura-1); x++)
   {
      for(int y = 1; y < (altura-1); y++)
      {
         v = 0;
         h = 0;
         for(int i = 0; i < 9 ; i++)
         {
            v += img[(x -1 + (i%3))][(y -1 + (i/3))]*GV[i];
            h += img[(x -1 + (i%3))][(y -1 + (i/3))]*GH[i];
         };
         s = (v^2) + (h^2);
         s.raiz();
         S->definirPixel(x, y, s);
      };
   };
   this->img = S->img;
};


void TImagem::laplacian()
{
   TImagem *S = new TImagem(largura, altura);
   TPixel h;

   int GH[9] =   {0, -1, 0, //cria a matriz horizontal
                  -1, 4, -1,
                  0, -1, 0};

   for(int x = 1; x < (largura-1); x++)
   {
      for(int y = 1; y < (altura-1); y++)
      {
         h = 0;
         for(int i = 0; i < 9 ; i++)
         {
            h += img[(x -1 + (i%3))][(y -1 + (i/3))]*GH[i];
         };
         S->definirPixel(x, y, h);
      };
   };
   this->img = S->img;
};


void TImagem::limiar(float limite)
{
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         if(img[x][y] > limite)
         {
            definirPixel(x, y, TPixel(0, 0, 0));
         }
         else
         {
            definirPixel(x, y, TPixel(255, 255, 255));
         };
      };
   };
};


void TImagem::inverter()
{
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         definirPixel(x, y, TPixel(255-img[x][y].pegarVermelho(), 255-img[x][y].pegarVerde(), 255-img[x][y].pegarAzul()));
      };
   };
};


TImagem* TImagem::canalVermelho()
{
   TImagem* temp = new TImagem(largura, altura);
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         temp->definirPixel(x, y, TPixel(img[x][y].pegarVermelho(), 0, 0));
      };
   };

   return(temp);
};

TImagem* TImagem::canalVerde()
{
   TImagem* temp = new TImagem(largura, altura);
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         temp->definirPixel(x, y, TPixel(0, img[x][y].pegarVerde(), 0));
      };
   };

   return(temp);
};

TImagem* TImagem::canalAzul()
{
   TImagem* temp = new TImagem(largura, altura);
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         temp->definirPixel(x, y, TPixel(0, 0, img[x][y].pegarAzul()));
      };
   };

   return(temp);
};

void TImagem::zoomIn()
{
	TImagem *temp = new TImagem(2*largura, 2*altura);
   TPixel pix;

   for(int x = 0; x < largura; x++)
   {
   	for(int y = 0; y < altura; y++)
      {
      	pix = img[x][y];
         temp->definirPixel(2*x, 2*y, pix);
			temp->definirPixel(2*x+1, 2*y, pix);
         temp->definirPixel(2*x, 2*y+1, pix);
         temp->definirPixel(2*x+1, 2*y+1, pix);
      };
   };

   desalocar();
	*this = *temp;
};

void TImagem::zoomOut()
{
	TImagem *temp = new TImagem( (int) (largura/2), (int) (altura/2));
   TPixel pix;

   for(int x = 0; x < (int) (largura/2); x++)
   {
   	for(int y = 0; y < (int) (altura/2); y++)
      {
      	pix = img[2*x][2*y];
         pix += img[2*x+1][2*y];
         pix += img[2*x][2*y+1];
         pix += img[2*x+1][2*y+1];
         pix = pix/4;

         temp->definirPixel(x, y, pix);
      };
   };

   desalocar();
	*this = *temp;
};

void TImagem::zoomLinear()
{
	TImagem *temp = new TImagem((2*largura)-1, (2*altura)-1);
   TPixel pix;

   for(int x = 0; x < largura; x++)
   {
   	for(int y = 0; y < altura; y++)
      {
         temp->definirPixel(2*x, 2*y, img[x][y]);
      };
   };

   for(int x = 0; x < largura-1; x++)
   {
   	for(int y = 0; y < altura; y++)
      {
      	pix = (img[x][y]+img[x+1][y])/2;
         temp->definirPixel(2*x+1, 2*y, pix);
      };
   };

   for(int x = 0; x < temp->pegarLargura(); x++)
   {
   	for(int y = 0; y < altura-1; y++)
      {
      	pix = (temp->pegarPixel(x,2*y) + temp->pegarPixel(x,2*y+2))/2;
         temp->definirPixel(x, 2*y+1, pix);
      };
   };

   desalocar();
	*this = *temp;
};

void TImagem::operator = (TImagem *p_entrada)
{
	altura = p_entrada->altura;
   largura = p_entrada->largura;
   numeroCor = p_entrada->numeroCor;

   alocar(largura, altura);

   for(int x = 0; x < largura; x++)
   {
   	for(int y = 0; y < altura; y++)
      {
      	img[x][y] = p_entrada->pegarPixel(x,y);
      };
   };
};


void TImagem::linha(int x1, int y1, int x2, int y2, TPixel cor)
{
   int x, y, deltax, deltay, xinc1, xinc2, yinc1, yinc2, numadd, numpixels, den, num;
   deltax = fabs(x2 - x1);     
   deltay = fabs(y2 - y1);     
   x = x1;                     
   y = y1;                     

   if (x2 >= x1)               
   {
     xinc1 = 1;
     xinc2 = 1;
   }
   else                        
   {
     xinc1 = -1;
     xinc2 = -1;
   }

   if (y2 >= y1)               
   {
      yinc1 = 1;
      yinc2 = 1;
   }
   else                        
   {
     yinc1 = -1;
     yinc2 = -1;
   }

   if (deltax >= deltay)       
   {
     xinc1 = 0;                
     yinc2 = 0;                
     den = deltax;
     num = deltax / 2;
     numadd = deltay;
     numpixels = deltax;       
   }
   else                        
   {
     xinc2 = 0;                
     yinc1 = 0;                
     den = deltay;
     num = deltay / 2;
     numadd = deltax;
     numpixels = deltay;       
   }

   for (int curpixel = 0; curpixel <= numpixels; curpixel++)
   {
     definirPixel(x,y,cor);    
     num += numadd;            
     if (num >= den)           
     {
       num -= den;             
       x += xinc1;             
       y += yinc1;             
     }
     x += xinc2;               
     y += yinc2;               
   }

};

void TImagem::ellipseMidpoint (int xCenter, int YCenter, int Rx, int Ry, TPixel cor) {
   int Rx2 = Rx * Rx;
   int Ry2 = Ry * Ry;
   int twoRx2 = 2 * Rx2;
   int twoRy2 = 2 * Ry2;
   int p;   int x = 0;
   int y = Ry;
   int px = 0;
   int py = twoRx2 * y;

   definirPixel(xCenter + x, YCenter + y, cor);
   definirPixel(xCenter - x, YCenter + y, cor);
   definirPixel(xCenter + x, YCenter - y, cor);
   definirPixel(xCenter - x, YCenter - y, cor);

   p = (Ry2 - (Rx2 * Ry) + (0.25 * Rx2));
   while (px < py)
   {
      x++;
      px += twoRy2;
      if (p < 0)
         p += Ry2 + px;
      else
      {
         y--;
         py -= twoRx2;
         p += Ry2 + px - py;
      }
      definirPixel(xCenter + x, YCenter + y, cor);
      definirPixel(xCenter - x, YCenter + y, cor);
      definirPixel(xCenter + x, YCenter - y, cor);
      definirPixel(xCenter - x, YCenter - y, cor);
   }

   p = (Ry2 * (x+0.5) * (x + 0.5) + Rx2 * (y-1) * (y-1)- Rx2 * Ry2);
   while (y > 0)
   {
      y--;
      py -= twoRx2;
      if (p > 0)
         p += Rx2 - py;
      else
      {
         x++;
         px += twoRy2;
         p += Rx2 - py + px;
      }
      definirPixel(xCenter + x, YCenter + y, cor);
      definirPixel(xCenter - x, YCenter + y, cor);
      definirPixel(xCenter + x, YCenter - y, cor);
      definirPixel(xCenter - x, YCenter - y, cor);
   }
}

void TImagem::clarear(float fator)
{
   fator = 1-fator;
   inverter();
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         img[x][y] = img[x][y]*fator;
         if(img[x][y] > 255)
            img[x][y] = TPixel(255,255,255);
      };
   };
   inverter();
};

void TImagem::escurecer(float fator)
{
   fator = 1-fator;
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         img[x][y] = img[x][y]*fator;
         if(img[x][y] > 255)
            img[x][y] = TPixel(255,255,255);
      };
   };
};

void TImagem::CirculoMidpoint (int xCenter, int YCenter, int Rx, TPixel cor) {

   int Ry=Rx;
   int Rx2 = Rx * Rx;
   int Ry2 = Ry * Ry;
   int twoRx2 = 2 * Rx2;
   int twoRy2 = 2 * Ry2;
   int p;   int x = 0;
   int y = Ry;
   int px = 0;
   int py = twoRx2 * y;

   definirPixel(xCenter + x, YCenter + y, cor);
   definirPixel(xCenter - x, YCenter + y, cor);
   definirPixel(xCenter + x, YCenter - y, cor);
   definirPixel(xCenter - x, YCenter - y, cor);

   /* região 1 */
   p = (Ry2 - (Rx2 * Ry) + (0.25 * Rx2));
   while (px < py)
   {
      x++;
      px += twoRy2;
      if (p < 0)
         p += Ry2 + px;
      else
      {
         y--;
         py -= twoRx2;
         p += Ry2 + px - py;
      }
      definirPixel(xCenter + x, YCenter + y, cor);
      definirPixel(xCenter - x, YCenter + y, cor);
      definirPixel(xCenter + x, YCenter - y, cor);
      definirPixel(xCenter - x, YCenter - y, cor);
   }

   p = (Ry2 * (x+0.5) * (x + 0.5) + Rx2 * (y-1) * (y-1)- Rx2 * Ry2);
   while (y > 0)
   {
      y--;
      py -= twoRx2;
      if (p > 0)
         p += Rx2 - py;
      else
      {
         x++;
         px += twoRy2;
         p += Rx2 - py + px;
      }
      definirPixel(xCenter + x, YCenter + y, cor);
      definirPixel(xCenter - x, YCenter + y, cor);
      definirPixel(xCenter + x, YCenter - y, cor);
      definirPixel(xCenter - x, YCenter - y, cor);
   }
}

void TImagem::dft2D(DynamicArray<DynamicArray<double> > &ri,
           DynamicArray<DynamicArray<double> > &ii,
           DynamicArray<DynamicArray<double> > &ro,
           DynamicArray<DynamicArray<double> > &io)
{
  int i,j;
  DynamicArray<double> ritemp, iitemp, rotemp, iotemp;

  ro.Length=ri.Length;
  io.Length=ii.Length;
  for(i=0; i<ri.Length; i++){
    ro[i].Length=ri[i].Length;
    io[i].Length=ii[i].Length;
  }

  // faz a dft das linhas
  for(i=0; i<ri.Length; i++){
    ritemp.Length=ri[i].Length;
    iitemp.Length=ii[i].Length;

    //pega valores da linha e coloca em um vetor
    for(j=0; j<ri[i].Length; j++){
      ritemp[j]=ri[i][j];
      iitemp[j]=ii[i][j];
    }

    //faz a dft
    dft1D(ritemp, iitemp, rotemp, iotemp);

    //recoloca os valores
    for(j=0; j<ri[i].Length; j++){
      ro[i][j]=rotemp[j];
      io[i][j]=iotemp[j];
    }
  }

  // faz a dft das colunas
  for(i=0; i<pegarAltura(); i++){
    ritemp.Length=ri.Length;
    iitemp.Length=ii.Length;

    //pega valores da coluna e coloca em um vetor
    for(j=0; j<ri.Length; j++){
      ritemp[j]=ro[j][i];
      iitemp[j]=io[j][i];
    }

    //faz a dft
    dft1D(ritemp, iitemp, rotemp, iotemp);

    //recoloca os valores
    for(j=0; j<ri.Length; j++){
      ro[j][i]=rotemp[j];
      io[j][i]=iotemp[j];
    }
  }
}

void TImagem::idft2D(DynamicArray<DynamicArray<double> > &ri,
            DynamicArray<DynamicArray<double> > &ii,
            DynamicArray<DynamicArray<double> > &ro,
            DynamicArray<DynamicArray<double> > &io)
{
  int i,j;
  DynamicArray<double> ritemp, iitemp, rotemp, iotemp;

  ro.Length=ri.Length;
  io.Length=ii.Length;
  for(i=0; i<ri.Length; i++){
    ro[i].Length=ri[i].Length;
    io[i].Length=ii[i].Length;
  }

  // faz a idft das colunas
  for(i=0; i<pegarAltura(); i++){
    ritemp.Length=ri.Length;
    iitemp.Length=ii.Length;

    //pega valores da coluna e coloca em um vetor
    for(j=0; j<ri.Length; j++){
      ritemp[j]=ri[j][i];
      iitemp[j]=ii[j][i];
    }

    //faz a dft
    idft1D(ritemp, iitemp, rotemp, iotemp);

    //recoloca os valores
    for(j=0; j<ri.Length; j++){
      ro[j][i]=rotemp[j];
      io[j][i]=iotemp[j];
    }
  }

  // faz a idft das linhas
  for(i=0; i<ri.Length; i++){
    ritemp.Length=ri[i].Length;
    iitemp.Length=ii[i].Length;

    //pega valores da linha e coloca em um vetor
    for(j=0; j<ri[i].Length; j++){
      ritemp[j]=ro[i][j];
      iitemp[j]=io[i][j];
    }

    //faz a dft
    idft1D(ritemp, iitemp, rotemp, iotemp);

    //recoloca os valores
    for(j=0; j<ri[i].Length; j++){
      ro[i][j]=rotemp[j];
      io[i][j]=iotemp[j];
    }
  }
}

void TImagem::dft1D(DynamicArray<double> &ri, DynamicArray<double> &ii, DynamicArray<double> &ro, DynamicArray<double> &io)
{
  int x, u;
  double theta;
  int samples=ri.Length;

  ro.Length=samples;
  io.Length=samples;

  if(ri.Length!=ii.Length)
    return;

  for(u=0; u<samples; u++){
    ro[u]=0;
    io[u]=0;

    for(x=0; x<samples; x++){
      theta=(2*M_PI*u*x)/samples;
      ro[u]=ro[u]+ri[x]*cos(theta)-ii[x]*sin(theta);
      io[u]=io[u]+ii[x]*cos(theta)-ri[x]*sin(theta);
    }
  }
}

void TImagem::idft1D(DynamicArray<double> &ri, DynamicArray<double> &ii, DynamicArray<double> &ro, DynamicArray<double> &io)
{
  int x, u;
  double theta;
  int samples=ri.Length;

  ro.Length=samples;
  io.Length=samples;

  if(ri.Length!=ii.Length)
    return;

  for(x=0; x<samples; x++){
    ro[x]=0;
    io[x]=0;

    for(u=0; u<samples; u++){
      theta=(2*M_PI*u*x)/samples;
      ro[x]=ro[x]+ri[u]*cos(theta)-ii[u]*sin(theta);
      io[x]=io[x]+ii[u]*cos(theta)-ri[u]*sin(theta);
    }

    ro[x]=ro[x]/samples;
    io[x]=io[x]/samples;
  }
}
 // modificação Alan 04/05/2004
 // Separa a imagem em duas partes: o objeto e o fundo
 // se cores estão entre deltacor então recebe ocor (cor do objeto) senão recebe bcor (cor de funde)
 // rcor - cor vermelha
 // gcor - cor verde
 // bcor - cor azul
 // deltacor - defini a variação da cor do objeto
 // obcor - cor do objeto classificado
 // bacor - cor de fundo
 TImagem* TImagem::separacor(byte rcor, byte gcor, byte bcor,byte deltacor, byte obcor, byte bacor)
{
   TImagem* temp = new TImagem(largura, altura);
   byte cr,cg,cb;
   int rmaior = rcor+deltacor,
       rmenor = rcor-deltacor,
       gmaior = gcor+deltacor,
       gmenor = gcor-deltacor,
       bmaior = bcor+deltacor,
       bmenor = bcor-deltacor;
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         cr= pegarPixel(x,y).pegarVermelho();
         cg= pegarPixel(x,y).pegarVerde();
         cb= pegarPixel(x,y).pegarAzul();
         if ((cr <= rmaior) && (cr >= rmenor)&& (cg <= gmaior) && (cg >= gmenor)
              && (cb <= bmaior) && (cb >= bmenor))
         temp->definirPixel(x, y, TPixel(obcor, obcor, obcor));
         else
          temp->definirPixel(x, y, TPixel(bacor, bacor, bacor));
      };
   };

   return(temp);
};
// Alan 10/02/2006
//separo objeto do fundo
// rcor, gcor, bcor: cor do objeto antes da segmentação
// obcor: cor do objeto depois da separação   (obcor,obcor,obcor)
// bacor: cor de fundo depois da separação    (bacor,bacor,bacor)
TImagem* TImagem::separaobj(byte rcor, byte gcor, byte bcor, byte obcor, byte bacor)
{
   TImagem* temp = new TImagem(largura, altura);
   byte cr,cg,cb;
   for(int x = 0; x < (largura); x++)
   {
      for(int y = 0; y < (altura); y++)
      {
         cr= pegarPixel(x,y).pegarVermelho();
         cg= pegarPixel(x,y).pegarVerde();
         cb= pegarPixel(x,y).pegarAzul();
         if ((cr == rcor) && (cg == gcor) && (cb == bcor))
           temp->definirPixel(x, y, TPixel(obcor, obcor, obcor));
         else
           temp->definirPixel(x, y, TPixel(bacor, bacor, bacor));
      };
   };
   return(temp);
};

// Alan 5/5/2005
// pinta e conta o número de píxel contido na região
// recursivo, executa somente para o canal vermelho
/*
void TImagem::FloodFill4(int X, int Y, byte V, byte N, int *cont)
{
    if(pegarPixel(X,Y).pegarVermelho()==V)
        {       *cont=*cont+1;
                definirPixel(X,Y,TPixel(N,0,255));
                FloodFill4(X,Y-1,V,N,cont);
                FloodFill4(X,Y+1,V,N,cont);
                FloodFill4(X-1,Y,V,N,cont);
                FloodFill4(X+1,Y,V,N,cont);
        }

};
*/
//  ro, go , b0 cores do fundo
// rs, gs ,bs cores que substituirão as cores do fundo
// cont conta quantos píxels foram substituídos

void TImagem::FloodFill4(int X, int Y, byte ro,byte go , byte bo, byte rs,byte gs , byte bs, int *cont)
{

  struct Tpilha1 *au=NULL;
  
 if ((pegarPixel(X,Y).pegarVermelho()  == ro) &&
      (pegarPixel(X,Y).pegarVerde()    == go) &&
      (pegarPixel(X,Y).pegarAzul()  == bo) )
   {
     definirPixel(X, Y, TPixel(rs, gs, bs));
     *cont=(*cont)+1;
     if (
             (X >= 0) && (X < largura )&&
             (Y-1 >= 0) && (Y-1< altura) &&
             (pegarPixel(X,Y-1).pegarVermelho()==ro)&&
             (pegarPixel(X,Y-1).pegarVerde()==go)&&
             (pegarPixel(X,Y-1).pegarAzul()==bo)
         )  ppilha.Insere(X,Y-1,5,5);
     if (
             (X >= 0) && (X < largura )&&
             (Y+1 >= 0) && (Y+1< altura) &&
             (pegarPixel(X,Y+1).pegarVermelho()==ro)&&
             (pegarPixel(X,Y+1).pegarVerde()==go)&&
             (pegarPixel(X,Y+1).pegarAzul()==bo)
         )  ppilha.Insere(X,Y+1,5, 5);
     if (
             (X-1 >= 0) && (X-1 < largura)&&
             (Y >= 0) && (Y< altura) &&
             (pegarPixel(X-1,Y).pegarVermelho()==ro) &&
             (pegarPixel(X-1,Y).pegarVerde()==go)&&
             (pegarPixel(X-1,Y).pegarAzul()==bo)

         )  ppilha.Insere(X-1,Y,5, 5);
     if (
             (X+1 >= 0) && (X+1 < largura )&&
             (Y >= 0) && (Y< altura) &&
             (pegarPixel(X+1,Y).pegarVermelho()==ro) &&
             (pegarPixel(X+1,Y).pegarVerde()==go)&&
             (pegarPixel(X+1,Y).pegarAzul()==bo)
         )  ppilha.Insere(X+1,Y,5, 5);
    }; // fim if
    while (au=ppilha.Remover())
    {
         definirPixel( au->px,au->py, TPixel(rs, gs, bs));
         *cont=(*cont)+1;
      if (
             (au->px >= 0) && (au->px < largura )&&
             (au->py-1 >= 0) && (au->py-1< altura) &&
             (pegarPixel(au->px,au->py-1).pegarVermelho()==ro)&&
             (pegarPixel(au->px,au->py-1).pegarVerde()==go)&&
             (pegarPixel(au->px,au->py-1).pegarAzul()==bo)
         )  ppilha.Insere(au->px,au->py-1,5,5);
     if (
             (au->px >= 0) && (au->px < largura )&&
             (au->py+1 >= 0) && (au->py+1< altura) &&
             (pegarPixel(au->px,au->py+1).pegarVermelho()==ro)&&
             (pegarPixel(au->px,au->py+1).pegarVerde()==go)&&
             (pegarPixel(au->px,au->py+1).pegarAzul()==bo)
         )  ppilha.Insere(au->px,au->py+1,5, 5);
     if (
             (au->px-1 >= 0) && (au->px-1 < largura)&&
             (au->py >= 0) && (au->py< altura) &&
             (pegarPixel(au->px-1,au->py).pegarVermelho()==ro) &&
             (pegarPixel(au->px-1,au->py).pegarVerde()==go)&&
             (pegarPixel(au->px-1,au->py).pegarAzul()==bo)

         )  ppilha.Insere(au->px-1,au->py,5, 5);
     if (
             (au->px+1 >= 0) && (au->px+1 < largura )&&
             (au->py >= 0) && (au->py< altura) &&
             (pegarPixel(au->px+1,au->py).pegarVermelho()==ro) &&
             (pegarPixel(au->px+1,au->py).pegarVerde()==go)&&
             (pegarPixel(au->px+1,au->py).pegarAzul()==bo)
         )  ppilha.Insere(au->px+1,au->py,5, 5);
     if (!au) delete au; // libera espaço
   }; //fim while
};
// Pinta o pixel da posição x,y com a cor (r,g,b)
// se a cor do canal vermelho do pixel for igual a V
// tambem tem um contador para contar se o píxel foi pintado ou não
int TImagem::pintaPixel(int X, int Y, byte V, byte r,byte g, byte b, int *cont)
{
    if(pegarPixel(X,Y).pegarVermelho()==V)
        {       *cont=*cont+1;
                definirPixel(X,Y,TPixel(r,g,b));
                return 1;
        }
    return 0;
};
 // XeY tem que ser valores válidos
 // retorna a cor predominante nas vizinhanças
int TImagem::pegaPixelVizinhoMaior(int X, int Y,int cor1,int cor2)
{
    byte c1=0,c2=0, cor;
      //para x-1
       if ((X-1)>=0)
           {  cor =pegarPixel(X-1,Y).pegarVermelho();
              if (cor == cor1) c1++;
              else if (cor ==cor2) c2++;
              if ((Y-1)>=0)
               {
                cor =pegarPixel(X-1,Y-1).pegarVermelho();
                if (cor == cor1) c1++;
                else if (cor ==cor2) c2++;
               }
               if ((Y+1)< altura)
               {
                cor =pegarPixel(X-1,Y+1).pegarVermelho();
                if (cor == cor1) c1++;
                else if (cor ==cor2) c2++;
               }
           }
        //  para X+1 faz a contagem das três classificações
           if ((X+1)< largura)
           {  cor =pegarPixel(X+1,Y).pegarVermelho();
              if (cor == cor1) c1++;
              else if (cor ==cor2) c2++;
              if ((Y-1)>= 0)
               {
                cor =pegarPixel(X+1,Y-1).pegarVermelho();
                if (cor == cor1) c1++;
                else if (cor ==cor2) c2++;
               }
               if ((Y+1) < altura)
               {
                cor =pegarPixel(X+1,Y+1).pegarVermelho();
                if (cor == cor1) c1++;
                else if (cor ==cor2) c2++;
               }
           }
         //  para a coluna de X faz a contagem das três classificações
               if ((Y-1)>= 0)
               {
                cor =pegarPixel(X,Y-1).pegarVermelho();
                if (cor == cor1) c1++;
                else if (cor ==cor2) c2++;
               }
               if ((Y+1) < altura)
               {
                cor =pegarPixel(X,Y+1).pegarVermelho();
                if (cor == cor1) c1++;
                else if (cor ==cor2) c2++;
               }
         if (c1 > c2)
         {
           if (c1 ==0) return -1;
           else return cor1;
         }
         else{
             if (c2 ==0) return -1;
           else return cor2;
         }
};
