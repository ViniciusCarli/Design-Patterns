unit RubberDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyNoFly, FlyUtils, SwimUtils, SwimFloat;

type
  TRubberDuck = class(TDucktype)
  public
    constructor Create;
  end;

implementation

constructor TRubberDuck.Create;
begin
  FFlyBehavior := TNoFly.Create;
  FSwimBehavior := TFloat.Create;
end;


end.
