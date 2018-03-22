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

    constructor Create(PaintBehavior :TPaintBehavior;ShellBehavior : TShellBehavior); reintroduce;
  end;

implementation

{ TPentype }

constructor TPentype.Create(PaintBehavior: TPaintBehavior;
  ShellBehavior: TShellBehavior);
begin
  Self.FPaintBehavior := PaintBehavior;
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
