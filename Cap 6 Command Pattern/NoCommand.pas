unit NoCommand;

interface

uses
  CommandInterface;
type
  TNoCommand = class(TInterfacedObject, ICommand)
    public
    procedure Execute;
    procedure Undo;
  end;
implementation

{ TGarageOnCommand }

{ TNoCommand }

procedure TNoCommand.Execute;
begin

end;

procedure TNoCommand.Undo;
begin

end;

end.
