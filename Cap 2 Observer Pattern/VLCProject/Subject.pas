unit Subject;

interface

uses
  Observer;

type
  ISubject = interface
    procedure RegisterObserver(Observer : IObserver);
    procedure RemoveObserver(Observer : IObserver);
    procedure NotifyObserver;
  end;

implementation

end.
