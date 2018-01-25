unit RocketDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyUtils, SwimUtils, SwimFloat, FlyRocket,
  QuackUtils, QuackQuack;

type
  TRocketDuck = class(TDucktype)
  public
    constructor Create;
  end;

implementation

constructor TRocketDuck.Create;
begin
  FQuackBehavior := TQuackQuack.Create;
  FFlyBehavior := TRocket.Create;
  FSwimBehavior := TFloat.Create;
end;

end.
