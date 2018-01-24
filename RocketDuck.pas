unit RocketDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyUtils, SwimUtils, SwimFloat, FlyRocket;

type
  TRocketDuck = class(TDucktype)
  public
    constructor Create;
  end;

implementation

constructor TRocketDuck.Create;
begin
  FFlyBehavior := TRocket.Create;
  FSwimBehavior := TFloat.Create;
end;

end.
