unit PenUtils;

interface

uses
  PaintUtils, ShellUtils, System.SysUtils;

type
  TPentype = class
  public
    FPaintBehavior: TPaintBehavior;
    FShellBehavior: TShellBehavior;

    procedure Paint;
    procedure Shell;

    constructor CreatePaint(PaintBehavior : TPaintBehavior);
    constructor CreateShell(ShellBehavior : TShellBehavior);
  end;

implementation

{ TPentype }

constructor TPentype.CreatePaint(PaintBehavior: TPaintBehavior);
begin
  Self.FPaintBehavior := PaintBehavior;
end;

constructor TPentype.CreateShell(ShellBehavior: TShellBehavior);
begin
  Self.FShellBehavior := ShellBehavior;
end;

procedure TPentype.Paint;
begin
  Self.FPaintBehavior.Paint;
end;

procedure TPentype.Shell;
begin
  Self.FShellBehavior.Shell;
end;

end.
