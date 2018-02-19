unit PizzaStore;

interface

type
  TPizza = class
    function Stores: string; virtual; abstract;
    function Ingredients : string; virtual; abstract;
  end;

implementation

end.
