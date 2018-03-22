unit DecoratorOnion;

interface

uses
  Decorator;

type
  TOnionDecorator = class(TDecorator)
  protected
    function ObterPreco: double; override;
    function ObterDados: string; override;
  end;

implementation

{ TBaconDecorator }

function TOnionDecorator.ObterDados: string;
begin
  Result := inherited + ', Onion Rings';
end;

function TOnionDecorator.ObterPreco: double;
begin
  Result := inherited + 2;
end;

end.
