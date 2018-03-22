unit DecoratorMolhoEspecial;

interface

uses
  Decorator;

type
  TMolhoDecorator = class(TDecorator)
  protected
    function ObterPreco: double; override;
    function ObterDados: string; override;
  end;

implementation

{ TBaconDecorator }

function TMolhoDecorator.ObterDados: string;
begin
  Result := inherited + ', Molho Especial';
end;

function TMolhoDecorator.ObterPreco: double;
begin
  Result := inherited + 1.5;
end;

end.
