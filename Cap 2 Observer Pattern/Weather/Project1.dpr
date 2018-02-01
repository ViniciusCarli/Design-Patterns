program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Observer in 'Observer.pas',
  Subject in 'Subject.pas',
  WeatherCentral in 'WeatherCentral.pas',
  Display in 'Display.pas',
  Observerteste2 in '..\VLCProject\Observerteste2.pas';

var
  Data: TWeatherCentral;
  Display: TDisplay;
  ObserverTeste : TObserverTeste2;
begin
  Data := TWeatherCentral.Create;
  Display := TDisplay.Create(Data);
  ObserverTeste := TObserverTeste2.Create;
  try

    Data.RegisterObserver(ObserverTeste);
    Data.RegisterObserver(Display);
    Data.RemoveObserver(Display);


    Data.SetMeasurements(22, 15, 30);
    Data.SetMeasurements(14, 06, 35);
    Data.SetMeasurements(65, 22, 39);
    Data.SetMeasurements(2, 1.55, 0.3);
    Data.SetMeasurements(-14, 0.5, -11);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
