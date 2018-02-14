unit PizzaFactory;

interface

uses
  PizzaStore;

type
  TPizzaFactory = class(TInterfacedObject,IPizzaStore)
    function CheckPizza():string;
  end;

implementation

{ TPizzaFactory }

function TPizzaFactory.CheckPizza: string;
begin

end;

end.
