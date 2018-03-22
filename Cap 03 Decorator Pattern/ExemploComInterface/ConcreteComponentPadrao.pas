unit ConcreteComponentPadrao;

interface

uses
  Component, System.SysUtils;

type
  TPaoPadrao = class(TInterfacedObject, ISanduiche)
  private
    function ObterPreco: double;
    function ObterDados: string;
  end;

implementation

{ TSanduiche }

function TPaoPadrao.ObterDados: string;
begin
  Result := 'Pão de Hamburger';
end;

function TPaoPadrao.ObterPreco: double;
begin
  Result := 3;
end;

end.
