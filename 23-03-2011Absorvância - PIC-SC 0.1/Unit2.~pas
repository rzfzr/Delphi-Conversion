unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Math, jpeg, ExtCtrls, Buttons;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Imagem1: TMenuItem;
    RGB1: TMenuItem;
    Grfico1: TMenuItem;
    Label2: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    Label21: TLabel;
    Button1: TButton;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Edit39: TEdit;
    Ajuda1: TMenuItem;
    Dicas1: TMenuItem;
    procedure Imagem1Click(Sender: TObject);
    procedure RGB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
     procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Grfico1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Dicas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  x1_,x2_,x3_,x4_,x5_,x6_,x7_,x8_,x9_,x10_,y1_,y2_,y3_,y4_,y5_,y6_,y7_,y8_,y9_,y10_ : Real;
   a1,a2,a3,a4,a5,a6,a7,a8,a9,a10: Real;
   b1,b2,b3,b4,b5,b6,b7,b8,b9,b10: Real;
   aR,bR,aB,bB,aG,bG: Real;
   bool : boolean;
implementation

uses mainunit, Unit1, Unit3;

{$R *.dfm}

procedure TForm2.Imagem1Click(Sender: TObject);
begin
  Main.Show;
  Form2.Hide;
end;

procedure TForm2.RGB1Click(Sender: TObject);
begin
  Form1.Show;
  Form2.Hide;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Main.Close;
end;


procedure TForm2.Button2Click(Sender: TObject);
  var rp0,rp1,gp0,gp1,bp0,bp1,ra1,ga1,ba1,calculo: Extended;
