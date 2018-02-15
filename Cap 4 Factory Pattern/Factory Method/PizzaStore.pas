unit PizzaStore;

interface
type
  FPizzaStore = class
    function createPizza(PizzaType : string) : string;virtual;
  end;
implementation

{ FPizzaStore }

{ FPizzaStore }

function FPizzaStore.createPizza(PizzaType: string): string;
begin
  Result := 'Pizza Escolhida' + PizzaType;
end;

end.
