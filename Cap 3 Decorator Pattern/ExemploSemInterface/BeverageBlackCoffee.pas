unit BeverageBlackCoffee;

interface

uses
  Beverage, System.SysUtils;

type
  TBlackCoffee = class(TBeverage)
  public
    function getPrice: double;override;
    function getDescription: string; override;
  end;

implementation

{ TSanduiche }

function TBlackCoffee.getDescription: string;
begin
  inherited;
  Result := 'Black Coffee';
end;

function TBlackCoffee.getPrice: double;
begin
  inherited;
  Result := 2.5;
end;

end.
