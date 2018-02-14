unit CHPizzaStore;

interface

uses
  PizzaStore;
type
  TCHPizzaStore = class(TInterfacedObject, IPizzaStore)
    function createPizza(): String;
  end;


implementation

{ TNYPizzaStore }

function TCHPizzaStore.createPizza: String;
begin
  Result = ('CHPizza');
end;

end.

