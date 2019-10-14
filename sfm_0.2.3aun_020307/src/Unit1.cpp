//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "pilha.txt"
#include "TImagem.h"
#include "TTokenizer.h"


//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

const AnsiString TITLE = "SFM 0.2a";
int zoom = 0;

//variáveis globais que cria 3 imagens auxiliares.
TImagem *img = new TImagem(), // essa vai ser utilizada para manter ter a cópia original
        *img1= new TImagem(), // Imagem auxiliar
        *img2= new TImagem(); // imagem auxiliar
Longint contacluster=0, contapixel=0;

TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{  // construtor do Form - //retorna a imagem no formato de BitMap
   // no caso a imagem só foi criada e não possui conteúdo
 Image1->Picture->Bitmap = img->retornarImagem();
 Form1->Caption = TITLE;
 Image1->Picture->LoadFromFile("splash.bmp");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::LeituraImagemClick(TObject *Sender)
{
    Button1->Enabled = false;


 if (OpenDialog1->Execute())
  {
     //abre uma imagem a partir de um arquivo
     img->abrirImagem(OpenDialog1->FileName);
     img1->abrirImagem(OpenDialog1->FileName);
     img2->abrirImagem(OpenDialog1->FileName);
     //--------
     //retorna a imagem no formato de BitMap para apresentação na tela
     Image1->Picture->Bitmap = img->retornarImagem();
        Image1->Width = Image1->Picture->Width;
        Image1->Height = Image1->Picture->Height;
     //--------
     Button4->Enabled = true;
     Button2->Enabled = true;
  }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
        int zoomed = zoom;
        for(;zoom > 0;img1->zoomOut(),zoom--);
        Image1->Picture->Bitmap = img1->retornarImagem();

byte r = StrToInt(Rmin->Text),
     g = StrToInt(Gmin->Text),
     b = StrToInt(Bmin->Text);

// Separa a imagem em duas partes: o objeto e o fundo
// O objeto terá cor (0,0,0) e o fundo terá cor (255,255,255)
img1 = img->separaobj(r,g, b,0, 255);
//---------------------------------------------------------------------------
// tem que virar um método do objeto ou um procedimento com pelo menos.
// a imagem sendo um parâmetro.
// a imagem de entrada deve estar segmentada com objeto (0,0,0) e fundo (255,255,255)
// o resultado é uma imagem em que o objeto terá com (150,0,0)

/* int aux=StrToInt(Edit1->Text);
   img->tonsDeCinza();
     if (aux)img->camadas(aux);
   Image2->Picture->Bitmap = img->retornarImagem();
*/
// todo o processo
CPilha ppilha;
bool controle, segunda;

struct Tpilha *au;
int cont =0, limiarMin= StrToInt(Lmin->Text), limiarMax=StrToInt(Lmax->Text);
byte V=0,N=100, bcor,gcor;  //v=0 cor do objeto imagem preto e branco
int X,Y,largura=img1->pegarLargura(),altura=img1->pegarAltura();
int contaclusters=0;
int i[] = {0,0,0,0,0,0,0,0,0,0,0} ,x = (limiarMax - limiarMin)/5,y;

 contapixel=0;
 for(int X = 0; X < (largura); X++)
   {
      for(int Y = 0; Y < (altura); Y++)
      {
       //*****************************
       cont=0; V=0; N=100; controle = true; segunda = false;bcor=255;gcor=0;
  while (controle)
  {
    if ((X>= 0) && (X< img1->pegarLargura() )&&
        (Y >= 0) && (Y < img1->pegarAltura()) &&
         img1->pintaPixel(X,Y, V, N,gcor,bcor, &cont)
       )
    {
       if (
               (X >= 0) && (X < img1->pegarLargura() )&&
               (Y-1 >= 0) && (Y-1< img1->pegarAltura()) &&
               (img1->pegarPixel(X,Y-1).pegarVermelho()==V)
           )  ppilha.Insere(X,Y-1,V, N);
       if (
               (X >= 0) && (X < img1->pegarLargura() )&&
               (Y+1 >= 0) && (Y+1< img1->pegarAltura()) &&
               (img1->pegarPixel(X,Y+1).pegarVermelho()==V)
           )  ppilha.Insere(X,Y+1,V, N);
       if (
               (X-1 >= 0) && (X-1 < img1->pegarLargura() )&&
               (Y >= 0) && (Y< img1->pegarAltura()) &&
               (img1->pegarPixel(X-1,Y).pegarVermelho()==V)
           )  ppilha.Insere(X-1,Y,V, N);
       if (
               (X+1 >= 0) && (X+1 < img1->pegarLargura() )&&
               (Y >= 0) && (Y< img1->pegarAltura()) &&
               (img1->pegarPixel(X+1,Y).pegarVermelho()==V)
           )  ppilha.Insere(X+1,Y,V, N);

  //  para processar a diagonal
      if (
               (X-1 >= 0) && (X-1 < img1->pegarLargura() )&&
               (Y-1 >= 0) && (Y-1< img1->pegarAltura()) &&
               (img1->pegarPixel(X-1,Y-1).pegarVermelho()==V)
           )  ppilha.Insere(X-1,Y-1,V, N);
       if (
               (X+1 >= 0) && (X+1 < img1->pegarLargura() )&&
               (Y+1 >= 0) && (Y+1< img1->pegarAltura()) &&
               (img1->pegarPixel(X+1,Y+1).pegarVermelho()==V)
           )  ppilha.Insere(X+1,Y+1,V, N);
       if (
               (X-1 >= 0) && (X-1 < img1->pegarLargura() )&&
               (Y+1 >= 0) && (Y+1< img1->pegarAltura()) &&
               (img1->pegarPixel(X-1,Y+1).pegarVermelho()==V)
           )  ppilha.Insere(X-1,Y+1,V, N);
       if (
               (X+1 >= 0) && (X+1 < img1->pegarLargura() )&&
               (Y-1 >= 0) && (Y-1< img1->pegarAltura()) &&
               (img1->pegarPixel(X+1,Y-1).pegarVermelho()==V)
           )  ppilha.Insere(X+1,Y-1,V, N);
  //
    }; // fim if
    while (au=ppilha.Remover())
    {       // se o canal vermelho do pixel = au->pV etão o pixel será pintado de
            // (au->pN,gcor,bcor)  == (100,0,255)
            // cont é o contador de pixels pintados
        if (img1->pintaPixel( au->px,au->py, au->pV, au->pN,gcor,bcor,&cont ))
        {
           if (
               (au->px >= 0) && (au->px < img1->pegarLargura() )&&
               (au->py-1 >= 0) && (au->py-1 < img1->pegarAltura()) &&
               (img1->pegarPixel(au->px,au->py-1).pegarVermelho()==V)
              )
              ppilha.Insere(au->px,au->py-1,V, N);
           if (
               (au->px>=0) && (au->px < img1->pegarLargura() )&&
               (au->py+1>=0) && (au->py+1 < img1->pegarAltura()) &&
               (img1->pegarPixel(au->px,au->py+1).pegarVermelho()==V)
              )
              ppilha.Insere(au->px,au->py+1,V, N);
           if (
               (au->px-1>=0) && (au->px-1 < img1->pegarLargura() )&&
               (au->py >= 0) && (au->py < img1->pegarAltura() ) &&
               (img1->pegarPixel(au->px-1,au->py).pegarVermelho()==V)

              )
              ppilha.Insere(au->px-1,au->py,V, N);
           if (
               (au->px+1>=0) && (au->px+1 <img1->pegarLargura() )&&
               (au->py >=0) && (au->py < img1->pegarAltura() )  &&
               (img1->pegarPixel(au->px+1,au->py).pegarVermelho()==V)
              )
           ppilha.Insere(au->px+1,au->py,V, N);
      //
         if (
               (au->px-1 >= 0) && (au->px-1 < img1->pegarLargura() )&&
               (au->py-1 >= 0) && (au->py-1 < img1->pegarAltura()) &&
               (img1->pegarPixel(au->px-1,au->py-1).pegarVermelho()==V)
              ) ppilha.Insere(au->px-1,au->py-1,V, N);
           if (
               (au->px+1>=0) && (au->px+1 < img1->pegarLargura() )&&
               (au->py+1>=0) && (au->py+1 < img1->pegarAltura()) &&
               (img1->pegarPixel(au->px+1,au->py+1).pegarVermelho()==V)
              ) ppilha.Insere(au->px+1,au->py+1,V, N);
           if (
               (au->px-1>=0) && (au->px-1 < img1->pegarLargura() )&&
               (au->py+1 >= 0) && (au->py+1 < img1->pegarAltura() ) &&
               (img1->pegarPixel(au->px-1,au->py+1).pegarVermelho()==V)
              ) ppilha.Insere(au->px-1,au->py+1,V, N);
           if (
               (au->px+1>=0) && (au->px+1 <img1->pegarLargura() )&&
               (au->py-1 >=0) && (au->py-1 < img1->pegarAltura() )  &&
               (img1->pegarPixel(au->px+1,au->py-1).pegarVermelho()==V)
              ) ppilha.Insere(au->px+1,au->py-1,V, N);
      //
        };
    }; //fim while

   if ((cont < limiarMin)||(cont > limiarMax) || (cont==0) || segunda ) {
           controle=false;                        }
    else {
         segunda = true;
           V=100;
           N=150;
           gcor=0;
           bcor = 0;                        //aqui tem a contagem
           contapixel= cont+contapixel;     // cont armazena o tamanho do cluster
           contaclusters= contaclusters+1;
           //if (contapixel < 1*x+limiarMin) i[0] = contaclusters;
           //else if (contapixel < 2*x+limiarMin) i[1] = contaclusters;
           //else if (contapixel < 3*x+limiarMin) i[2] = contaclusters;
           //else if (contapixel < 4*x+limiarMin) i[3] = contaclusters;
           //else if (contapixel < 5*x+limiarMin) i[4] = contaclusters;
         };
       };//fim do while
       //*****************************
      }
   }
     Label6->Caption = "Contagem de cluster: "+ IntToStr(contaclusters);
     Label9->Caption = "Número de píxels total: "+IntToStr(contapixel);
  // Image2->Picture->Bitmap = img1->retornarImagem();

    for(;zoom < zoomed;img1->zoomIn(),zoom++);
    Image1->Picture->Bitmap = img1->retornarImagem();

    if (Image1->Picture->Bitmap != img1->retornarImagem())
        Button1->Enabled = true;

    //Form1->Caption = IntToStr(x+limiarMin)+":"+IntToStr(i[0])+","+IntToStr(x*2+limiarMin)+":"+IntToStr(i[1])+","+IntToStr(x*3+limiarMin)+":"+IntToStr(i[2])+","+IntToStr(x*4+limiarMin)+":"+IntToStr(i[3])+","+IntToStr(x*5+limiarMin)+":"+IntToStr(i[4]);

//separa(255,215,10,230,30,30);
//Image1->Picture->Bitmap = img2->retornarImagem();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Image1MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
int r =GetRValue(Image1->Canvas->Pixels[X][Y]),
      g = GetGValue(Image1->Canvas->Pixels[X][Y]),
      b = GetBValue(Image1->Canvas->Pixels[X][Y]);
  Label10->Caption = "pos ("+IntToStr(X)+","+IntToStr(Y)+")"+"  cor ("+IntToStr(r)+","+IntToStr(g)+","+IntToStr(b)+")";
}


//---------------------------------------------------------------------------
void TForm1::separa(byte r1, byte g1, byte b1,byte r2, byte g2, byte b2)
{
    CPilha ppilha;
   struct Tpilha *au;
   int X,Y,largura=img1->pegarLargura(),altura=img1->pegarAltura(),V,N;
 byte Vcolor, cor; // conta amarelo, conta marrom conta vermelho
 // região segmentada 150, 0, 0;
 // amarelo 255,215,10
 //marrom 80,60,0
 // vermelho 230,30,30
 //executa para separar o vermelho
 //Separavermelho1Click(Sender);
 //Run1Click(Sender);
 V=150;
 for(int X = 0; X < (largura); X++)
   {
      for(int Y = 0; Y < (altura); Y++)
      {
    if (img1->pegarPixel(X,Y).pegarVermelho()  == 150)
    {
      Vcolor = img2->pegaPixelVizinhoMaior(X,Y,r1,r2);
      if (Vcolor)
      {
        if (Vcolor == r1) img2->definirPixel(X, Y, TPixel(r1, g1, b1));
        else if (Vcolor == r2) img2->definirPixel(X, Y, TPixel(r2, g2, b2));
        img1->definirPixel(X, Y, TPixel(100, 30, 30));
      }
       if (
               (X >= 0) && (X < img1->pegarLargura() )&&
               (Y-1 >= 0) && (Y-1< img1->pegarAltura()) &&
               (img1->pegarPixel(X,Y-1).pegarVermelho()==150)
           )  ppilha.Insere(X,Y-1,V, N);
       if (
               (X >= 0) && (X < img1->pegarLargura() )&&
               (Y+1 >= 0) && (Y+1< img1->pegarAltura()) &&
               (img1->pegarPixel(X,Y+1).pegarVermelho()==150)
           )  ppilha.Insere(X,Y+1,V, N);
       if (
               (X-1 >= 0) && (X-1 < img1->pegarLargura() )&&
               (Y >= 0) && (Y< img1->pegarAltura()) &&
               (img1->pegarPixel(X-1,Y).pegarVermelho()==150)
           )  ppilha.Insere(X-1,Y,V, N);
       if (
               (X+1 >= 0) && (X+1 < img1->pegarLargura() )&&
               (Y >= 0) && (Y< img1->pegarAltura()) &&
               (img1->pegarPixel(X+1,Y).pegarVermelho()==V)
           )  ppilha.Insere(X+1,Y,V, N);
    }; // fim if
    while (au=ppilha.Remover())
    {

    if (img1->pegarPixel(au->px,au->py).pegarVermelho()  == 150)
    {
      Vcolor = img2->pegaPixelVizinhoMaior(au->px,au->py,r1,r2);
      if (Vcolor)
      {
        if (Vcolor == r1) img2->definirPixel(au->px, au->py, TPixel(r1, g1, b1));
        else if (Vcolor == r2) img2->definirPixel(au->px, au->py, TPixel(r2, g2, b2));
        img1->definirPixel(au->px, au->py, TPixel(100, 30, 30));
      }  else ppilha.Insere(au->px,au->py,V, N);

       if (
               (au->px>= 0) && (au->px < img1->pegarLargura() )&&
               (au->py-1 >= 0) && (au->py-1< img1->pegarAltura()) &&
               (img1->pegarPixel(au->px,au->py-1).pegarVermelho()==150)
           )  ppilha.Insere(au->px,au->py-1,V, N);
       if (
               (au->px >= 0) && (au->px < img1->pegarLargura() )&&
               (au->py+1 >= 0) && (au->py+1< img1->pegarAltura()) &&
               (img1->pegarPixel(au->px,au->py+1).pegarVermelho()==150)
           )  ppilha.Insere(au->px,au->py+1,V, N);
       if (
               (au->px-1 >= 0) && (au->px-1 < img1->pegarLargura() )&&
               (au->py >= 0) && (au->py< img1->pegarAltura()) &&
               (img1->pegarPixel(au->px-1,au->py).pegarVermelho()==150)
           )  ppilha.Insere(au->px-1,Y,V, N);
       if (
               (au->px+1 >= 0) && (au->px+1 < img1->pegarLargura() )&&
               (au->py >= 0) && (au->py< img1->pegarAltura()) &&
               (img1->pegarPixel(au->px+1,Y).pegarVermelho()==150)
           )  ppilha.Insere(au->px+1,au->py,V, N);
    }; // fim if
    }; //fim while
//*****************************
      }
   }
}



void __fastcall TForm1::Button1Click(TObject *Sender)
{
    int zoomed = zoom;
    if (SavePictureDialog1->Execute()) {
        for(;zoom > 0;img1->zoomOut(),zoom--);
        Image1->Picture->Bitmap = img1->retornarImagem();
        Image1->Picture->SaveToFile(SavePictureDialog1->FileName);
        for(;zoom < zoomed;img1->zoomIn(),zoom++);
        Image1->Picture->Bitmap = img1->retornarImagem();
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
    img1->zoomIn();
    Image1->Picture->Bitmap = img1->retornarImagem();
    zoom++;
    Button5->Enabled = true;
    if (zoom == 2) Button4->Enabled = false;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
    img1->zoomOut();
    Image1->Picture->Bitmap = img1->retornarImagem();
    zoom--;
    Button4->Enabled = true;
    if (zoom == 0) Button5->Enabled = false;

}
//---------------------------------------------------------------------------

