program Diapasao_digital;

{$MODE Delphi}

uses
  Forms, Interfaces,
  Diapasao in 'Diapasao.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
