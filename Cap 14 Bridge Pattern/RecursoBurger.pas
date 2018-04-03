unit RecursoBurger;

interface

uses
  InterfaceImp, Burger, System.SysUtils;

type
  TRecursoBurger = class (TInterfacedObject, IImplementor)
  public
    procedure Nome;
    procedure Ingredients;
    procedure Adicionais;
    constructor Create(Burger : TBurger);
  private
    Burger : TBurger;
  end;

implementation

{ TRecursoBurger }

procedure TRecursoBurger.Adicionais;
begin
  Self.Burger.Adicionais;
  Self.Burger.Combo;
end;

constructor TRecursoBurger.Create(Burger: TBurger);
begin
  Self.Burger := Burger;
end;

procedure TRecursoBurger.Ingredients;
begin
  Self.Burger.Ingredientes;
end;

procedure TRecursoBurger.Nome;
begin
  Self.Burger.Nome;
end;

end.
