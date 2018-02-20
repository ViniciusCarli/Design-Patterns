unit Marcas;

interface

uses
  Interfaces;

type
  TSamsung = class(TInterfacedObject, IFactoryMarca)
    function ConsultarCelular : ICelular;
    function ConsultarComputador : IComputador;
  end;

  TXiaomi = class(TInterfacedObject, IFactoryMarca)
    function ConsultarCelular : ICelular;
    function ConsultarComputador : IComputador;
  end;

implementation

uses
  Computadores, Celulares;
{ TSamsung }

function TXiaomi.ConsultarCelular: ICelular;
begin
  Result := TRedmi.Create;
end;

function TXiaomi.ConsultarComputador: IComputador;
begin
  Result := TMiPro.Create;
end;

{ TSamsung }

function TSamsung.ConsultarCelular: ICelular;
begin
  Result := TGalaxy.Create;
end;

function TSamsung.ConsultarComputador: IComputador;
begin
  Result := TAllinOne.Create;
end;

end.
