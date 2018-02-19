unit ChicagoStore;

interface

uses
  PizzaStore;

type
  TChicagoPizzaStore = class(TPizza)
    function Stores: string; override;
  end;

implementation

function TChicagoPizzaStore.Stores: string;
begin
  Result :='ChicagoStore';
end;

end.
