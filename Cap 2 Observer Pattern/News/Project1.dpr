program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Observer in 'Observer.pas',
  WeatherData in 'WeatherData.pas',
  Subject in 'Subject.pas',
  ConcreteSubject in 'ConcreteSubject.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
