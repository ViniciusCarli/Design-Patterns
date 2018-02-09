unit DecoratorHamburger;

interface

uses
  Decorator;

type
  THamburgerDecorator = class(TDecorator)
  protected
    function ObterPreco: double; override;
    function ObterDados: string; override;
  end;

implementation

{ TBaconDecorator }

function THamburgerDecorator.ObterDados: string;
begin
  Result := inherited + ', Hamburger';
end;

function THamburgerDecorator.ObterPreco: double;
begin
  Result := inherited + 3;
end;

end.
