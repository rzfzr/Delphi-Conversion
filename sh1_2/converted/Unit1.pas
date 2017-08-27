unit Unit1;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);


    procedure About1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  controle:boolean;
  x1,x2,y1,y2:integer;
implementation

uses Unit2;
{$R *.lfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if opendialog1.execute then image1.Picture.LoadFromFile(opendialog1.filename);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  controle:=true;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    if controle then
    begin
      controle := false;
      x1:=x;
      y1:=y;
      button2.Enabled:=false;
     end
    else
      begin
        controle := true;
        x2:=x;
        y2:=y;
        button2.Enabled:=true;
      end;
end;

       procedure TForm1.About1Click(Sender: TObject);
begin
  f_about.Show;
end;



procedure TForm1.Button2Click(Sender: TObject);
var r,g,b,i,j:integer;
    fi:textfile;
    xa:integer;
begin
  if savedialog1.execute then
  begin
     assignfile(fi,savedialog1.filename);
     rewrite(fi);
     if x1 > x2 then
      begin
        xa:=x1;
        x1:=x2;
        x2:=xa;
      end;

      if y1 > y2 then
      begin
        xa:=y1;
        y1:=y2;
        y2:=xa;
      end;

     for i:=x1 to x2 do
     for j:=y1 to y2 do
     begin
        r:= GetRValue(image1.picture.bitmap.canvas.pixels[i,j]);
        g:= GetGValue(image1.picture.bitmap.canvas.pixels[i,j]);
        b:= GetBValue(image1.picture.bitmap.canvas.pixels[i,j]);
        image1.picture.bitmap.canvas.pixels[i,j]:=rgb(255,0,0);
        writeln(fi,r,' ',g,' ',b);
     end;
     closefile(fi);
  end;
end;

end.
