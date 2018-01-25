unit BicPenBlack;

interface

uses
  BlackPaint, PaintUtils, ShellUtils, PlasticShell, PenUtils, System.SysUtils;

type
  TBicPenBlack = class(TPentype)
    public
      constructor Create;
  end;

implementation

{ TPremiumPen }

constructor TBicPenBlack.Create;
begin
  FShellBehavior := TPlasticShell.Create;
  FPaintBehavior := TBlackPaint.Create;
end;
end.

