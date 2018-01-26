unit TestRocketDuck;

interface

uses
  TestFramework, System.SysUtils, SwimUtils, FlyRocket, FlyUtils, DuckUtils, SwimFloat,
  RocketDuck, QuackQuack, QuackUtils;

type

  TestTRocketDuck = class(TTestCase)
  strict private
    FRocketDuck: TRocketDuck;
  published
    procedure TestTypeDuckRocket;
    procedure TestFlyDuckRocket;
    procedure TestSwimDuckRocket;
    procedure TestQuackDuckRocket;
  end;

implementation


procedure TestTRocketDuck.TestFlyDuckRocket;
begin
  FRocketDuck := TRocketDuck.Create;
  CheckEqualsString('Utilize Rockets', FRocketDuck.fly);
end;

procedure TestTRocketDuck.TestQuackDuckRocket;
begin
  FRocketDuck := TRocketDuck.Create;
  CheckEqualsString('Quack',FRocketDuck.Quack);
end;

procedure TestTRocketDuck.TestSwimDuckRocket;
begin
  FRocketDuck := TRocketDuck.Create;
  CheckEqualsString('He Floats',FRocketDuck.Swim);
end;

procedure TestTRocketDuck.TestTypeDuckRocket;
begin
  FRocketDuck := TRocketDuck.Create;
  CheckEquals(FRocketDuck.ClassType, TRocketDuck);
end;


initialization
  RegisterTest(TestTRocketDuck.Suite);
end.

