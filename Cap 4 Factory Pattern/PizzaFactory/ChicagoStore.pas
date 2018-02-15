unit ChicagoStore;

interface

uses
  PizzaStore;

type
  TChicagoPizzaStore = class(TPizza)
    function FPizza: string; override;
  end;

implementation

function TChicagoPizzaStore.FPizza: string;
begin
  Result :='ChicagoStore';
end;

end.
