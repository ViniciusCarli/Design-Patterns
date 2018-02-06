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
  Result := inherited ObterDados;
  Result := Result + ', Molho Especial';
end;

function TMolhoDecorator.ObterPreco: double;
begin
  Result := inherited ObterPreco;
  Result := Result + 1.5;
end;

end.
