unit BluePaint;

interface

uses
  PaintUtils;

type
  TBluePaint = class(TInterfacedObject, TPaintBehavior)
  public
    procedure Paint;
    constructor Create;
  end;

implementation

{ TStellShell }

constructor TBluePaint.Create;
begin

end;

procedure TBluePaint.Paint;
begin
  Writeln('Blue Paint');
end;

end.
