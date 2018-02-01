unit TestPickleDuck;

interface

uses
  TestFramework, System.SysUtils, SwimUtils, QuackQuack, FlyUtils, SwimSwim,
  DuckUtils,
  FlyPickleMagic, PickleDuck, QuackUtils, RoyalDuck;

type

  TestTPickleDuck = class(TTestCase)
  strict private
    FPickleDuck: TPickleDuck;
    FFlyBehavior: FlyUtils.IFlyBehavior;
    FPickleMagic : TPickleMagic;
  published
    procedure TestTypeDuckPickle;
    procedure TestTypeInvalido;
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

procedure TestTPickleDuck.TestTypeInvalido;
begin
  FPickleDuck := TPickleDuck.Create;
  CheckEquals (FPickleDuck.ClassType,TRoyalDuck);
end;

initialization
  RegisterTest(TestTPickleDuck.Suite);
end.