begin
  if(Form1.Edit2.Text <> '') then//começa ifs do p0:p10 do R --- Padrão
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit2.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit6.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit17.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit17.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit9.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit18.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit18.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit10.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit19.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit19.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit11.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit20.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit20.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit12.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit21.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit21.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit13.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit22.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit22.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit14.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit23.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit23.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit15.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit24.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit24.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit16.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit25.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit25.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit17.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit26.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit26.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit18.Text := FloatToStr(calculo);
    end;
  //terminou ifs do p0:p10 do R

   if(Form1.Edit3.Text <> '') then       //começa ifs do Po:P10 do G -- Padrão
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit3.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit7.Text := FloatToStr(calculo);
    end;
   if(Form1.Edit3.Text <> '') and (Form1.Edit27.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit27.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit19.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit28.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit28.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit20.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit29.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit29.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit21.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit30.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit30.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit22.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit31.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit31.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit23.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit32.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit32.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit24.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit33.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit33.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit25.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit34.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit34.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit26.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit35.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit35.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit27.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit36.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit36.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit28.Text := FloatToStr(calculo);
    end;   // fim dos ifs do P0:P10 do G

   if(Form1.Edit4.Text <> '') then       //começa ifs do P0:P10 do B  --- Padrão
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit4.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit8.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit37.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit37.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit29.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit38.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit38.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit30.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit39.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit39.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit31.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit40.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit40.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit32.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit41.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit41.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit33.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit42.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit42.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit34.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit43.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit43.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit35.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit44.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit44.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit36.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit45.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit45.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit37.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit46.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit46.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit38.Text := FloatToStr(calculo);
    end;   // fim dos ifs do P0:P10 do B   --- Padrão

    //comeca calculando ABSORVANCIA DO R,G e B da AMOSTRA


  if(Form1.Edit2.Text <> '') and (Form1.Edit48.Text <> '') then //começa ifs do P1:A10 do R --- Amostra
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);    //rp0 é o R do BRANCO
    ra1 := StrToFloat(Form1.Edit48.Text);   //ra1 é o R da AMOSTRA P1
    calculo := log10(rp0) - log10(ra1);     //calculando o logaritmo do branco - p1_amostra
    calculo := Trunc(calculo * 10000) / 10000;  //4 casas decimas
    Edit1.Text := FloatToStr(calculo);          //mostrando valor para o edit_destino
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit49.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit49.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit2.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit50.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit50.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit3.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit51.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit51.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit50.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit52.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit52.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit51.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit53.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit53.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit52.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit54.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit54.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit53.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit55.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit55.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit54.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit56.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit56.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit55.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit57.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit57.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit56.Text := FloatToStr(calculo);
    end;
  //terminou ifs do A1:A10 do R

  if(Form1.Edit3.Text <> '') and (Form1.Edit58.Text <> '') then //começa ifs do A1:A10 do G -- Amostra
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);    //gp0 é o G do BRANCO
    ga1 := StrToFloat(Form1.Edit58.Text);   //ga1 é o G da AMOSTRA A1
    calculo := log10(gp0) - log10(ga1);     //calculando o logaritmo do branco - A1_amostra
    calculo := Trunc(calculo * 10000) / 10000;  //4 casas decimas
    Edit57.Text := FloatToStr(calculo);          //mostrando valor para o edit_destino
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit59.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit59.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit58.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit60.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit60.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit59.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit61.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit61.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit60.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit62.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit62.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit61.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit63.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit63.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit62.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit64.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit64.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit63.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit65.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit65.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit64.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit66.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit66.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit65.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit67.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit67.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit66.Text := FloatToStr(calculo);
    end;
  //terminou ifs do A1:A10 do R

  //começa ifs do A1:A10 do B
  if(Form1.Edit4.Text <> '') and (Form1.Edit68.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit68.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit67.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit69.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit69.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit68.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit70.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit70.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit69.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit71.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit71.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit70.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit72.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit72.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit71.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit73.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit73.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit72.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit74.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit74.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit73.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit75.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit75.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit74.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit76.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit76.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit75.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit77.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit77.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit76.Text := FloatToStr(calculo);
    end;
end; //fim do botao calcular absorvancia

procedure TForm2.Button3Click(Sender: TObject);
begin
  Edit39.Text := Form1.Edit6.Text;
  Edit40.Text := Form1.Edit7.Text;
  Edit41.Text := Form1.Edit8.Text;
  Edit42.Text := Form1.Edit9.Text;
  Edit43.Text := Form1.Edit10.Text;
  Edit44.Text := Form1.Edit11.Text;
  Edit45.Text := Form1.Edit12.Text;
  Edit46.Text := Form1.Edit13.Text;
  Edit47.Text := Form1.Edit14.Text;
  Edit48.Text := Form1.Edit15.Text;

end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var rp0,rp1,gp0,gp1,bp0,bp1,ra1,ga1,ba1,calculo: Extended;
begin
  Form2.Button1.Enabled := True;

  if(Form1.Edit2.Text <> '') then//começa ifs do p0:p10 do R --- Padrão
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit2.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit6.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit17.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit17.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit9.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit18.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit18.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit10.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit19.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit19.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit11.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit20.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit20.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit12.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit21.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit21.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit13.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit22.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit22.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit14.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit23.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit23.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit15.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit24.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit24.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit16.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit25.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit25.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit17.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit26.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    rp1 := StrToFloat(Form1.Edit26.Text);
    calculo := log10(rp0) - log10(rp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit18.Text := FloatToStr(calculo);
    end;
  //terminou ifs do p0:p10 do R

   if(Form1.Edit3.Text <> '') then       //começa ifs do Po:P10 do G -- Padrão
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit3.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit7.Text := FloatToStr(calculo);
    end;
   if(Form1.Edit3.Text <> '') and (Form1.Edit27.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit27.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit19.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit28.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit28.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit20.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit29.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit29.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit21.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit30.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit30.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit22.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit31.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit31.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit23.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit32.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit32.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit24.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit33.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit33.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit25.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit34.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit34.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit26.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit35.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit35.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit27.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit36.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    gp1 := StrToFloat(Form1.Edit36.Text);
    calculo := log10(gp0) - log10(gp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit28.Text := FloatToStr(calculo);
    end;   // fim dos ifs do P0:P10 do G

   if(Form1.Edit4.Text <> '') then       //começa ifs do P0:P10 do B  --- Padrão
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit4.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit8.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit37.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit37.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit29.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit38.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit38.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit30.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit39.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit39.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit31.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit40.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit40.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit32.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit41.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit41.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit33.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit42.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit42.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit34.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit43.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit43.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit35.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit44.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit44.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit36.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit45.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit45.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit37.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit4.Text <> '') and (Form1.Edit46.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    bp1 := StrToFloat(Form1.Edit46.Text);
    calculo := log10(bp0) - log10(bp1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit38.Text := FloatToStr(calculo);
    end;   // fim dos ifs do P0:P10 do B   --- Padrão

    //comeca calculando ABSORVANCIA DO R,G e B da AMOSTRA


  if(Form1.Edit2.Text <> '') and (Form1.Edit48.Text <> '') then //começa ifs do P1:A10 do R --- Amostra
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);    //rp0 é o R do BRANCO
    ra1 := StrToFloat(Form1.Edit48.Text);   //ra1 é o R da AMOSTRA P1
    calculo := log10(rp0) - log10(ra1);     //calculando o logaritmo do branco - p1_amostra
    calculo := Trunc(calculo * 10000) / 10000;  //4 casas decimas
    Edit1.Text := FloatToStr(calculo);          //mostrando valor para o edit_destino
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit49.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit49.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit2.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit50.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit50.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit3.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit51.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit51.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit50.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit52.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit52.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit51.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit53.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit53.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit52.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit54.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit54.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit53.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit55.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit55.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit54.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit56.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit56.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit55.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit2.Text <> '') and (Form1.Edit57.Text <> '') then
    begin
    rp0 := StrToFloat(Form1.Edit2.Text);
    ra1 := StrToFloat(Form1.Edit57.Text);
    calculo := log10(rp0) - log10(ra1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit56.Text := FloatToStr(calculo);
    end;
  //terminou ifs do A1:A10 do R

  if(Form1.Edit3.Text <> '') and (Form1.Edit58.Text <> '') then //começa ifs do A1:A10 do G -- Amostra
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);    //gp0 é o G do BRANCO
    ga1 := StrToFloat(Form1.Edit58.Text);   //ga1 é o G da AMOSTRA A1
    calculo := log10(gp0) - log10(ga1);     //calculando o logaritmo do branco - A1_amostra
    calculo := Trunc(calculo * 10000) / 10000;  //4 casas decimas
    Edit57.Text := FloatToStr(calculo);          //mostrando valor para o edit_destino
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit59.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit59.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit58.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit60.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit60.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit59.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit61.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit61.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit60.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit62.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit62.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit61.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit63.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit63.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit62.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit64.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit64.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit63.Text := FloatToStr(calculo);
    end;
    if(Form1.Edit3.Text <> '') and (Form1.Edit65.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit65.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit64.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit66.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit66.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit65.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit3.Text <> '') and (Form1.Edit67.Text <> '') then
    begin
    gp0 := StrToFloat(Form1.Edit3.Text);
    ga1 := StrToFloat(Form1.Edit67.Text);
    calculo := log10(gp0) - log10(ga1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit66.Text := FloatToStr(calculo);
    end;
  //terminou ifs do A1:A10 do R

  //começa ifs do A1:A10 do B
  if(Form1.Edit4.Text <> '') and (Form1.Edit68.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit68.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit67.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit69.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit69.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit68.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit70.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit70.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit69.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit71.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit71.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit70.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit72.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit72.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit71.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit73.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit73.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit72.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit74.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit74.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit73.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit75.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit75.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit74.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit76.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit76.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit75.Text := FloatToStr(calculo);
    end;
  if(Form1.Edit4.Text <> '') and (Form1.Edit77.Text <> '') then
    begin
    bp0 := StrToFloat(Form1.Edit4.Text);
    ba1 := StrToFloat(Form1.Edit77.Text);
    calculo := log10(bp0) - log10(ba1);
    calculo := Trunc(calculo * 10000) / 10000;
    Edit76.Text := FloatToStr(calculo);
    end;
end; //fim do botao calcular absorvancia


procedure TForm2.BitBtn2Click(Sender: TObject);

begin
  Edit39.Text := Form1.Edit6.Text;
  Edit40.Text := Form1.Edit7.Text;
  Edit41.Text := Form1.Edit8.Text;
  Edit42.Text := Form1.Edit9.Text;
  Edit43.Text := Form1.Edit10.Text;
  Edit44.Text := Form1.Edit11.Text;
  Edit45.Text := Form1.Edit12.Text;
  Edit46.Text := Form1.Edit13.Text;
  Edit47.Text := Form1.Edit14.Text;
  Edit48.Text := Form1.Edit15.Text;

end;



procedure TForm2.Grfico1Click(Sender: TObject);
begin
  Form3.Show;
  Form2.Hide;
end;

procedure TForm2.Button1Click(Sender: TObject);
var n: integer;


begin
  bool := true;
  bitbtn3.Click;
  showmessage('O programa irá calcular a Regressão');
  if ( Form2.edit39.Text <> '') and ( Form2.Edit40.Text = '' )  then
    begin
      bitbtn3.Click;
      //CANAL R
      n := 1;
      a1 := ((x1_*x1_) * (y1_) - (x1_*y1_)*(x1_))/ (n * (x1_*x1_) - (x1_)*(x1_));
      b1:= (n*(x1_*y1_) - (x1_)*(y1_))/ (n * (x1_*x1_) - (x1_)*(x1_));
      aR:= a1;
      bR:= b1;

      y1_:= strtofloat(Form2.Edit19.Text);

      a1 := ((x1_*x1_) * (y1_) - (x1_*y1_)*(x1_))/ (n * (x1_*x1_) - (x1_)*(x1_));
      b1:= (n*(x1_*y1_) - (x1_)*(y1_))/ (n * (x1_*x1_) - (x1_)*(x1_));
      aG:=a1;
      bG:=a2;
      y1_:= strtofloat(Form2.Edit29.text);
      a1 := ((x1_*x1_) * (y1_) - (x1_*y1_)*(x1_))/ (n * (x1_*x1_) - (x1_)*(x1_));
      b1:= (n*(x1_*y1_) - (x1_)*(y1_))/ (n * (x1_*x1_) - (x1_)*(x1_));
      aB:=a1;
      bB:=a2;


    end;
  if(Form2.edit40.Text <> '' ) and ( Form2.Edit41.Text = '' ) then
    begin
      bitbtn3.Click;
      n := 2;
      //CANAL R
      a2 := ((x1_*x1_+x2_*x2_) * (y1_+y2_) - (x1_*y1_+x2_*y2_)*(x1_+x2_))/ (n * (x1_*x1_+x2_*x2_) - (x1_+x2_)*(x1_+x2_));
      b2 := (5*(x1_*y1_+x2_*y2_) - (x1_+x2_)*(y1_+y2_))/ (n * (x1_*x1_+x2_*x2_) - (x1_+x2_)*(x1_+x2_));
      aR:= a2;
      bR:= b2;

       y1_:= strtofloat(Form2.Edit19.Text);
       y2_:= strtofloat(Form2.Edit20.Text);
       a2 := ((x1_*x1_+x2_*x2_) * (y1_+y2_) - (x1_*y1_+x2_*y2_)*(x1_+x2_))/ (n * (x1_*x1_+x2_*x2_) - (x1_+x2_)*(x1_+x2_));
       b2 := (5*(x1_*y1_+x2_*y2_) - (x1_+x2_)*(y1_+y2_))/ (n * (x1_*x1_+x2_*x2_) - (x1_+x2_)*(x1_+x2_));
       aG:= a2;
       bG:= b2;

       y1_:= strtofloat(Form2.Edit29.Text);
       y2_:= strtofloat(Form2.Edit30.Text);
       a2 := ((x1_*x1_+x2_*x2_) * (y1_+y2_) - (x1_*y1_+x2_*y2_)*(x1_+x2_))/ (n * (x1_*x1_+x2_*x2_) - (x1_+x2_)*(x1_+x2_));
       b2 := (5*(x1_*y1_+x2_*y2_) - (x1_+x2_)*(y1_+y2_))/ (n * (x1_*x1_+x2_*x2_) - (x1_+x2_)*(x1_+x2_));
       aB:= a2;
       bB:= b2;

    end;
  if(Form2.edit41.Text <> '' ) and ( Form2.Edit42.Text = '' ) then
    begin
      bitbtn3.Click;
      n := 3;
      a3 := ((x1_*x1_+x2_*x2_+x3_*x3_) * (y1_+y2_+y3_) - (x1_*y1_+x2_*y2_+x3_*y3_)*(x1_+x2_+x3_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_) - (x1_+x2_+x3_)*(x1_+x2_+x3_));
      b3 :=(n*(x1_*y1_+x2_*y2_+x3_*y3_) - (x1_+x2_+x3_)*(y1_+y2_+y3_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_) - (x1_+x2_+x3_)*(x1_+x2_+x3_));
      aR:= a3;
      bR:= b3;
      y1_:= strtofloat(Form2.Edit19.Text);
      y2_:= strtofloat(Form2.Edit20.Text);
      y3_:= strtofloat(Form2.Edit21.Text);
      a3 := ((x1_*x1_+x2_*x2_+x3_*x3_) * (y1_+y2_+y3_) - (x1_*y1_+x2_*y2_+x3_*y3_)*(x1_+x2_+x3_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_) - (x1_+x2_+x3_)*(x1_+x2_+x3_));
      b3 := (n*(x1_*y1_+x2_*y2_+x3_*y3_) - (x1_+x2_+x3_)*(y1_+y2_+y3_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_) - (x1_+x2_+x3_)*(x1_+x2_+x3_));
      aG:=a3;
      bG:=b3;


      y1_:= strtofloat(Form2.Edit29.Text);
      y2_:= strtofloat(Form2.Edit30.Text);
      y3_:= strtofloat(Form2.Edit31.Text);a3 := ((x1_*x1_+x2_*x2_+x3_*x3_) * (y1_+y2_+y3_) - (x1_*y1_+x2_*y2_+x3_*y3_)*(x1_+x2_+x3_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_) - (x1_+x2_+x3_)*(x1_+x2_+x3_));
      b3 := (n*(x1_*y1_+x2_*y2_+x3_*y3_) - (x1_+x2_+x3_)*(y1_+y2_+y3_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_) - (x1_+x2_+x3_)*(x1_+x2_+x3_));
      aB := a3;
      bB := b3;
    end;
  if(edit42.Text <> '') and ( Form2.Edit43.Text = '' ) then
    begin
      n := 4;
      bitbtn3.Click;
      a4 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) * (y1_+y2_+y3_+y4_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_)*(x1_+x2_+x3_+x4_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) - (x1_+x2_+x3_+x4_)*(x1_+x2_+x3_+x4_));
      b4 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_) - (x1_+x2_+x3_+x4_)*(y1_+y2_+y3_+y4_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) - (x1_+x2_+x3_+x4_)*(x1_+x2_+x3_+x4_));
      aR:= a4;
      bR:= b4;

      y1_:= strtofloat(Form2.Edit19.Text);
      y2_:= strtofloat(Form2.Edit20.Text);
      y3_:= strtofloat(Form2.Edit21.Text);
      y4_:= strtofloat(Form2.Edit22.text);
      a4 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) * (y1_+y2_+y3_+y4_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_)*(x1_+x2_+x3_+x4_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) - (x1_+x2_+x3_+x4_)*(x1_+x2_+x3_+x4_));
      b4 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_) - (x1_+x2_+x3_+x4_)*(y1_+y2_+y3_+y4_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) - (x1_+x2_+x3_+x4_)*(x1_+x2_+x3_+x4_));
      aG:= a4;
      bG:= b4;

      y1_:= strtofloat(Form2.Edit29.Text);
      y2_:= strtofloat(Form2.Edit30.Text);
      y3_:= strtofloat(Form2.Edit31.Text);
      y4_:= strtofloat(Form2.Edit32.text);
      a4 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) * (y1_+y2_+y3_+y4_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_)*(x1_+x2_+x3_+x4_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) - (x1_+x2_+x3_+x4_)*(x1_+x2_+x3_+x4_));
      b4 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_) - (x1_+x2_+x3_+x4_)*(y1_+y2_+y3_+y4_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_) - (x1_+x2_+x3_+x4_)*(x1_+x2_+x3_+x4_));
      aB:= a4;
      bB:= b4;
    end;
    if(edit43.Text <> '') and ( Form2.Edit44.Text = '' ) then
      begin
       n := 5;
       BitBtn3.Click;
       a5 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) * (y1_+y2_+y3_+y4_+y5_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_)*(x1_+x2_+x3_+x4_+x5_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) - (x1_+x2_+x3_+x4_+x5_)*(x1_+x2_+x3_+x4_+x5_));
       b5 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_) - (x1_+x2_+x3_+x4_+x5_)*(y1_+y2_+y3_+y4_+y5_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) - (x1_+x2_+x3_+x4_+x5_)*(x1_+x2_+x3_+x4_+x5_));
       aR:= a5;
       bR:= b5;

      y1_:= strtofloat(Form2.Edit19.Text);
      y2_:= strtofloat(Form2.Edit20.Text);
      y3_:= strtofloat(Form2.Edit21.Text);
      y4_:= strtofloat(Form2.Edit22.text);
      y5_:= strtofloat(Form2.Edit23.text);

       a5 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) * (y1_+y2_+y3_+y4_+y5_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_)*(x1_+x2_+x3_+x4_+x5_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) - (x1_+x2_+x3_+x4_+x5_)*(x1_+x2_+x3_+x4_+x5_));
       b5 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_) - (x1_+x2_+x3_+x4_+x5_)*(y1_+y2_+y3_+y4_+y5_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) - (x1_+x2_+x3_+x4_+x5_)*(x1_+x2_+x3_+x4_+x5_));
       aG:= a5;
       bG:= b5;

      y1_:= strtofloat(Form2.Edit29.Text);
      y2_:= strtofloat(Form2.Edit30.Text);
      y3_:= strtofloat(Form2.Edit31.Text);
      y4_:= strtofloat(Form2.Edit32.text);
      y5_:= strtofloat(Form2.Edit33.text);
      a5 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) * (y1_+y2_+y3_+y4_+y5_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_)*(x1_+x2_+x3_+x4_+x5_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) - (x1_+x2_+x3_+x4_+x5_)*(x1_+x2_+x3_+x4_+x5_));
      b5 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_) - (x1_+x2_+x3_+x4_+x5_)*(y1_+y2_+y3_+y4_+y5_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) - (x1_+x2_+x3_+x4_+x5_)*(x1_+x2_+x3_+x4_+x5_));
      aB:= a5;
      bB:= b5;


      end;
  if(edit44.Text <> '') and ( edit45.text = '' ) then
      begin
       n := 6;
       BitBtn3.Click;
       a6 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) * (y1_+y2_+y3_+y4_+y5_+y6_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_)*(x1_+x2_+x3_+x4_+x5_+x6_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(x1_+x2_+x3_+x4_+x5_+x6_));
       b6 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(y1_+y2_+y3_+y4_+y5_+y6_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(x1_+x2_+x3_+x4_+x5_+x6_));
       aR:= a6;
       bR:= b6;

      y1_:= strtofloat(Form2.Edit19.Text);
      y2_:= strtofloat(Form2.Edit20.Text);
      y3_:= strtofloat(Form2.Edit21.Text);
      y4_ := strtofloat(Form2.Edit22.text);
      y5_ := strtofloat(Form2.Edit23.text);
      y6_ := strtofloat(Form2.Edit24.text);

       a6 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) * (y1_+y2_+y3_+y4_+y5_+y6_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_)*(x1_+x2_+x3_+x4_+x5_+x6_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(x1_+x2_+x3_+x4_+x5_+x6_));
       b6 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(y1_+y2_+y3_+y4_+y5_+y6_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(x1_+x2_+x3_+x4_+x5_+x6_));
       aG:= a6;
       bG:= b6;

      y1_:= strtofloat(Form2.Edit29.Text);
      y2_:= strtofloat(Form2.Edit30.Text);
      y3_:= strtofloat(Form2.Edit31.Text);
      y4_ := strtofloat(Form2.Edit32.text);
      y5_ := strtofloat(Form2.Edit33.text);
      y6_ := strtofloat(Form2.Edit34.text);
      a6 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) * (y1_+y2_+y3_+y4_+y5_+y6_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_)*(x1_+x2_+x3_+x4_+x5_+x6_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(x1_+x2_+x3_+x4_+x5_+x6_));
       b6 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(y1_+y2_+y3_+y4_+y5_+y6_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_) - (x1_+x2_+x3_+x4_+x5_+x6_)*(x1_+x2_+x3_+x4_+x5_+x6_));
       aB:= a6;
       bB:= b6;
      end;
    if(edit45.Text <> '') and ( edit46.text = '' ) then
      begin
        n := 7;
        BitBtn3.click;
       a7 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_));
       b7 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_));
       aR:= a7;
       bR:= b7;

      y1_:= strtofloat(Form2.Edit19.Text);
      y2_:= strtofloat(Form2.Edit20.Text);
      y3_:= strtofloat(Form2.Edit21.Text);
      y4_ := strtofloat(Form2.Edit22.text);
      y5_ := strtofloat(Form2.Edit23.text);
      y6_ := strtofloat(Form2.Edit24.text);
      y7_ := strtofloat(Form2.Edit24.text);

      a7 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_));
      b7 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_));
      aG:= a7;
      bG:= b7;

      y1_:= strtofloat(Form2.Edit29.Text);
      y2_:= strtofloat(Form2.Edit30.Text);
      y3_:= strtofloat(Form2.Edit31.Text);
      y4_ := strtofloat(Form2.Edit32.text);
      y5_ := strtofloat(Form2.Edit33.text);
      y6_ := strtofloat(Form2.Edit34.text);
      y7_ := strtofloat(Form2.Edit34.text);
      a7 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_));
      b7 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_));
      aB:= a7;
      bB:= b7;
      showmessage(floattostr(aB));
            showmessage(floattostr(bB));

      end;
  if(edit46.Text <> '') and ( edit47.text = '' ) then
     begin
       n := 8;
       BitBtn3.Click;
       a8 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_));
       b8 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_));
       aR:= a8;
       bR:= b8;

      y1_:= strtofloat(Form2.Edit19.Text);
      y2_:= strtofloat(Form2.Edit20.Text);
      y3_:= strtofloat(Form2.Edit21.Text);
      y4_ := strtofloat(Form2.Edit22.text);
      y5_ := strtofloat(Form2.Edit23.text);
      y6_ := strtofloat(Form2.Edit24.text);
      y7_ := strtofloat(Form2.Edit25.text);
      y8_ := strtofloat(Form2.Edit26.text);
      a8 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_));
       b8 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_));
       aG:= a8;
       bG:= b8;

       y1_:= strtofloat(Form2.Edit29.Text);
      y2_:= strtofloat(Form2.Edit30.Text);
      y3_:= strtofloat(Form2.Edit31.Text);
      y4_ := strtofloat(Form2.Edit32.text);
      y5_ := strtofloat(Form2.Edit33.text);
      y6_ := strtofloat(Form2.Edit34.text);
      y7_ := strtofloat(Form2.Edit35.text);
      y8_ := strtofloat(Form2.Edit36.text);
      a8 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_));
       b8 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_));
       aB:= a8;
       bB:= b8;

     end;
    if(edit47.Text <> '') and ( edit48.text = '' ) then
      begin
        n := 9;
        BitBtn3.Click;
        a9 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*y9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_));
        b9 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_));
        aR:= a9;
        bR:= b9;


      y1_:= strtofloat(Form2.Edit19.Text);
      y2_:= strtofloat(Form2.Edit20.Text);
      y3_:= strtofloat(Form2.Edit21.Text);
      y4_ := strtofloat(Form2.Edit22.text);
      y5_ := strtofloat(Form2.Edit23.text);
      y6_ := strtofloat(Form2.Edit24.text);
      y7_ := strtofloat(Form2.Edit25.text);
      y8_ := strtofloat(Form2.Edit26.text);
      y9_ := strtofloat(Form2.Edit27.text);
      a9 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*y9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_));
      b9 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_));
      aG:= a9;
      bG:= b9;

      y1_:= strtofloat(Form2.Edit29.Text);
      y2_:= strtofloat(Form2.Edit30.Text);
      y3_:= strtofloat(Form2.Edit31.Text);
      y4_ := strtofloat(Form2.Edit32.text);
      y5_ := strtofloat(Form2.Edit33.text);
      y6_ := strtofloat(Form2.Edit34.text);
      y7_ := strtofloat(Form2.Edit35.text);
      y8_ := strtofloat(Form2.Edit36.text);
      y9_ := strtofloat(Form2.Edit37.text);
      a9 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*y9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_));
      b9 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_));
      aB:= a9;
      bB:= b9;
      end;
  if(edit48.Text <> '')  then
     begin
        n := 10;
        BitBtn3.Click;
        a10 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_+x10_*x10_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_+y10_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_+x10_*y10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*y9_+x10_*x10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_));
        b10 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_+x10_*y10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_+y10_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_+x10_*x10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_));
        aR:= a10;
        bR:= b10;

      y1_:= strtofloat(Form2.Edit19.Text);
      y2_:= strtofloat(Form2.Edit20.Text);
      y3_:= strtofloat(Form2.Edit21.Text);
      y4_ := strtofloat(Form2.Edit22.text);
      y5_ := strtofloat(Form2.Edit23.text);
      y6_ := strtofloat(Form2.Edit24.text);
      y7_ := strtofloat(Form2.Edit25.text);
      y8_ := strtofloat(Form2.Edit26.text);
      y9_ := strtofloat(Form2.Edit27.text);
      y10_ := strtofloat(Form2.Edit28.text);

      a10 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_+x10_*x10_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_+y10_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_+x10_*y10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*y9_+x10_*x10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_));
        b10 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_+x10_*y10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_+y10_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_+x10_*x10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_));
        aG:= a10;
        bG:= b10;

        y1_:= strtofloat(Form2.Edit29.Text);
      y2_:= strtofloat(Form2.Edit30.Text);
      y3_:= strtofloat(Form2.Edit31.Text);
      y4_ := strtofloat(Form2.Edit32.text);
      y5_ := strtofloat(Form2.Edit33.text);
      y6_ := strtofloat(Form2.Edit34.text);
      y7_ := strtofloat(Form2.Edit35.text);
      y8_ := strtofloat(Form2.Edit36.text);
      y9_ := strtofloat(Form2.Edit37.text);
      y10_ := strtofloat(Form2.Edit38.text);
      a10 := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_+x10_*x10_) * (y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_+y10_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_+x10_*y10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*y9_+x10_*x10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_));
        b10 := (n*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_+x6_*y6_+x7_*y7_+x8_*y8_+x9_*y9_+x10_*y10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(y1_+y2_+y3_+y4_+y5_+y6_+y7_+y8_+y9_+y10_))/ (n * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_+x6_*x6_+x7_*x7_+x8_*x8_+x9_*x9_+x10_*x10_) - (x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_)*(x1_+x2_+x3_+x4_+x5_+x6_+x7_+x8_+x9_+x10_));
        aB:= a10;
        bB:= b10;
     end;


