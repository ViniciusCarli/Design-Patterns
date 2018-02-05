unit ConcreteComponent;

interface

uses
  Component, System.SysUtils;

type
  TSanduiche = class(TInterfacedObject, ISanduiche)
  private
    function ObterPreco : double;
    function ObterDados: string;
  end;

implementation

{ TSanduiche }


function TSanduiche.ObterDados: string;
begin
  Result := 'Pão Padrão';
end;

function TSanduiche.ObterPreco: double;
begin
  Result :=  3;
end;

end.
