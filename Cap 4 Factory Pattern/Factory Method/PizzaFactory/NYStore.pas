unit NYStore;

interface

uses
  PizzaStore;

type
  TNYPizzaStore = class(TPizza)
    function Stores: string; override;
  end;

implementation

function TNYPizzaStore.Stores: string;
begin
  Result := 'NYStore';
end;

end.