end;

procedure TForm2.Image1Click(Sender: TObject);
var aa,bb:Double;
begin
aa := ((x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) * (y1_+y2_+y3_+y4_+y5_) - (x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_)*(x1_+x2_+x3_+x4_+x5_))/ (5 * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) - (x1_+x2_+x3_+x4_+x5_)*(x1_+x2_+x3_+x4_+x5_));
bb:= (5*(x1_*y1_+x2_*y2_+x3_*y3_+x4_*y4_+x5_*y5_) - (x1_+x2_+x3_+x4_+x5_)*(y1_+y2_+y3_+y4_+y5_))/ (5 * (x1_*x1_+x2_*x2_+x3_*x3_+x4_*x4_+x5_*x5_) - (x1_+x2_+x3_+x4_+x5_)*(x1_+x2_+x3_+x4_+x5_));
showmessage(floattostr(aa));
showmessage(floattostr(bb));
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
     if( Form2.Edit39.Text = '' ) and ( Form2.Edit9.Text = '' ) then
    begin
      showmessage('Dados inconsistentes ou incompletos!');
    end;
    
  if ( Form2.Edit39.Text <> '') and ( Form2.Edit9.Text <> '' ) then
    begin
      x1_ := strtofloat ( Form2.Edit39.Text );
      y1_ := strtofloat ( Form2.Edit9.Text );
      //calculo y = ax + b depois desenhar grafico
    end;
  if ( Form2.Edit40.Text <> '') and ( Form2.Edit10.Text <> '' ) then
    begin
      x2_ := strtofloat ( Form2.Edit40.Text );
      y2_ := strtofloat ( Form2.Edit10.Text );
    end;
  if ( Form2.Edit41.Text <> '') and ( Form2.Edit11.Text <> '' ) then
    begin
      x3_ := strtofloat ( Form2.Edit41.Text );
      y3_ := strtofloat ( Form2.Edit11.Text );
    end;
   if ( Form2.Edit42.Text <> '') and ( Form2.Edit12.Text <> '' ) then
    begin
      x4_ := strtofloat ( Form2.Edit42.Text );
      y4_ := strtofloat ( Form2.Edit12.Text );
    end;
    if ( Form2.Edit43.Text <> '') and ( Form2.Edit13.Text <> '' ) then
      begin
        x5_ := strtofloat ( Form2.Edit43.Text );
        y5_ := strtofloat ( Form2.Edit13.Text );
      end;
    if ( Form2.Edit44.Text <> '') and ( Form2.Edit14.Text <> '' ) then
      begin
        x6_ := strtofloat ( Form2.Edit44.Text );
        y6_ := strtofloat ( Form2.Edit14.Text );
      end;
    if ( Form2.Edit45.Text <> '') and ( Form2.Edit15.Text <> '' ) then
      begin
        x7_ := strtofloat ( Form2.Edit45.Text );
        y7_ := strtofloat ( Form2.Edit15.Text );
      end;
    if ( Form2.Edit46.Text <> '') and ( Form2.Edit16.Text <> '' ) then
      begin
        x8_ := strtofloat ( Form2.Edit46.Text );
        y8_ := strtofloat ( Form2.Edit16.Text );
      end;
    if ( Form2.Edit47.Text <> '') and ( Form2.Edit17.Text <> '' ) then
      begin
        x9_ := strtofloat ( Form2.Edit47.Text );
        y9_ := strtofloat ( Form2.Edit17.Text );
      end;
    if ( Form2.Edit48.Text <> '') and ( Form2.Edit18.Text <> '' ) then
      begin
        x10_ := strtofloat ( Form2.Edit48.Text );
        y10_ := strtofloat ( Form2.Edit18.Text );
      end;

