unit Unit1;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Math, ExtCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Label17: TLabel;
    Button1: TButton;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
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
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    CheckBox1: TCheckBox;
    Label22: TLabel;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    MainMenu1: TMainMenu;
    Imagem1: TMenuItem;
    Absorvncia1: TMenuItem;
    Grfico1: TMenuItem;
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
    Edit77: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label23: TLabel;
    Ajuda1: TMenuItem;
    Dicas1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Imagem1Click(Sender: TObject);
    procedure Absorvncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grfico1Click(Sender: TObject);
    procedure Dicas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses mainunit, Unit2, Unit3;

{$R *.lfm}

procedure TForm1.Button1Click(Sender: TObject);
  var concent, p1,p2,p3,p4,p5,p6,p7,p8,p9,p10 : Real;   // declarando valor concentracoes
begin
   concent := StrToFloat(Edit16.Text);
   if ( edit17.Text <> '' ) then
    begin
     p1 := concent;
     edit6.Text := FloatToStr(p1);
    end;
   if ( edit18.Text <> '' ) then
    begin
      p2:= p1 * 2;
      Edit7.Text := FloatToStr(p2);
    end;
   if ( edit19.Text <> '' ) then
    begin
      p3:=p2 + p1;
      Edit8.Text := FloatToStr(p3);
    end;
   if ( edit20.Text <> '' ) then
    begin
      p4 := p3 + p1;
      Edit9.Text := FloatToStr(p4);
    end;
   if ( edit21.Text <> '' ) then
    begin
      p5 := p4 + p1;
      Edit10.Text := FloatToStr(p5);
    end;
   if ( edit22.Text <> '' ) then
    begin
      p6 := p5 + p1;
      Edit11.Text := FloatToStr(p6);
    end;
   if ( edit23.Text <> '' ) then
    begin
      p7 := p6 + p1;
      Edit12.Text := FloatToStr(p7);
    end;
   if ( edit24.Text <> '' ) then
    begin
      p8 := p7 + p1;
      Edit13.Text := FloatToStr(p8);
    end;
   if ( edit25.Text <> '' ) then
    begin
      p9 := p8 + p1;
      Edit14.Text := FloatToStr(p9);
    end;
   if ( edit26.Text <> '' ) then
    begin
      p10 := p9 + p1;
      Edit15.Text := FloatToStr(p10);
    end;
end;


procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if(CheckBox1.Checked = true) then
    begin
      Label17.Visible := true;
      Edit16.Visible := true;
      Button1.Visible := true;
    end;
   if(CheckBox1.Checked = false) then
    begin
      Label17.Visible := false;
      Edit16.Visible := false;
      Button1.Visible := false;
    end
end;

procedure TForm1.Imagem1Click(Sender: TObject);
begin
 Main.show;
 Form1.Hide;
end;

procedure TForm1.Absorvncia1Click(Sender: TObject);
begin
    Form2.Show;
    Form1.Hide;


end;




procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Main.Close;
end;

procedure TForm1.Grfico1Click(Sender: TObject);
begin
  Form3.Show;
  Form1.Hide;
end;

procedure TForm1.Dicas1Click(Sender: TObject);
begin
showmessage('Procure sempre preencher todos os campos disponíveis');
showmessage('A área é selecionada formando um quadrilátero via 2 cliques');
showmessage('Para anotações dos dados obtidos de uma imagem clique no botão "Escrever no Arquivo" na página principal');
showmessage('Você pode alterar a cor de preenchimento e efeitos relacionados na parte inferior da página principal');
end;

end.
