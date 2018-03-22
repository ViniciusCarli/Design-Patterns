unit TestRoyalDuck;

interface

uses
  TestFramework, System.SysUtils, SwimUtils, QuackQuack, FlyUtils, SwimSwim,
  DuckUtils,
  FlyWings, RoyalDuck, QuackUtils;

type

  TestTRoyalDuck = class(TTestCase)
  strict private
    FRoyalDuck: TRoyalDuck;
  published
    procedure TestTypeDuckRoyal;
    procedure TestFlyDuckRoyal;
    procedure TestSwimDuckRoyal;
    procedure TestQuackDuckRoyal;
  end;

implementation

{ TestTRoyalDuck }

procedure TestTRoyalDuck.TestFlyDuckRoyal;
begin
  FRoyalDuck := TRoyalDuck.Create;
  CheckEqualsString('FlyWings', FRoyalDuck.fly);
end;

procedure TestTRoyalDuck.TestQuackDuckRoyal;
begin
  FRoyalDuck := TRoyalDuck.Create;
  CheckEqualsString('Quack', FRoyalDuck.Quack);
end;

procedure TestTRoyalDuck.TestSwimDuckRoyal;
begin
  FRoyalDuck := TRoyalDuck.Create;
  CheckEqualsString('Normal Swim',FRoyalDuck.Swim);
end;

procedure TestTRoyalDuck.TestTypeDuckRoyal;
begin
  FRoyalDuck := TRoyalDuck.Create;
  CheckEquals(FRoyalDuck.ClassType, TRoyalDuck);
end;

initialization

RegisterTest(TestTRoyalDuck.Suite);

end.
