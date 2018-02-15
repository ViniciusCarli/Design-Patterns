unit NYStore;

interface

uses
  PizzaStore;

type
  TNYPizzaStore = class(TPizza)
    function FPizza: string; override;
  end;

implementation

function TNYPizzaStore.FPizza: string;
begin
  Result := 'NYStore';
end;

end.
