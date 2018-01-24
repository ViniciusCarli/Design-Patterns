unit DuckUtils;

interface

uses
  FlyUtils, System.SysUtils, SwimUtils;

type
  TDucktype = class
  public
    FFlyBehavior : TFlyBehavior;
    FSwimBehavior : TSwimBehavior;
//    procedure Display;
    procedure Swim;
    procedure Fly;
    constructor CreateSwim(SwimBehavior : TSwimBehavior);
    constructor CreateFly(FlyBehavior : TFlyBehavior);
end;

implementation

{ TDucktype }

constructor TDucktype.CreateFly(FlyBehavior: TFlyBehavior);
begin
  Self.FFlyBehavior := FlyBehavior;
end;

constructor TDucktype.CreateSwim(SwimBehavior: TSwimBehavior);
begin
  Self.FSwimBehavior := SwimBehavior;
end;

//procedure TDucktype.Display;
//begin
//  Writeln('Me pareço com um pato')
//end;

procedure TDucktype.Fly;
begin
  FFlyBehavior.fly;
end;

procedure TDucktype.Swim;
begin
  FswimBehavior.Swim
end;

end.
