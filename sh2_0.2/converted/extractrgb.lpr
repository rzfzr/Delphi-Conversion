program extractrgb;

{$MODE Delphi}

uses
  Forms, Interfaces,
  mainunit in 'mainunit.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
