unit WeatherData;

interface

uses
  Observer;

type
  TWeatherData = class(TInterfacedObject, IObserver)
    Temperature: double;
    Humidity: double;
    Pressure: double;
    procedure SetMeasurements(Temperature, Humidity, Pressure: double);
    procedure ChangeMeasurements;
  end;

implementation

{ TWeatherData }

{ TWeatherData }

procedure TWeatherData.ChangeMeasurements;
begin

end;

procedure TWeatherData.SetMeasurements(Temperature, Humidity, Pressure: double);
begin

end;

end.
