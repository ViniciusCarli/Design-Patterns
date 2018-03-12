unit Controller;

interface

uses
  CommandInterface;

type
  TController = class
    public
      procedure SetCommand(Command : ICommand);
      procedure ButtonPressed;
    private
      FNum : ICommand;
  end;

implementation

{ TController }

procedure TController.ButtonPressed;
begin
  FNum.Execute;
end;

procedure TController.SetCommand(Command: ICommand);
begin
  FNum := Command;
end;

end.
