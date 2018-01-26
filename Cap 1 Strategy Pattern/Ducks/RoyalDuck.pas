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
  FSwimBehavior := TSwimSwim.Create;
  FFlyBehavior := TWings.Create;
end;


end.
