unit DecoratorMilk;

interface

uses
  Decorator, Beverage;

type
  TMilkDecorator = class(TDecorator)
  public
    FBevarage : TBeverage;
    function getPrice: double; override;
    function getDescription: string; override;
    constructor Create(Bevarage : TBeverage);
    destructor Destroy; override;

  end;

implementation

{ TBaconDecorator }

constructor TMilkDecorator.Create(Bevarage: TBeverage);
begin
  FBevarage := Bevarage;
end;

destructor TMilkDecorator.Destroy;
begin
  FBevarage.Free;
  inherited;
end;

function TMilkDecorator.getDescription: string;
begin
  inherited;
  Result := FBevarage.getDescription + ', Milk';
end;

function TMilkDecorator.getPrice: double;
begin
  inherited;
  Result := FBevarage.getPrice + 1.5;
end;

end.
