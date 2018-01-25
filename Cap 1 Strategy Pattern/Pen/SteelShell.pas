unit SteelShell;

interface

uses
  ShellUtils;

type
  TStellShell = class(TInterfacedObject, TShellBehavior)
  public
    procedure Shell;
    constructor Create;
  end;

implementation

{ TStellShell }

constructor TStellShell.Create;
begin

end;

procedure TStellShell.Shell;
begin
  Writeln('Steel Shell');
  Readln;
end;

end.
