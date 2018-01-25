unit FlyPickleMagic;

interface

uses
  FlyUtils;

type
  TPickleMagic = class(TInterfacedObject, TFlyBehavior)
  public
    procedure fly;
  end;

implementation

procedure TPickleMagic.fly;
begin
  Readln;
  Writeln('Utilize Pickle Magic');

end;

end.
