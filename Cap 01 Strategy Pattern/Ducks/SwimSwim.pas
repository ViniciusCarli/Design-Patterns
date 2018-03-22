unit SwimSwim;

interface
uses
  SwimUtils;

type
  TSwimSwim = class(TInterfacedObject, TSwimBehavior)
  public
    function Swim: string;
  end;

implementation

function TSwimSwim.Swim: string;
begin
  Result := 'Normal Swim';
end;
end.

