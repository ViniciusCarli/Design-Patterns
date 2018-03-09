unit Invoker;

interface

uses
  System.Generics.Collections, CommandInterface;

type
  TInvoker = class
    public
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
begin

end;

procedure TInvoker.OffButton(num: Integer);
begin

end;

procedure TInvoker.OnButton(num: Integer);
begin

end;

procedure TInvoker.SetCommand(num: integer; OnCommand, OffCommand: ICommand);
begin

end;

procedure TInvoker.UndoButton;
begin

end;

end.