end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin

      y1_ := strtofloat ( Form2.Edit19.Text );
      y2_ := strtofloat ( Form2.Edit20.Text );
      y3_ := strtofloat ( Form2.Edit21.Text );
      y4_ := strtofloat ( Form2.Edit22.Text );
      y5_ := strtofloat ( Form2.Edit23.Text );
      y6_ := strtofloat ( Form2.Edit24.Text );
      y7_ := strtofloat ( Form2.Edit25.Text );
      y8_ := strtofloat ( Form2.Edit26.Text );
      y9_ := strtofloat ( Form2.Edit27.Text );
      y10_ := strtofloat ( Form2.Edit28.Text );
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
      y1_ := strtofloat ( Form2.Edit29.Text );
      y2_ := strtofloat ( Form2.Edit30.Text );
      y3_ := strtofloat ( Form2.Edit31.Text );
      y4_ := strtofloat ( Form2.Edit32.Text );
      y5_ := strtofloat ( Form2.Edit33.Text );
      y6_ := strtofloat ( Form2.Edit34.Text );
      y7_ := strtofloat ( Form2.Edit35.Text );
      y8_ := strtofloat ( Form2.Edit36.Text );
      y9_ := strtofloat ( Form2.Edit37.Text );
      y10_ := strtofloat ( Form2.Edit38.Text );
end;

procedure TForm2.FormShow(Sender: TObject);
begin
BitBtn2.Click;
end;

procedure TForm2.Dicas1Click(Sender: TObject);
begin
showmessage('Procure sempre preencher todos os campos disponíveis');
showmessage('A área é selecionada formando um quadrilátero via 2 cliques');
showmessage('Para anotações dos dados obtidos de uma imagem clique no botão "Escrever no Arquivo" na página principal');
showmessage('Você pode alterar a cor de preenchimento e efeitos relacionados na parte inferior da página principal');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
bool := false;
end;

end.
