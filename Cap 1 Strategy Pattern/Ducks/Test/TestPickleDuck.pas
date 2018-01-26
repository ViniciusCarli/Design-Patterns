unit TestPickleDuck;

interface

uses
  TestFramework, System.SysUtils, SwimUtils, QuackQuack, FlyUtils, SwimSwim,
  DuckUtils,
  FlyPickleMagic, PickleDuck, QuackUtils;

type

  TestTPickleDuck = class(TTestCase)
  strict private
    FPickleDuck: TPickleDuck;
    FFlyBehavior: FlyUtils.IFlyBehavior;
    FPickleMagic : TPickleMagic;
  published
    procedure TestTypeDuckPickle;
    procedure TestFlyDuckPickle;

  end;

implementation

{ TestTRoyalDuck }

procedure TestTPickleDuck.TestFlyDuckPickle;
begin
  FPickleDuck := TPickleDuck.Create;
  CheckEqualsString('Fly Pickle Magic', FPickleMagic.fly);
end;

procedure TestTPickleDuck.TestTypeDuckPickle;
begin
  FPickleDuck := TPickleDuck.Create;
  CheckEquals(FPickleDuck.ClassType, TPickleDuck);
end;


initialization
  RegisterTest(TestTPickleDuck.Suite);
end.

