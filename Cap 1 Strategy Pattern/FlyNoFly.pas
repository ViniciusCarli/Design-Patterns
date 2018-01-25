unit FlyNoFly;

interface
uses
  FlyUtils;

type
  TNoFly = class(TInterfacedObject, TFlyBehavior)
  public
    procedure fly;
    constructor Create;
  end;

implementation
constructor TNoFly.Create;
begin

end;

procedure TNoFly.Fly;
begin
  Readln;
  Writeln('Do not Fly');
end;

end.

