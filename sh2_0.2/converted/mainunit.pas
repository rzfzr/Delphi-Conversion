unit mainunit;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ExtDlgs; //ColorGrd,Windows;

type
  TMain = class(TForm)
    ImageScroll: TScrollBox;
    LoadButton: TButton;
    ProceedButton: TButton;
    LoadImageDialog: TOpenPictureDialog;
    Image: TImage;
    ColorGrid: TColorGrid;
    CheckBoxInv: TCheckBox;
    CheckBoxFill: TCheckBox;
    AnalysisBox: TGroupBox;
    Average: TLabel;
    LabelAverage: TLabel;
    DesviationLabel: TLabel;
    Desviation: TLabel;
    LabelGeneralDesviation: TLabel;
    ReadPixels: TLabel;
    rmax: TLabel;
    gmax: TLabel;
    bmax: TLabel;
    rmin: TLabel;
    gmin: TLabel;
    bmin: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    AnalFile: TButton;
    WriteFile: TButton;
    SaveDialog: TSaveDialog;
    procedure LoadButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GetMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ProceedButtonClick(Sender: TObject);
    procedure CheckBoxInvClick(Sender: TObject);
    procedure AnalFileClick(Sender: TObject);
    procedure WriteFileClick(Sender: TObject);
  private

  public

  end;

var
  Main: TMain;
  x1,x2,y1,y2,xtmp: integer;
  r,tr,g,tg,b,tb: integer;
  dr,dg,db,gd: extended;
  maxr,maxg,maxb,minr,ming,minb: integer;
  d: integer;
  k: integer;
  Done: boolean;
  f: textfile;
  control: boolean;
  const v = '0.1 Shareware  SACHS, L.G.; et al. Software - Conversor in average RGB color <sachs@ffalm.br>';


implementation

