unit RubberDuck;

interface

uses
  System.SysUtils, DuckUtils, FlyNoFly, FlyUtils, SwimUtils, SwimFloat,
  QuackUtils, QuackSqueak;

type
  TRubberDuck = class(TDucktype)
  public
    constructor Create;
  end;

implementation

constructor TRubberDuck.Create;
begin
  FQuackBehavior := TQuackSqueak.Create;
  FFlyBehavior := TNoFly.Create;
  FSwimBehavior := TFloat.Create;
end;


end.
