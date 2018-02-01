unit ConcreteObserver;

interface

uses
  Observer, WeatherCentral, Subject, System.SysUtils;

type
  TConcreteObserver = class(TInterfacedObject, IObserver)
  private
    FTemperature: double;
    FHumidity: double;
    FPressure: double;
    FWeatherCentral: ISubject;
  public
    constructor Create(Weather: ISubject);
    procedure Update(Temp, Hum, Press: double);
  end;

implementation

{ TConcreteObserver }

constructor TConcreteObserver.Create(Weather: ISubject);
begin
  FWeatherCentral := Weather;
  FWeatherCentral.RegisterObserver(Self);
end;


procedure TConcreteObserver.Update(Temp, Hum, Press: double);
begin
  FTemperature := Temp;
  FHumidity := Hum;
  FPressure := Press;
end;

end.
