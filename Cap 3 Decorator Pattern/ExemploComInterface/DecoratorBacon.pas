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
  Result := inherited + ', Bacon';
end;

function TBaconDecorator.ObterPreco: double;
begin
  Result := inherited + 2.5;
end;

end.
