unit TestRubberDuck;


interface

uses
  TestFramework, System.SysUtils, SwimUtils, QuackUtils, QuackSqueak, FlyUtils, FlyNoFly,
  DuckUtils, RubberDuck, SwimFloat;

type
  // Test methods for class TRubberDuck

  TestTRubberDuck = class(TTestCase)
  strict private
    FRubberDuck: TRubberDuck;
  published
    procedure TestTypeDuckRubber;
    procedure TestFlyDuckRubber;
    procedure TestSwimDuckRubber;
    procedure TestQuackDuckRubber;
  end;

implementation

procedure TestTRubberDuck.TestFlyDuckRubber;
begin
  FRubberDuck := TRubberDuck.Create;
  CheckEqualsString('Do not Fly', FRubberDuck.fly);
end;

procedure TestTRubberDuck.TestQuackDuckRubber;
begin
  FRubberDuck := TRubberDuck.Create;
  CheckEqualsString('Squeak',FRubberDuck.Quack);
end;

procedure TestTRubberDuck.TestSwimDuckRubber;
begin
  FRubberDuck := TRubberDuck.Create;
  CheckEqualsString('He Floats',FRubberDuck.Swim);
end;

procedure TestTRubberDuck.TestTypeDuckRubber;
begin
  FRubberDuck := TRubberDuck.Create;
  CheckEquals(FRubberDuck.ClassType, TRubberDuck);
end;

initialization
  RegisterTest(TestTRubberDuck.Suite);
end.

