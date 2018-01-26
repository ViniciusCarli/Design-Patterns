unit TestBirbs;

interface

uses
  TestFramework, Birbs, ColorBehavior, BeakBehavior;

type
  // Test methods for class TBirbs

  TestTBirbs = class(TTestCase)
  strict private
    FBirbs: TBirbs;
  public

  end;

implementation



initialization
  // Register any test cases with the test runner
  RegisterTest(TestTBirbs.Suite);
end.

