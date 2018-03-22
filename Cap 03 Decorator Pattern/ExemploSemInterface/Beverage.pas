unit Beverage;

interface

type
  TBeverage = class
  public
    function getPrice: double; virtual; abstract;
    function getDescription: string; virtual; abstract;
  end;

implementation

end.

