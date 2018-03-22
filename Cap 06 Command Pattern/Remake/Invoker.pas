unit Invoker;

interface

uses
  System.Generics.Collections, CommandInterface, NoCommand;

type
  TInvoker = class
    public
      NoCommand : TNoCommand;
      OnCommands : TList<ICommand>;
      OffCommands : TList<ICommand>;
      Undo : ICommand;
      procedure SetCommand(num : integer;OnCommand, OffCommand : ICommand);
      procedure OnButton(num : Integer);
      procedure OffButton(num : Integer);
      procedure UndoButton;
      constructor Create;
  end;

implementation

{ TInvoker }

constructor TInvoker.Create;
var
I : Integer;
begin
  OnCommands := TList<ICommand>.Create;
  OffCommands := TList<ICommand>.Create;
  NoCommand := TNoCommand.Create;
  for I := 0 to 2 do
  begin
    OnCommands.Add(NoCommand);
    OffCommands.Add(NoCommand);
  end;
  Undo := NoCommand;
end;

procedure TInvoker.OffButton(num: Integer);
begin
  OffCommands.Items[num].Execute;
  Undo := OffCommands.Items[num];
end;

procedure TInvoker.OnButton(num: Integer);
begin
  OnCommands.Items[num].Execute;
  Undo := OnCommands.Items[num];
end;

procedure TInvoker.SetCommand(num: integer; OnCommand, OffCommand: ICommand);
begin
  OnCommands.Insert(num, OnCommand);
  OffCommands.Insert(num, OffCommand);
end;

procedure TInvoker.UndoButton;
begin
  Undo.Undo;
end;

end.
