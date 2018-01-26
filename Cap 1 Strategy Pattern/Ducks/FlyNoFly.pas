unit FlyNoFly;

interface
uses
  FlyUtils;

type
  TNoFly = class(TInterfacedObject, IFlyBehavior)
  public
    function fly: string;
    constructor Create;
  end;

implementation
constructor TNoFly.Create;
begin

end;

function TNoFly.fly: string;
begin
  Readln;
  Writeln('Do not Fly');
end;

end.

