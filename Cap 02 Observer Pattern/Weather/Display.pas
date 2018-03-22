unit Display;

interface

uses
  Observer, WeatherCentral, Subject, System.SysUtils;

type
  TDisplay = class(TInterfacedObject, IObserver)
  private
    FTemperature: double;
    FHumidity: double;
    FPressure: double;
    FWeatherCentral: ISubject;
  public
    constructor Create(Weather: ISubject);
    procedure Update(Temp, Hum, Press: double);
    procedure Display;
  end;

implementation

{ TDisplay }

constructor TDisplay.Create(Weather: ISubject);
begin
  FWeatherCentral := Weather;
  FWeatherCentral.RegisterObserver(Self);
end;

procedure TDisplay.Display;
begin
  Writeln(Format('Temperature: %n, Humidity: %n, Pressure: %n',
    [FTemperature, FHumidity, FPressure]));
  Readln;
end;

procedure TDisplay.Update(Temp, Hum, Press: double);
begin
  FTemperature := Temp;
  FHumidity := Hum;
  FPressure := Press;
  Display;
end;

end.
