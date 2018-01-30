unit ConcreteSubject;

interface

uses
  Subject;

type
  TWeatherData = class(TInterfacedObject, ISubject)
    Temperature: double;
    Humidity: double;
    Pressure: double;
    procedure RegisterObserver;
    procedure RemoveObserver;
    procedure NotifyObserver;
  end;

implementation

{ TWeatherData }

procedure TWeatherData.NotifyObserver;
begin

end;

procedure TWeatherData.RegisterObserver;
begin

end;

procedure TWeatherData.RemoveObserver;
begin

end;

end.
