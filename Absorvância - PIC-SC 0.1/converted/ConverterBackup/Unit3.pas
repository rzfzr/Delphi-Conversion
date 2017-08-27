unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, StdCtrls, Series;

type
  TForm3 = class(TForm)
    Chart1: TChart;
    Series2: TPointSeries;
    Label1: TLabel;
    Chart2: TChart;
    Label2: TLabel;
    PointSeries1: TPointSeries;
    Button2: TButton;
    Button1: TButton;
    Chart3: TChart;
    Label3: TLabel;
    PointSeries2: TPointSeries;
    Button3: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit_r_a: TEdit;
    Edit_r_b: TEdit;
    Edit_g_a: TEdit;
    Button4: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit_g_b: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Edit_b_a: TEdit;
    Edit_b_b: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit_r_xa: TEdit;
    Edit_r_xb: TEdit;
    Label22: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Edit_g_xa: TEdit;
    Edit_g_xb: TEdit;
    Label21: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit_b_xa: TEdit;
    Edit_b_xb: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, mainunit;

{$R *.dfm}


procedure TForm3.Button1Click(Sender: TObject);
var aux,auxi:real;
begin
 if( Form2.Edit9.Text = '' ) and ( Form2.Edit39.Text = '' ) then
  showmessage('Dados inconsistentes ou incompletos!');
  if ( Form2.Edit9.Text <> '') and ( Form2.Edit39.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit9.Text );
      auxi := strtofloat ( Form2.Edit39.Text );
      Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

    end;
  if ( Form2.Edit10.Text <> '') and ( Form2.Edit40.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit10.Text );
      auxi := strtofloat ( Form2.Edit40.Text );
      Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

    end;
  if ( Form2.Edit11.Text <> '') and ( Form2.Edit41.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit11.Text );
      auxi := strtofloat ( Form2.Edit41.Text );
      Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

    end;
   if ( Form2.Edit12.Text <> '') and ( Form2.Edit42.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit12.Text );
      auxi := strtofloat ( Form2.Edit42.Text );
      Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

    end;
    if ( Form2.Edit13.Text <> '') and ( Form2.Edit43.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit13.Text );
        auxi := strtofloat ( Form2.Edit43.Text );
        Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

      end;
    if ( Form2.Edit14.Text <> '') and ( Form2.Edit44.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit14.Text );
        auxi := strtofloat ( Form2.Edit44.Text );
        Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

      end;
    if ( Form2.Edit15.Text <> '') and ( Form2.Edit45.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit15.Text );
        auxi := strtofloat ( Form2.Edit45.Text );
        Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

      end;
    if ( Form2.Edit16.Text <> '') and ( Form2.Edit46.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit16.Text );
        auxi := strtofloat ( Form2.Edit46.Text );
        Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

      end;
    if ( Form2.Edit17.Text <> '') and ( Form2.Edit47.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit17.Text );
        auxi := strtofloat ( Form2.Edit47.Text );
        Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

      end;
    if ( Form2.Edit18.Text <> '') and ( Form2.Edit48.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit18.Text );
        auxi := strtofloat ( Form2.Edit48.Text );
        Chart1.Series[0].AddXY ( auxi, aux, '', clteecolor );

      end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form3.Hide;
Main.show;
end;

procedure TForm3.Button2Click(Sender: TObject);
var aux, auxi: double;
begin
  if( Form2.Edit19.Text = '' ) and ( Form2.Edit39.Text = '' ) then
    showmessage('Dados inconsistentes ou incompletos!');

  if ( Form2.Edit19.Text <> '') and ( Form2.Edit39.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit19.Text );
      auxi := strtofloat ( Form2.Edit39.Text );
      Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
    end;
  if ( Form2.Edit20.Text <> '') and ( Form2.Edit40.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit20.Text );
      auxi := strtofloat ( Form2.Edit40.Text );
      Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
    end;
  if ( Form2.Edit21.Text <> '') and ( Form2.Edit41.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit21.Text );
      auxi := strtofloat ( Form2.Edit41.Text );
      Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
    end;
   if ( Form2.Edit22.Text <> '') and ( Form2.Edit42.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit22.Text );
      auxi := strtofloat ( Form2.Edit42.Text );
      Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
    end;
    if ( Form2.Edit23.Text <> '') and ( Form2.Edit43.Text <> '' ) then
      begin
      aux := strtofloat ( Form2.Edit23.Text );
      auxi := strtofloat ( Form2.Edit43.Text );
      Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit24.Text <> '') and ( Form2.Edit44.Text <> '' ) then
      begin
      aux := strtofloat ( Form2.Edit24.Text );
      auxi := strtofloat ( Form2.Edit44.Text );
      Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit25.Text <> '') and ( Form2.Edit45.Text <> '' ) then
      begin
       aux := strtofloat ( Form2.Edit25.Text );
       auxi := strtofloat ( Form2.Edit45.Text );
       Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit26.Text <> '') and ( Form2.Edit46.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit26.Text );
        auxi := strtofloat ( Form2.Edit46.Text );
        Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit27.Text <> '') and ( Form2.Edit47.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit27.Text );
        auxi := strtofloat ( Form2.Edit47.Text );
        Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit28.Text <> '') and ( Form2.Edit48.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit28.Text );
        auxi := strtofloat ( Form2.Edit48.Text );
        Chart2.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
