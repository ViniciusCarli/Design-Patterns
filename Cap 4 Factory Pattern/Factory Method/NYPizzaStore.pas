unit NYPizzaStore;

interface

uses
  PizzaStore;
type
  TNYPizzaStore = class(TInterfacedObject, IPizzaStore)
    function createPizza(): String;
  end;


implementation

{ TNYPizzaStore }

function TNYPizzaStore.createPizza: String;
begin
  Result = ('NYPizza');
end;

end.
