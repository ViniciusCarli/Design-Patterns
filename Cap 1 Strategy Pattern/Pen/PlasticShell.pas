unit PlasticShell;

interface

uses
  ShellUtils;

type
  TPlasticShell = class(TInterfacedObject, TShellBehavior)
  public
    procedure Shell;
    constructor Create;
  end;

implementation

{ TStellShell }

constructor TPlasticShell.Create;
begin

end;

procedure TPlasticShell.Shell;
begin
  Writeln('Plastic Shell');
  Readln;
end;

end.
