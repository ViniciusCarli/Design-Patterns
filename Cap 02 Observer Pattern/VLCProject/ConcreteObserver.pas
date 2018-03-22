unit ConcreteObserver;

interface

uses
  Observer, WeatherCentral, Subject, System.SysUtils;

type
  TConcreteObserver = class(TInterfacedObject, IObserver)
  public
    FTemperature: double;
    FHumidity: double;
    FPressure: double;
    FWeatherCentral: ISubject;
  public
    procedure Update(Temp, Hum, Press: double);
  end;

implementation

{ TConcreteObserver }
procedure TConcreteObserver.Update(Temp, Hum, Press: double);
begin
  FTemperature := Temp;
  FHumidity := Hum;
  FPressure := Press;
end;

end.
