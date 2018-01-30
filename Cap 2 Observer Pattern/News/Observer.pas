unit Observer;

interface

type
  IObserver = interface
    procedure Update(Temperature,Humidity,Pressure: double);

  end;

implementation

end.
