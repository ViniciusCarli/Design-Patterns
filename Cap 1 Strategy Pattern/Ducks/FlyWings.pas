unit FlyWings;

interface

uses
  FlyUtils, System.SysUtils;

type
  TWings = class(TInterfacedObject, IFlyBehavior)
  public
    function fly: string;
  end;

implementation

function TWings.fly: string;
begin
  Result := 'FlyWings';
end;

end.
