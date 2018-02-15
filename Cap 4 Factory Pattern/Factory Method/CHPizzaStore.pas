unit CHPizzaStore;

interface

uses
  PizzaStore;
type
  TCHPizzaStore = class(FPizzaStore)
    function createPizza(PizzaType : string) : string;override;
  end;


implementation

{ TNYPizzaStore }

function TCHPizzaStore.createPizza(PizzaType : string) : string;
begin
  Result := ('CHPizza');
end;

end.

