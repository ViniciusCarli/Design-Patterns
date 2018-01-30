unit Subject;

interface
type
  ISubject = interface
    procedure RegisterObserver;
    procedure RemoveObserver;
    procedure NotifyObserver;
  end;

implementation

end.

