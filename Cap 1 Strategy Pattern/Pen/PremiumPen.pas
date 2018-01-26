unit PremiumPen;

interface

uses
  BlackPaint, PaintUtils, ShellUtils, SteelShell, PenUtils, System.SysUtils;

type
  TPremiumPen = class(TPentype)
    public
      constructor Create;overload;
  end;

implementation

{ TPremiumPen }

constructor TPremiumPen.Create;
begin
  FShellBehavior := TStellShell.Create;
  FPaintBehavior := TBlackPaint.Create;
end;
end.
