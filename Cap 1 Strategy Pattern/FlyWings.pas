unit FlyWings;

interface

uses
  FlyUtils;

type
  TWings = class(TInterfacedObject, TFlyBehavior)
  public
    procedure fly;
  end;

implementation

procedure TWings.fly;
begin
  Readln;
  Writeln('Utilize Wings');

end;

end.
