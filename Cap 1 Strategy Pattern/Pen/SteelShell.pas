unit SteelShell;

interface

uses
  ShellUtils, System.SysUtils;

type
  TStellShell = class(TInterfacedObject, TShellBehavior)
  public
    function Shell:string;
    constructor Create;
  end;

implementation

{ TStellShell }

constructor TStellShell.Create;
begin

end;

function TStellShell.Shell:string;
begin
  Result := 'A';
end;

end.
