unit WeatherCentral;

interface

uses
  Observer, Subject, System.Generics.Collections, System.SysUtils;

type
  TWeatherCentral = class(TInterfacedObject, ISubject)
    public
    FObservers: TList<IObserver>;
    NHeatIndex : double;
    FTemperature: double;
    FHumidity : double;
    FPressure : double;
    constructor Create;
    destructor Destroy(Observer: IObserver);
    function HeatIndex :double;
    procedure RegisterObserver(Observer: IObserver);
    procedure RemoveObserver(Observer: IObserver);
    procedure NotifyObserver;
    procedure SetMeasurements(Temp, Hum, Press: double);
    procedure ChangeMeasurements;
  end;

implementation

{ TWeatherCentral }

procedure TWeatherCentral.ChangeMeasurements;
begin
  NotifyObserver;
end;

constructor TWeatherCentral.Create;
begin
  FObservers := TList<IObserver>.Create;
end;

destructor TWeatherCentral.Destroy(Observer: IObserver);
begin
  FObservers.Free;
end;

function TWeatherCentral.HeatIndex :double;
begin
  Result := (-42.379 + 2.04901523 * FTemperature + 10.14333127 * FHumidity -0.22475541 *
  FTemperature * FHumidity -0.00683783 * FTemperature * FTemperature
  -0.05481717 * FHumidity * FHumidity + 0.00122874 * FTemperature * FTemperature
  * FHumidity + 0.00085282 * FTemperature * FTemperature * FTemperature -0.00000199 * FTemperature
  * FTemperature * FTemperature * FTemperature);

  NHeatIndex := Result;
end;

procedure TWeatherCentral.NotifyObserver;
var
  ObserverCount: IObserver;
begin
  for ObserverCount in FObservers do
    ObserverCount.Update(FTemperature, FHumidity, FPressure);
end;

procedure TWeatherCentral.RegisterObserver(Observer: IObserver);
begin
  FObservers.Add(Observer);
end;

procedure TWeatherCentral.RemoveObserver(Observer: IObserver);
begin
  FObservers.Delete(FObservers.IndexOf(Observer));
end;

procedure TWeatherCentral.SetMeasurements(Temp, Hum, Press: double);
begin
  FTemperature := Temp;
  FHumidity := Hum;
  FPressure := Press;
  ChangeMeasurements;
  HeatIndex;
end;

end.
