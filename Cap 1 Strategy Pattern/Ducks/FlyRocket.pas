unit FlyRocket;

interface

uses
  FlyUtils;

type
  TRocket = class(TInterfacedObject, TFlyBehavior)
  public
    procedure fly;
  end;

implementation

procedure TRocket.fly;
begin
  Readln;
  Writeln('Utilize Rockets');

end;

end.
