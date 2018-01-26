unit QuackQuack;

interface

uses
  QuackUtils;

type
  TQuackQuack = class(TInterfacedObject, TQuackBehavior)
  public
    function Quack: string;
  end;

implementation

function TQuackQuack.Quack: string;
begin
  Result := 'Quack';
end;

end.
