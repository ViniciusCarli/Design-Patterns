unit DecoratorOnion;

interface

uses
  Decorator;

type
  TOnionDecorator = class(TDecorator)
  protected
    function ObterPreco : double; override;
    function ObterDados: string; override;
  end;

implementation

{ TBaconDecorator }

function TOnionDecorator.ObterDados: string;
begin
  Result := inherited ObterDados;
  Result := Result + ', Onion Rings';
end;

function TOnionDecorator.ObterPreco: double;
begin
  Result := inherited ObterPreco;
  Result := Result + 2;
end;

end.
