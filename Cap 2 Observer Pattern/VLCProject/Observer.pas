unit Observer;

interface

uses
  WeatherData;
type
  IObserver = interface
    procedure Update(Temperature,Humidity,Pressure : double);
  end;

implementation

end.

