unit PickleDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyUtils, SwimUtils, SwimSwim, FlyPickleMagic;

type
  TPickleDuck = class(TDucktype)
  public
    constructor Create;
  end;

implementation

constructor TPickleDuck.Create;
begin
  FFlyBehavior := TPickleMagic.Create;
  FSwimBehavior := TSwimSwim.Create;
end;

end.
