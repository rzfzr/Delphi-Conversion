unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, SFPLib, Variants, ExtDlgs;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Panel2: TPanel;
    Label11: TLabel;
    CheckBox1: TCheckBox;
    Label12: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Label16: TLabel;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    CheckBox2: TCheckBox;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    Edit26: TEdit;
    Label31: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label10: TLabel;
    Edit12: TEdit;
    Label21: TLabel;
    Edit25: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label35: TLabel;
    Label41: TLabel;
    CheckBox3: TCheckBox;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Button4: TButton;
    Edit27: TEdit;
    Label40: TLabel;
    Label47: TLabel;
    OpenDialog1: TOpenPictureDialog;
    Label13: TLabel;
    SaveImageButton: TButton;
    SavePictureDialog: TSavePictureDialog;
    Button3: TButton;
    RSelEdit: TEdit;
    GSelEdit: TEdit;
    BSelEdit: TEdit;
    Label14: TLabel;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    CheckBox4: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure k(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SaveImageButtonClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SFP: SFPvalue;
  MainForm: TMainForm;
  controle,
  controlacheckbox:boolean;  // se true executa checkebox 2 senão executa checkebox 3
  x1,x2,y1,y2:integer;
implementation

{$R *.DFM}

procedure TMainForm.Button1Click(Sender: TObject);
begin
  if opendialog1.execute then image1.Picture.LoadFromFile(opendialog1.filename);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('splash.bmp');
  controle:=true;
  controlacheckbox:=true;
end;

procedure TMainForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var r,g,b,v,m:integer;
      pix, dpi:real;

begin
if (button =mbRight) then
begin
Edit7.text:=Inttostr(x);
Edit8.text:=Inttostr(y);
r:= GetRValue(image1.picture.bitmap.canvas.pixels[x,y]);
g:= GetGValue(image1.picture.bitmap.canvas.pixels[x,y]);
b:= GetBValue(image1.picture.bitmap.canvas.pixels[x,y]);
v:= StrtoInt(edit12.text);
Edit9.text:=Inttostr(r);
Edit10.text:=Inttostr(g);
Edit11.text:=Inttostr(b);
Label17.caption:= 'R/G = '+floattostrf(r/(g+1e-30),ffFixed,13,2);
Label18.caption:= 'R/B = '+floattostrf(r/(b+1e-30),ffFixed,13,2);
Label19.caption:= 'G/B = '+floattostrf(g/(b+1e-30),ffFixed,13,2);


//====
Edit13.text:=Inttostr(r-v);
Edit14.text:=Inttostr(g); //  R/G
Edit19.text:=Inttostr(r+v);
Edit20.text:=Inttostr(g);

Edit15.text:=Inttostr(r-v);
Edit16.text:=Inttostr(b); //  R/B
Edit21.text:=Inttostr(r+v);
Edit22.text:=Inttostr(b);

Edit17.text:=Inttostr(g-v);
Edit18.text:=Inttostr(b); //  G/b
Edit23.text:=Inttostr(g+v);
Edit24.text:=Inttostr(b);

//====
//minimos rgb
m:= r-v;  if (m<0) then m:=0;
Edit1.text:=Inttostr(m);
Edit13.text:=Inttostr(m);
Edit15.text:=Inttostr(m);
m:= g-v;  if (m<0) then m:=0;
Edit2.text:=Inttostr(m);
Edit17.text:=Inttostr(m);
m:= b-v;  if (m<0) then m:=0;
Edit3.text:=Inttostr(m);
// máximos rgb
m:= r+v;  if (m>255) then m:=255;
Edit4.text:=Inttostr(m);
Edit19.text:=Inttostr(m);
Edit21.text:=Inttostr(m);
m:= g+v;  if (m>255) then m:=255;
Edit5.text:=Inttostr(m);
Edit23.text:=Inttostr(m);
m:= b+v;  if (m>255) then m:=255;
Edit6.text:=Inttostr(m);

SFP := RGB2SFP(r,g,b);

Label37.Caption:='S : '+floattostrf(SFP.S,ffFixed,5,1);
Label38.Caption:='F : '+floattostrf(SFP.F,ffFixed,5,1);
if SFP.P < 0 then
  Label8.Caption:='P : greyscale'
else
Label8.Caption:='P : '+floattostrf(SFP.P,ffFixed,5,1);

end
else
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
        pix:= sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
        dpi:= strtofloat(Edit25.Text);
        Label22.Caption:='(xy)area= '+floattostrf(((sqrt((x1-x2)*(x1-x2)))+1)*((sqrt((y1-y2)*(y1-y2)))+1)*((2.54*2.54)/(dpi*dpi+1.0E-60)),ffExponent,5,2)+'cm2';
        dpi:= strtofloat(Edit25.Text);
        Label20.Caption:='Distance='+floattostrf((pix+1)*2.54/(1.0E-30+dpi),ffExponent,5,2)+'cm';
        Label25.Caption:='Distance='+floattostrf((pix+1),ffFixed,13,3)+'px';
        Label31.Caption:='Circle='+floattostrf(sqr((pix+1)*2.54/(1.0E-30+dpi))*(3.1416/4),ffExponent,5,2)+'cm2';
        Label28.Caption:='(xy)area='+floattostrf(((sqrt((x1-x2)*(x1-x2)))+1)*((sqrt((y1-y2)*(y1-y2)))+1),ffFixed,13,0)+'px';
        Label32.Caption:='Circle='+floattostrf((sqr((pix+1)/2))*3.1416,ffFixed,13,3)+'px';
        Label33.Caption:='Sphere='+floattostrf(((pix+1)/2)*((pix+1)/2)*((pix+1)/2)*(4*3.1416/3),ffExponent,5,2)+'vx';
        Label34.Caption:='Sphere='+floattostrf(((pix+1)/2)*((pix+1)/2)*((pix+1)/2)*(4*3.1416/3)*(16.387064/(1.0E-30+dpi*dpi*dpi)),ffExponent,5,2)+'cm3';

    end;
end;

procedure TMainForm.k(Sender: TObject);
var r,g,b,i,j:integer;
    xa:integer;
    rmi,rma,gmi,gma,bmi,bma:integer;
    contador, totalp, rejp:integer;
    r_g_d,r_b_d,g_b_d:real;
    r_g_a,r_b_a,g_b_a:real;
    nume,deno,aux:real;
    rg,rb,gb:real;
    S,F,P,MaxS, MinS, MaxF, MinF, MaxP, MinP, seno, cosseno:real;
    temp:extended;
    check: integer;

begin

      check := 0;

      if StrToInt(RSelEdit.Text) > 255 then RSelEdit.Text := '255'
      else if StrToInt(RSelEdit.Text) < 0 then RSelEdit.Text := '0';
      if StrToInt(GSelEdit.Text) > 255 then GSelEdit.Text := '255'
      else if StrToInt(GSelEdit.Text) < 0 then GSelEdit.Text := '0';
      if StrToInt(BSelEdit.Text) > 255 then BSelEdit.Text := '255'
      else if StrToInt(BSelEdit.Text) < 0 then BSelEdit.Text := '0';

      MaxS:= strtofloat(edit29.text);
      MinS:= strtofloat(edit28.text);
      MaxF:= strtofloat(edit31.text);
      MinF:= strtofloat(edit30.text);
      MaxP:= strtofloat(edit33.text);
      MinP:= strtofloat(edit32.text);

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
      if (CheckBox1.Checked)then
      begin
        x1:=0;
        y1:=0;
        x2:= image1.picture.bitmap.width-1;
        y2:= image1.picture.bitmap.height-1;
      end;
      rmi:= strtoint(edit1.text);
      rma:= strtoint(edit4.text);
      gmi:= strtoint(edit2.text);
      gma:= strtoint(edit5.text);
      bmi:= strtoint(edit3.text);
      bma:= strtoint(edit6.text);
    if (CheckBox2.Checked)then
    begin
      nume:=strtofloat(edit13.text);
      deno:=strtofloat(edit14.text);
      if (deno=0.0) then r_g_d:= 1e-30 else r_g_d:= nume/deno;
      nume:=strtofloat(edit15.text);
      deno:=strtofloat(edit16.text);
      if (deno=0.0) then r_b_d:= 1e-30 else r_b_d:= nume/deno;
      nume:=strtofloat(edit17.text);
      deno:=strtofloat(edit18.text);
      if (deno=0.0) then g_b_d:= 1e-30 else g_b_d:= nume/deno;

      nume:=strtofloat(edit19.text);
      deno:=strtofloat(edit20.text);
      if (deno=0.0) then r_g_a:= 1e-30 else r_g_a:= nume/deno;
      nume:=strtofloat(edit21.text);
      deno:=strtofloat(edit22.text);
      if (deno=0.0) then r_b_a:= 1e-30 else r_b_a:= nume/deno;
      nume:=strtofloat(edit23.text);
      deno:=strtofloat(edit24.text);
      if (deno=0.0) then g_b_a:= 1e-30 else g_b_a:= nume/deno;

       if (r_g_d > r_g_a )then
       begin
         aux:=r_g_d;
         r_g_d:=r_g_a;
         r_g_a:= aux;
       end;
       if (r_b_d > r_b_a )then
       begin
         aux:=r_b_d;
         r_b_d:=r_b_a;
         r_b_a:= aux;
       end;
       if (g_b_d > g_b_a )then
       begin
         aux:=g_b_d;
         g_b_d:=g_b_a;
         g_b_a:= aux;
       end;
    end;
     contador:=0;
     totalp:=0;
     for i:=x1 to x2 do
     for j:=y1 to y2 do
     begin
        r:= GetRValue(image1.picture.bitmap.canvas.pixels[i,j]);
        g:= GetGValue(image1.picture.bitmap.canvas.pixels[i,j]);
        b:= GetBValue(image1.picture.bitmap.canvas.pixels[i,j]);

      if ((CheckBox4.Checked = true) and
      not((r=StrToInt(Edit34.Text)) and (g=StrToInt(Edit35.Text)) and (b=StrToInt(Edit36.Text)))
      or (CheckBox4.Checked = false)) then      // eu e alguns amigos costumamoss dizer que para uma
      begin                                     // gambiarra ser perfeita precisamos de um arame e um
                                                // brasileiro, mas só agora sei que sem a aritmética
        if (g=0)then rg:= 1e30 else rg:=r/g;    // booleana gambiarra não tem graça :)
        if (b=0)then
        begin
           rb:= 1e30;
           gb:= 1e30;
        end
        else
        begin
           rb:=r/b;
           gb:=g/b;
        end;

        totalp:=totalp+1;

        if ((r>= rmi) and (r<=rma) and (g>= gmi) and (g<=gma) and
            (b>= bmi) and (b<=bma)) then
        begin
            //---------
            if (controlacheckbox) then
            begin
                if (CheckBox2.Checked)then
                begin
                     if ((r_g_d <= rg) and (rg <= r_g_a) and (r_b_d <= rb) and (rb <= r_b_a)
                          and (g_b_d <= gb) and (gb <= g_b_a))   then
                     begin
                       image1.picture.bitmap.canvas.pixels[i,j]:=rgb(StrToInt(RSelEdit.Text),StrToInt(GSelEdit.Text),StrToInt(BSelEdit.Text));
                       contador:=contador+1;
                     end;
                end
                else
                begin
                     image1.picture.bitmap.canvas.pixels[i,j]:=rgb(StrToInt(RSelEdit.Text),StrToInt(GSelEdit.Text),StrToInt(BSelEdit.Text));
                     contador:=contador+1;
                end;
            end // if (controlacheckbox)
            else
            begin
                if (CheckBox3.Checked)then
                begin
                    SFP := RGB2SFP(r,g,b);

                    if (MinS < MaxS) then
                      begin
                        if (SFP.S <= MaxS) and (SFP.S >= MinS)
                        then check := check + 1;
                      end
                    else
                      begin
                        if (((SFP.S <= MaxS) and (SFP.S >= 0)) or (SFP.S >= MinS))
                        then check := check + 1;
                      end;

                    if (MinF < MaxF) then
                      begin
                        if (SFP.F <= MaxF) and (SFP.F >= MinF)
                        then check := check + 1;
                      end
                    else
                      begin
                        if (((SFP.F <= MaxF) and (SFP.F >= 0)) or (SFP.F >= MinF))
                        then check := check + 1;
                      end;

                    if (MinP < MaxP) then
                      begin
                        if (SFP.P <= MaxP) and (SFP.P >= MinP)
                        then check := check + 1;
                      end
                    else
                      begin
                        if (((SFP.P <= MaxP) and (SFP.P >= 0)) or (SFP.P >= MinP))
                        then check := check + 1;
                      end;
                    if (check = 3) then
                    begin
                      image1.picture.bitmap.canvas.pixels[i,j]:=rgb(StrToInt(RSelEdit.Text),StrToInt(GSelEdit.Text),StrToInt(BSelEdit.Text));
                      contador:=contador+1;
                    end;

                    check := 0;



                end   // if (CheckBox3.Checked)
                else
                begin
                    image1.picture.bitmap.canvas.pixels[i,j]:=rgb(StrToInt(RSelEdit.Text),StrToInt(GSelEdit.Text),StrToInt(BSelEdit.Text));
                    contador:=contador+1;
                end;
            end;  //fim do else do if (controlacheckbox)
        //---------------
        end;
      end;
     end;


     Label11.caption:='Pixels= '+ inttostr(contador);
     Label12.caption:='Pixels= '+ inttostr(totalp);
     Label23.Caption:='Area = '+ floattostrf((contador/totalp)*100,ffFixed,13,5) +' % ';
     Label24.Caption:='Area = '+ floattostrf((contador)*2.54*2.54/(Sqr(strtofloat(Edit25.Text))+1E-60),ffExponent,5,2) +' cm2 ';
     Label30.Caption:='Area = '+ floattostrf((totalp)*2.54*2.54/(Sqr(strtofloat(Edit25.Text))+1E-60),ffExponent,5,2) +' cm2 ';

      SaveImageButton.Enabled := true;
      Button3.Enabled := true; //reset image enabled :D
end;


procedure TMainForm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  SFP: SFPvalue;
begin
   SFP := RGB2SFP(getRvalue(image1.Canvas.Pixels[X,Y]),getGvalue(image1.Canvas.Pixels[X,Y]),getBvalue(image1.Canvas.Pixels[X,Y]));
   Label13.Caption:='S = '+ floattostrf(SFP.S,ffFixed,5,1) +'  F = '+ floattostrf(SFP.F,ffFixed,5,1);
   if SFP.P = -1 then
       Label13.Caption := Label13.Caption + '  P = greyscale'
   else
       Label13.Caption := Label13.Caption +'  P = ' + floattostrf(SFP.P,ffFixed,5,1);
   Label6.Caption:='R = '+ Inttostr(getRvalue(image1.Canvas.Pixels[X,Y]))+'  G = '+ Inttostr(getGvalue(image1.Canvas.Pixels[X,Y])) +'   B = '+Inttostr(getbvalue(image1.Canvas.Pixels[X,Y]));
   Label7.Caption:='X = '+ InttoStr(X)+ '     Y = '+ InttoStr(Y);
end;


procedure TMainForm.Button4Click(Sender: TObject);
var fi:textfile;
begin
  if savedialog1.execute then
  begin
     assignfile(fi,savedialog1.filename);
     rewrite(fi);
     writeln(fi,'Subject: ', edit26.text );
     writeln(fi,'Selected point');
     writeln(fi,'x = ',edit7.text ,' y =' ,edit8.text );
     writeln(fi,'r = ',edit9.text  , ' g = ',edit10.text , ' b = ',edit11.text);
     writeln(fi,'R min = ',edit1.text ,' R max = ',edit4.text );
     writeln(fi,'G min = ',edit2.text ,' G max = ',edit5.text );
     writeln(fi,'B min = ',edit3.text ,' B max = ',edit6.text );
     writeln(fi,label17.caption);
     writeln(fi,label18.caption);
     writeln(fi,label19.caption);

     writeln(fi,'color range = ',edit12.text);
     writeln(fi,'dpi = ',edit25.text);

     writeln(fi,label26.caption);
     writeln(fi,label25.caption);
     writeln(fi,label20.caption);
     writeln(fi,label28.caption);
     writeln(fi,label22.caption);
     writeln(fi,label32.caption);
     writeln(fi,label31.caption);
     writeln(fi,label33.caption);
     writeln(fi,label34.caption);

     writeln(fi,label27.caption);
     writeln(fi,label12.caption);
     writeln(fi,label30.caption);

     writeln(fi,label29.caption);
     writeln(fi,label11.caption);
     writeln(fi,label24.caption);
     writeln(fi,label23.caption);

     writeln(fi,'Description: ', edit27.text );

     if(CheckBox2.Checked)then
     begin
      writeln(fi,'de R/G = '+edit13.text+'/'+edit14.text+' a R/G = '+edit19.text+'/'+edit20.text);
      writeln(fi,'de R/G = '+edit15.text+'/'+edit16.text+' a R/G = '+edit21.text+'/'+edit22.text);
      writeln(fi,'de R/G = '+edit17.text+'/'+edit18.text+' a R/G = '+edit23.text+'/'+edit24.text);
     end;
     closefile(fi);
  end;
end;

procedure TMainForm.CheckBox3Click(Sender: TObject);
begin
 if (CheckBox3.Checked)  then   controlacheckbox:= false
 else controlacheckbox:= true;
end;


procedure TMainForm.SaveImageButtonClick(Sender: TObject);
begin
  if SavePictureDialog.Execute then
  begin
    Image1.Picture.SaveToFile(SavePictureDialog.FileName);
    SaveImageButton.Enabled := false;
  end;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(OpenDialog1.FileName);
end;

procedure TMainForm.CheckBox4Click(Sender: TObject);
begin
  if Edit34.Enabled = false then
  begin
    Edit34.Enabled := true;
    Edit35.Enabled := true;
    Edit36.Enabled := true;
  end
  else
  begin
    Edit34.Enabled := false;
    Edit35.Enabled := false;
    Edit36.Enabled := false;
  end;
end;

end.
