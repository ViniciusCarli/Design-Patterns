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
    FFlyBehavior: FlyUtils.IFlyBehavior;
    FWings: TWings;
  published
    procedure TestTypeDuck;
    procedure TestFlyDuck;

  end;

implementation

{ TestTRoyalDuck }

procedure TestTRoyalDuck.TestFlyDuck;
begin
  FRoyalDuck := TRoyalDuck.Create;
  CheckEqualsString('FlyWings', FWings.fly);
end;

procedure TestTRoyalDuck.TestTypeDuck;
begin
  FRoyalDuck := TRoyalDuck.Create;
  CheckEquals(FRoyalDuck.ClassType, TRoyalDuck);
end;

initialization

RegisterTest(TestTRoyalDuck.Suite);

end.
