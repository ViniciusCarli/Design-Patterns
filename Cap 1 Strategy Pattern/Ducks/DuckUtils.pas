unit DuckUtils;

interface

uses
  FlyUtils, System.SysUtils, SwimUtils, QuackUtils;

type
  TDucktype = class
  public
    FFlyBehavior : IFlyBehavior;
    FSwimBehavior : TSwimBehavior;
    FQuackBehavior : TQuackBehavior;
    function Swim: string;
    function Fly: string;
    function Quack: string;
end;

implementation

{ TDucktype }

function TDucktype.Fly: string;
begin
  Result := FFlyBehavior.Fly;
end;

function TDucktype.Quack: string;
begin
  Result := FQuackBehavior.Quack;
end;

function TDucktype.Swim: string;
begin
  Result := FswimBehavior.Swim
end;

end.
