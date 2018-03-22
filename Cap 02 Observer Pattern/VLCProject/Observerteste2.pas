unit Observerteste2;

interface

uses
  Observer, WeatherCentral, Subject, System.SysUtils;
type
  TObserverTeste2 = class (TInterfacedObject, IObserver)
    private
    FTemperature: double;
    FHumidity: double;
    FPressure: double;
  public
    procedure Update(Temp, Hum, Press: double);
    procedure Display;
  end;

implementation

{ TbserverTeste2 }

procedure TObserverTeste2.Display;
begin
  Writeln('Teste0');
end;

procedure TObserverTeste2.Update(Temp, Hum, Press: double);
begin
  FTemperature := Temp;
  FHumidity := Hum;
  FPressure := Press;
  Display;
end;

end.
