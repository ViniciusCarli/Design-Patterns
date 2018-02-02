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
    function HeatIndex(FTemp, FHumi: double) :double;
    function RegisterObserver(Observer: IObserver): Integer;
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

function TWeatherCentral.HeatIndex(FTemp, FHumi: double): double;
begin
  NHeatIndex := (-42.379 + 2.04901523 * FTemp + 10.14333127 * FHumi - 0.22475541
    * FTemp * FHumi - 0.00683783 * FTemp * FTemp - 0.05481717 * FHumi * FHumi +
    0.00122874 * FTemp * FTemp * FHumi + 0.00085282 * FTemp * FTemp * FTemp -
    0.00000199 * FTemp * FTemp * FTemp * FTemp);

  Result := NHeatIndex;
end;

procedure TWeatherCentral.NotifyObserver;
var
  ObserverCount: IObserver;
begin
  for ObserverCount in FObservers do
    ObserverCount.Update(FTemperature, FHumidity, FPressure);
end;

function TWeatherCentral.RegisterObserver(Observer: IObserver): Integer;
begin
  FObservers.Add(Observer);
end;

procedure TWeatherCentral.RemoveObserver(Observer: IObserver);
begin
  for Observer in FObservers do
    FObservers.Delete(FObservers.IndexOf(Observer));
end;

procedure TWeatherCentral.SetMeasurements(Temp, Hum, Press: double);
begin
  FTemperature := Temp;
  FHumidity := Hum;
  FPressure := Press;
  ChangeMeasurements;
  HeatIndex(FTemperature, FHumidity);
end;

end.
