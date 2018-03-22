unit FlyRocket;

interface

uses
  FlyUtils;

type
  TRocket = class(TInterfacedObject, IFlyBehavior)
  public
    function fly: string;
  end;

implementation

function TRocket.fly: string;
begin
  Result := 'Utilize Rockets';
end;

end.
