unit SwimFloat;

interface
uses
  SwimUtils;

type
  TFloat = class(TInterfacedObject, TSwimBehavior)
  public
    function Swim: string;
    constructor Create;
  end;

implementation
constructor TFloat.Create;
begin

end;

function TFloat.Swim: string;
begin
  Result := 'He Floats';
end;
end.
