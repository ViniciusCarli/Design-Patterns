unit BlackPaint;

interface

uses
  PaintUtils;

type
  TBlackPaint = class(TInterfacedObject, TPaintBehavior)
  public
    procedure Paint;
    constructor Create;
  end;

implementation

{ TStellShell }

constructor TBlackPaint.Create;
begin

end;

procedure TBlackPaint.Paint;
begin
  Writeln('Black Paint');
end;

end.
