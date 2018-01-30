unit ConcreteSubject;

interface

uses
  System.Generics.Collections, System.SysUtils, Observer, WeatherData;

type
  FSubject = class
    private
      FObservers : TList<IObserver>;
//      FTemperature : ;
    public
      procedure RegisterObserver(Observer : IObserver);
      procedure RemoveObserver(Observer : IObserver);
      procedure NotifyObserver;
  end;


implementation

{ FSubject }

procedure FSubject.NotifyObserver;
var
  VObserver : IObserver;
begin
  for VObserver in FObservers do
    VObserver.Update(Temperature,Humidity,Pressure)


end;

procedure FSubject.RegisterObserver;
begin

end;

procedure FSubject.RemoveObserver;
begin

end;

end.
