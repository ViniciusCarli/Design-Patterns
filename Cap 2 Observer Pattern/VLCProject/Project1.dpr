program Project1;

uses
  Vcl.Forms,
  Display in 'Display.pas' {Form1},
  ConcreteSubject in 'ConcreteSubject.pas',
  Observer in 'Observer.pas',
  Subject in 'Subject.pas',
  ConcreteObserver in 'ConcreteObserver.pas',
  DataModule in 'DataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;x
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
