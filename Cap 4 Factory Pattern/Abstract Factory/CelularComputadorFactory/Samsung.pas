unit Samsung;

interface

uses
  Interfaces, Computadores, Celulares;

implementation

type
  TSamsung = class(TInterfacedObject, IFactoryMarca)
    function ConsultarCelular : ICelular;
    function ConsultarComputador : IComputador;
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
