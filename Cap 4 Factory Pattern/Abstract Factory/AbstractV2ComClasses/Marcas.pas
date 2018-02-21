unit Marcas;

interface

uses
  FactoryMarca,Celular,Computador;

type
  TSamsung = class(TFactoryMarca)
    function ConsultarCelular : TCelular; override;
    function ConsultarComputador : TComputador; override;
  end;

  TXiaomi = class(TFactoryMarca)
    function ConsultarCelular : TCelular; override;
    function ConsultarComputador : TComputador; override;
  end;

implementation

uses
  Computadores, Celulares;
{ TSamsung }

function TXiaomi.ConsultarCelular: TCelular;
begin
inherited;
  Result := TRedmi.Create;
end;

function TXiaomi.ConsultarComputador: TComputador;
begin
inherited;
  Result := TMiPro.Create;
end;

{ TSamsung }

function TSamsung.ConsultarCelular: TCelular;
begin
inherited;
  Result := TGalaxy.Create;
end;

function TSamsung.ConsultarComputador: TComputador;
begin
inherited;
  Result := TAllinOne.Create;
end;

end.
