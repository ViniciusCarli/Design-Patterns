unit QuackSqueak;

interface
uses
  QuackUtils;

type
  TQuackSqueak = class(TInterfacedObject, TQuackBehavior)
  public
    function Quack: string;
  end;

implementation

function TQuackSqueak.Quack: string;
begin
  Result := 'Squeak';
end;
end.

