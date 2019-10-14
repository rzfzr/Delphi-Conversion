//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Dialogs.hpp>
#include <ExtDlgs.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TScrollBox *ScrollBox1;
        TImage *Image1;
        TButton *LeituraImagem;
        TGroupBox *GroupBox1;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TEdit *Rmin;
        TEdit *Gmin;
        TEdit *Bmin;
        TButton *Button2;
        TLabel *Label6;
        TLabel *Label8;
        TEdit *Lmin;
        TEdit *Lmax;
        TLabel *Label9;
        TOpenDialog *OpenDialog1;
        TLabel *Label10;
    TButton *Button3;
    TButton *Button1;
    TSavePictureDialog *SavePictureDialog1;
    TGroupBox *GroupBox2;
    TLabel *Label4;
    TLabel *Label5;
    TLabel *Label7;
    TButton *Button4;
    TButton *Button5;
        void __fastcall LeituraImagemClick(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Image1MouseMove(TObject *Sender, TShiftState Shift,
          int X, int Y);
    void __fastcall Button1Click(TObject *Sender);
    void __fastcall Button4Click(TObject *Sender);
    void __fastcall Button5Click(TObject *Sender);
private:	// User declarations
        void TForm1::separa(byte r1, byte g1, byte b1,byte r2, byte g2, byte b2);
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
