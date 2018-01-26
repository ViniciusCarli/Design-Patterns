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
    procedure TestQuackDuckPickle;
    procedure TestSwimDuckPickle;

  end;

implementation

{ TestTRoyalDuck }

procedure TestTPickleDuck.TestFlyDuckPickle;
begin
  FPickleDuck := TPickleDuck.Create;
  CheckEqualsString('Fly Pickle Magic', FPickleMagic.fly);
end;

procedure TestTPickleDuck.TestQuackDuckPickle;
begin
  FPickleDuck := TPickleDuck.Create;
  CheckEqualsString('Quack',FPickleDuck.Quack);
end;

procedure TestTPickleDuck.TestSwimDuckPickle;
begin
  FPickleDuck := TPickleDuck.Create;
  CheckEqualsString('Normal Swim',FPickleDuck.Swim);
end;

procedure TestTPickleDuck.TestTypeDuckPickle;
begin
  FPickleDuck := TPickleDuck.Create;
  CheckEquals(FPickleDuck.ClassType, TPickleDuck);
end;


initialization
  RegisterTest(TestTPickleDuck.Suite);
end.

