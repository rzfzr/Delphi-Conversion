program Umidade_relativa;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {f_about};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Psychrometer - Versão Alpha 0.1';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tf_about, f_about);
  Application.Run;
end.
