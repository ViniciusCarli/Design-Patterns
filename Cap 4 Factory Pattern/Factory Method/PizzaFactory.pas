unit PizzaFactory;

interface

uses
  PizzaStore, NYPizzaStore;

type
  TTipoPizza = (NyPizza,ChPizza);
  TPizzaFactory = class
    class function CheckPizza(Tipo : TTipoPizza):string;
  end;

implementation

{ TPizzaFactory }

function TPizzaFactory.CheckPizza(Tipo : TTipoPizza):string;
begin
  case Tipo of
      NyPizza: Result := TNYPizzaStore.Create;
  end;
end;

end.
