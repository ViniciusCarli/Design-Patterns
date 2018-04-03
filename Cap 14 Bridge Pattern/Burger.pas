unit Burger;

interface

type TBurger = class
  procedure Nome;
  procedure Ingredientes;
  procedure Adicionais;
  procedure Combo;
end;

implementation

{ TBurger }

procedure TBurger.Adicionais;
begin
  Writeln('Pickles e Farrofa de Bacon');
end;

procedure TBurger.Combo;
begin
  Writeln('Possibilidade de comprar com um combo com frita e refrigerante');
end;

procedure TBurger.Ingredientes;
begin
  Writeln('Pão Brioche, Alface, Hamburger e Queijo.');
end;

procedure TBurger.Nome;
begin
  Writeln('XSimplão');
end;

end.
