unit TestPremiumPen;

interface

uses
  TestFramework, System.SysUtils, PremiumPen, PaintUtils, SteelShell, BlackPaint,
  ShellUtils, PenUtils;

type

  TestTPremiumPen = class(TTestCase)
  strict private
    FPremiumPen: TPremiumPen;
  end;

implementation

initialization
  RegisterTest(TestTPremiumPen.Suite);
end.

