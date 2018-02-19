unit Xiaomi;

interface

uses
  Interfaces, Computadores, Celulares;

implementation

type
  TXiaomi = class(TInterfacedObject, IFactoryMarca)
    function ConsultarCelular : ICelular;
    function ConsultarComputador : IComputador;
  end;

{ TSamsung }

function TXiaomi.ConsultarCelular: ICelular;
begin
  Result := TRedmi.Create;
end;

function TXiaomi.ConsultarComputador: IComputador;
begin
  Result := TMiPro.Create;
end;

end.

