unit FlyPickleMagic;

interface

uses
  FlyUtils;

type
  TPickleMagic = class(TInterfacedObject, IFlyBehavior)
  public
    function fly: string;
  end;

implementation

function TPickleMagic.fly: string;
begin
  Result := 'Fly Pickle Magic';
end;

end.
