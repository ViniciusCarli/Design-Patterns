unit BicPenBlue;

interface

uses
  BluePaint, PaintUtils, ShellUtils, PlasticShell, PenUtils, System.SysUtils;

type
  TBicPenBlue = class(TPentype)
    public
      constructor Create; overload;
  end;

implementation

{ TPremiumPen }

constructor TBicPenBlue.Create;
begin
  FShellBehavior := TPlasticShell.Create;
  FPaintBehavior := TBluePaint.Create;
end;
end.

