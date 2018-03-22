unit DecoratorQueijo;

interface

uses
  Decorator;

type
  TQueijoDecorator = class(TDecorator)
  protected
    function ObterPreco: double; override;
    function ObterDados: string; override;
  end;

implementation

{ TBaconDecorator }

function TQueijoDecorator.ObterDados: string;
begin
  Result := inherited + ', Queijo';
end;

function TQueijoDecorator.ObterPreco: double;
begin
  Result := inherited + 1.5;
end;

end.
