unit Subject;

interface

uses
  Observer;

type
  ISubject = interface
    function RegisterObserver(Observer : IObserver): Integer;
    procedure RemoveObserver(Observer : IObserver);
    procedure NotifyObserver;
  end;

implementation

end.
