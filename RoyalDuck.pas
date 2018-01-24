unit RoyalDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyWings, FlyUtils, SwimSwim, SwimUtils;

type
  TRoyalDuck = class(TDucktype)
  public
    constructor Create;
  end;

implementation

constructor TRoyalDuck.Create;
begin
  FFlyBehavior := TWings.Create;
  FSwimBehavior := TSwimSwim.Create;
end;

end.
