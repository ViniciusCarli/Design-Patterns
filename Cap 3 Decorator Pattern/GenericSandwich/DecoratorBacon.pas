unit DecoratorBacon;

interface

uses
  Decorator;

type
  TBaconDecorator = class(TDecorator)
  protected
    function ObterPreco: double; override;
    function ObterDados: string; override;
  end;

implementation

{ TBaconDecorator }

function TBaconDecorator.ObterDados: string;
begin
  Result := inherited ObterDados;
  Result := Result + ', Bacon';
end;

function TBaconDecorator.ObterPreco: double;
begin
  Result := inherited ObterPreco;
  Result := Result + 2.5;
end;

end.
