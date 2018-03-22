unit Decorator;

interface

uses
  Beverage;

type
  TDecorator = class abstract(TBeverage)
  public
//    function getPrice: double; override;abstract;
    function getDescription: string; override; abstract;
  end;

implementation

end.