end;




procedure TForm3.Button3Click(Sender: TObject);
var aux, auxi: double;
begin
 if( Form2.Edit29.Text = '' ) and ( Form2.Edit39.Text = '' ) then
    showmessage('Dados inconsistentes ou incompletos!');

   if ( Form2.Edit29.Text <> '') and ( Form2.Edit39.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit29.Text );
      auxi := strtofloat ( Form2.Edit39.Text );
      Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
    end;
    if ( Form2.Edit30.Text <> '') and ( Form2.Edit40.Text <> '' ) then
     begin
      aux := strtofloat ( Form2.Edit30.Text );
      auxi := strtofloat ( Form2.Edit40.Text );
      Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
     end;
   if ( Form2.Edit31.Text <> '') and ( Form2.Edit41.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit31.Text );
      auxi := strtofloat ( Form2.Edit41.Text );
      Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
    end;
   if ( Form2.Edit32.Text <> '') and ( Form2.Edit42.Text <> '' ) then
    begin
      aux := strtofloat ( Form2.Edit32.Text );
      auxi := strtofloat ( Form2.Edit42.Text );
      Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
    end;
    if ( Form2.Edit33.Text <> '') and ( Form2.Edit43.Text <> '' ) then
      begin
      aux := strtofloat ( Form2.Edit33.Text );
      auxi := strtofloat ( Form2.Edit43.Text );
      Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit34.Text <> '') and ( Form2.Edit44.Text <> '' ) then
      begin
      aux := strtofloat ( Form2.Edit34.Text );
      auxi := strtofloat ( Form2.Edit44.Text );
      Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit35.Text <> '') and ( Form2.Edit45.Text <> '' ) then
      begin
       aux := strtofloat ( Form2.Edit35.Text );
       auxi := strtofloat ( Form2.Edit45.Text );
       Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit36.Text <> '') and ( Form2.Edit46.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit36.Text );
        auxi := strtofloat ( Form2.Edit46.Text );
        Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit37.Text <> '') and ( Form2.Edit47.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit37.Text );
        auxi := strtofloat ( Form2.Edit47.Text );
        Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
    if ( Form2.Edit38.Text <> '') and ( Form2.Edit48.Text <> '' ) then
      begin
        aux := strtofloat ( Form2.Edit38.Text );
        auxi := strtofloat ( Form2.Edit48.Text );
        Chart3.Series[0].AddXY ( auxi, aux, '', clteecolor );
      end;
end;


procedure TForm3.Button4Click(Sender: TObject);
begin
if ( bool = true ) then
 begin
  //R
  Form3.Edit_r_a.Text := FormatFloat('0.0000',bR);
  Form3.Edit_r_b.Text := FormatFloat('0.0000',aR);
  Form3.Edit_r_xa.Text := FormatFloat('0.0000',1/bR);
  Form3.Edit_r_xb.Text := FormatFloat('0.0000',aR/bR);
  //G
  Form3.Edit_g_a.Text := FormatFloat('0.0000',bG);
  Form3.Edit_g_b.Text := FormatFloat('0.0000',aG);
  Form3.Edit_g_xa.Text := FormatFloat('0.0000',1/bG);
  Form3.Edit_g_xb.Text := FormatFloat('0.0000',aG/bG);
  //B
  Form3.Edit_b_a.Text := FormatFloat('0.0000',bB);
  Form3.Edit_b_b.Text := FormatFloat('0.0000',aB);
  Form3.Edit_b_xa.Text := FormatFloat('0.0000',1/bB);
  Form3.Edit_b_xb.Text := FormatFloat('0.0000',aB/bB);
 end
 else
 showmessage('É necessário a realização do cálculo da Regressão Linear primeiro.');


end;

end.
