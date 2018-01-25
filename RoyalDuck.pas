unit RoyalDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyWings, FlyUtils, SwimSwim, SwimUtils,
  QuackQuack, QuackUtils;

type
  TRoyalDuck = class(TDucktype)
  public
    constructor Create;
  end;

implementation

constructor TRoyalDuck.Create;
begin
  FQuackBehavior := TQuackQuack.Create;
  FFlyBehavior := TWings.Create;
  FSwimBehavior := TSwimSwim.Create;
end;

end.
