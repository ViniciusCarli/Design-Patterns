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
    procedure Swim;
    function Fly: string;
    procedure Quack;
    constructor CreateSwim(SwimBehavior : TSwimBehavior);
    constructor CreateFly(FlyBehavior : IFlyBehavior);
    constructor CreateQuack(QuackBehavior : TQuackBehavior);
end;

implementation

{ TDucktype }

constructor TDucktype.CreateFly(FlyBehavior: IFlyBehavior);
begin
  Self.FFlyBehavior := FlyBehavior;
end;

constructor TDucktype.CreateQuack(QuackBehavior: TQuackBehavior);
begin
  Self.FQuackBehavior := QuackBehavior;
end;

constructor TDucktype.CreateSwim(SwimBehavior: TSwimBehavior);
begin
  Self.FSwimBehavior := SwimBehavior;
end;

function TDucktype.Fly: string;
begin
  FFlyBehavior.Fly;
end;

procedure TDucktype.Quack;
begin
  FQuackBehavior.Quack;
end;

procedure TDucktype.Swim;
begin
  FswimBehavior.Swim
end;

end.
