unit PizzaFactory;

interface

uses
  Classes,PizzaStore;

type
  TTipoPizzaStore = (tpNYStore, tpChicagoStore);

  TPizzaFactory = class
  public
    function CriarPizza(const ATipoPizza: TTipoPizzaStore): TPizza;
  end;

implementation

uses
  NYStore,ChicagoStore;

function TPizzaFactory.CriarPizza(const ATipoPizza: TTipoPizzaStore): TPizza;
begin
  Result := nil;
  case ATipoPizza of
    tpNYStore:
      Result := TNYPizzaStore.Create;
    tpChicagoStore:
      Result := TChicagoPizzaStore.Create;
  end;
end;

end.
