unit RoyalDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyWings, FlyUtils, SwimSwim, SwimUtils,
  QuackQuack, QuackUtils;

type
  TRoyalDuck = class(TDucktype)
  public
    constructor Create;
    function fly :String;
  end;

implementation

constructor TRoyalDuck.Create;
begin
  FQuackBehavior := TQuackQuack.Create;
  FFlyBehavior := TWings.Create;
  FSwimBehavior := TSwimSwim.Create;
end;

function TRoyalDuck.fly: String;
begin
  Result := FFlyBehavior.fly;
end;

end.