{$R *.lfm}
  procedure TMain.FormCreate(Sender: TObject);
  begin
    ProceedButton.Enabled := false;
    WriteFile.Enabled := false;
    Main.Caption := 'SH2 ' + v;
    Done := false;
    control := true;

    if FileExists('sh2.bmp') then
      begin
        Image.Picture.LoadFromFile('sh2.bmp');
      end;
  end;

  procedure TMain.LoadButtonClick(Sender: TObject);
  begin
    if LoadImageDialog.Execute then
      Image.Picture.LoadFromFile(LoadImageDialog.FileName);
  end;

  procedure TMain.GetMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  begin
  if control = true then
  begin
    ProceedButton.Enabled := false;
    WriteFile.Enabled := false;
    if not (LoadImageDialog.FileName = '') then
        Image.Picture.LoadFromFile(LoadImageDialog.FileName);
    Average.Caption := '';
    Desviation.Caption := '';
    RMax.Caption := 'R MAX.:   ';
    GMax.Caption := 'G MAX.:   ';
    BMax.Caption := 'B MAX.:   ';
    RMin.Caption := 'R MIN.:   ';
    GMin.Caption := 'G MIN.:   ';
    BMin.Caption := 'B MIN.:   ';
    ReadPixels.Caption := 'Read Pixels:';
    LabelGeneralDesviation.Caption := 'General Desviation: ';
    x1 := X;
    y1 := Y;
    control := false;
  end
  else
  begin
    x2 := X;
    y2 := Y;

    if x1 > x2 then
      begin
        xtmp  := x1;
        x1    := x2;
        x2    := xtmp;
      end;

    if y1 > y2 then
      begin
        xtmp  := y1;
        y1    := y2;
        y2    := xtmp;
      end;

    if not (LoadImageDialog.Filename = '' ) then
      ProceedButton.Enabled := true;
     control := true;
  end;
  end;

  procedure TMain.ProceedButtonClick(Sender: TObject);
  var
    px,py: integer;

  begin
    k :=  0;
    tr := 0;tg := 0;tb := 0;
    dr := 0;dg := 0;db := 0;
    minr := 255; ming := 255;minb := 255;
    maxr := 0; maxg := 0;maxb := 0;

    ProceedButton.Enabled := false;

    for px:=x1 to x2 do
    for py:=y1 to y2 do
      begin
        r := GetRValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]);
        g := GetGValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]);
        b := GetBValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]);

        if r > maxr then
                maxr := r
        else
            begin
                if r < minr then
                        minr := r;
             end;

        if g > maxg then
                maxg := g
        else
            begin
                if g < ming then
                        ming := g;
             end;

        if b > maxb then
                maxb := b
        else
            begin
                if b < minb then
                        minb := b;
             end;

        k := k + 1;
        tr := tr + r;
        tg := tg + g;
        tb := tb + b;
      end;

    for px:=x1 to x2 do
    for py:=y1 to y2 do
      begin
        if (k -1) = 0 then
           begin
                dr := Sqr(255);
                dg := Sqr(255);
                db := Sqr(255);
                break;
           end;

        dr := dr + Sqr(GetRValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]) - tr / k) / (k - 1) ;
        dg := dg + Sqr(GetGValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]) - tg / k) / (k - 1) ;
        db := db + Sqr(GetBValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]) - tb / k) / (k - 1) ;

        if CheckBoxFill.Checked = false then
        begin
          if (px = x1) or (px = x2) or
              (py = y1) or (py = y2)  then
            begin
                if ColorGrid.Enabled = true then
                 Image.Picture.Bitmap.Canvas.Pixels[px,py]:=ColorGrid.ForegroundColor
                else
                 Image.Picture.Bitmap.Canvas.Pixels[px,py]:=rgb(GetRValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]), 255 - GetGValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]), 255 - GetBValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]));
           end;
        end
        else
           begin
                if ColorGrid.Enabled = true then
                 Image.Picture.Bitmap.Canvas.Pixels[px,py]:=ColorGrid.ForegroundColor
                else
                 Image.Picture.Bitmap.Canvas.Pixels[px,py]:=rgb(255 - GetRValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]), 255 - GetGValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]), 255 - GetBValue(Image.Picture.Bitmap.Canvas.Pixels[px,py]));
           end;
      end;

    dr := Sqrt(dr);
    dg := Sqrt(dg);
    db := Sqrt(db);
    gd := ((dr + dg + db)/3);

    if k = 1 then
        begin
        RMax.Caption := 'R MAX.:   ' + '  -  ';
        GMax.Caption := 'G MAX.:   ' + '  -  ';
        BMax.Caption := 'B MAX.:   ' + '  -  ';
        RMin.Caption := 'R MIN.:   ' + '  -  ';
        GMin.Caption := 'G MIN.:   ' + '  -  ';
        BMin.Caption := 'B MIN.:   ' + '  -  ';
        end
    else
        begin
        RMax.Caption := 'R MAX.:   ' + IntToStr(maxr);
        GMax.Caption := 'G MAX.:   ' + IntToStr(maxg);
        BMax.Caption := 'B MAX.:   ' + IntToStr(maxb);
        RMin.Caption := 'R MIN.:   ' + IntToStr(minr);
        GMin.Caption := 'G MIN.:   ' + IntToStr(ming);
        BMin.Caption := 'B MIN.:   ' + IntToStr(minb);
        end;

    ReadPixels.Caption := 'Read Pixels:   ' + IntToStr(k);
    LabelGeneralDesviation.Caption := 'General Desviation:  ' + Format('%f',[gd]);
    Desviation.Caption := Format(' %f  %f  %f',[dr,dg,db]);
    Average.Caption := Format('%d   %d   %d',[tr div k,tg div k,tb div k]);

    if not (SaveDialog.FileName = '') then
        WriteFile.Enabled := true;

    Done := true;
  end;

  procedure TMain.CheckBoxInvClick(Sender: TObject);
  begin
    if ColorGrid.Enabled = false then
      ColorGrid.Enabled := true
    else
      ColorGrid.Enabled := false;
  end;

  procedure TMain.AnalFileClick(Sender: TObject);
  begin
      if SaveDialog.Execute then
        begin
                AssignFile(f,SaveDialog.FileName);
                Rewrite(f);
                AnalFile.Caption := 'Change';
                Main.Caption := Format('SH2 ' + v + ' @ %s',[SaveDialog.FileName]);
               if Done = true then
                        begin
                                WriteFile.Enabled := true;
                                Done := false;
                        end;
                CloseFile(f);
        end;

  end;

  procedure TMain.WriteFileClick(Sender: TObject);
  begin
              AssignFile(f,SaveDialog.FileName);
              if FileExists(SaveDialog.FileName) = false then
                Rewrite(f);
              Append(f);
              WriteLn(f,Format('%s : %d %d %d / %f %f %f / %f / '
                               + 'RMAX: %d GMAX: %d BMAX: %d / '
                               + 'RMIN: %d GMIN: %d BMIN: %d / '
                               + '%d / xy1 %d %d  xy2 %d %d',
                               [LoadImageDialog.FileName,tr div k,tg div k,tb div k,dr,dg,db,gd,
                               maxr,maxg,maxb,minr,ming,minb,k,x1,y1,x2,y2]));
              CloseFile(f);
              WriteFile.Enabled := false;
  end;
end.
