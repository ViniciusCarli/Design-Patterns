unit CommandInterface;

interface

type
  ICommand = interface
    procedure Execute;
    procedure Undo;
  end;

implementation

end.

