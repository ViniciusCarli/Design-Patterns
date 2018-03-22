unit ConcreteComponentAustraliano;

interface

uses
  Component, System.SysUtils;

type
  TAustraliano = class(TInterfacedObject, ISanduiche)
  private
    function ObterPreco: double;
    function ObterDados: string;
  end;

implementation

{ TSanduiche }

function TAustraliano.ObterDados: string;
begin
  Result := 'Pão Australiano';
end;

function TAustraliano.ObterPreco: double;
begin
  Result := 5;
end;

end.
