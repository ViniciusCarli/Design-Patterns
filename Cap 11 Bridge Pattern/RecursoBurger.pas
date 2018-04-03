unit RecursoBurger;

interface

uses
  InterfaceImp, Burger;

var
  Burger : TBurger;

type
  TRecursoBurger = class (TInterfacedObject, IImplementor)
    procedure Nome;
    procedure Ingredients;
    procedure Adicionais;
  end;

implementation

{ TRecursoBurger }

procedure TRecursoBurger.Adicionais;
begin
  Burger.Adicionais;
  Burger.Combo;
end;

procedure TRecursoBurger.Ingredients;
begin
  Burger.Ingredientes;
end;

procedure TRecursoBurger.Nome;
begin
  Burger.Nome;
end;

end.
