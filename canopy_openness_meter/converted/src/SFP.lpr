program SFP;

{$MODE Delphi}

uses
  Forms, Interfaces,
  MainUnit in 'MainUnit.pas' {MainForm},
  Unit2 in 'unit2.pas' {f_about};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);

  Application.CreateForm(Tf_about, f_about);

  Application.Run;
end.
