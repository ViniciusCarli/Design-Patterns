unit PickleDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyUtils, SwimUtils, SwimSwim, FlyPickleMagic,
  QuackUtils, QuackQuack;

type
  TPickleDuck = class(TDucktype)
  public
    constructor Create;
  end;

implementation

constructor TPickleDuck.Create;
begin
  FQuackBehavior := TQuackQuack.Create;
  FFlyBehavior := TPickleMagic.Create;
  FSwimBehavior := TSwimSwim.Create;
end;

end.
