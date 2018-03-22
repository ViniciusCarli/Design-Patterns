unit DecoratorCream;

interface

uses
  Decorator, Beverage;

type
  TCreamDecorator = class(TDecorator)
  public
    FBevarage : TBeverage;
    function getPrice: double; override;
    function getDescription: string; override;
    constructor Create(Bevarage : TBeverage);
    destructor Destroy; override;

  end;

implementation

{ TBaconDecorator }

constructor TCreamDecorator.Create(Bevarage: TBeverage);
begin
  FBevarage := Bevarage;
end;

destructor TCreamDecorator.Destroy;
begin
  FBevarage.Free;
  inherited;
end;

function TCreamDecorator.getDescription: string;
begin
  inherited;
  Result := FBevarage.getDescription + ', Cream';
end;

function TCreamDecorator.getPrice: double;
begin
  inherited;
  Result := FBevarage.getPrice + 3.5;
end;

end.
