program Diapasao_digital;

uses
  Forms,
  Diapasao in 'Diapasao.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
