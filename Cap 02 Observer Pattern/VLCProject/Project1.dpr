program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  WeatherCentral in 'WeatherCentral.pas',
  Observer in 'Observer.pas',
  Subject in 'Subject.pas',
  ConcreteObserver in 'ConcreteObserver.pas',
  Observerteste2 in 'Observerteste2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
