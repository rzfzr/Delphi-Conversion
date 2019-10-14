program extractrgb;

uses
  Forms,
  mainunit in 'mainunit.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
