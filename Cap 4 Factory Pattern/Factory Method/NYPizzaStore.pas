unit NYPizzaStore;

interface

uses
  PizzaStore;
type
  TNYPizzaStore = class(FPizzaStore)
    function createPizza(PizzaType : string) : string;
  end;


implementation

{ TNYPizzaStore }

function TNYPizzaStore.createPizza(PizzaType : string) : string;
begin
  Result := ('NYPizza');
end;

end.
