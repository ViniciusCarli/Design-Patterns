unit Computadores;

interface

uses
  Interfaces;

implementation

type
  TAllinOne = class(TInterfacedObject, IComputador)
    function ConsultarComputador : string;
    function NomeProcessador : string;
    function Armazenamento : string;
  end;

  TMiPro = class(TInterfacedObject, IComputador)
    function NomeProcessador : string;
    function Armazenamento : string;
  end;

{ TAllinOne }

function TAllinOne.Armazenamento: string;
begin
  Result := '500 GB';
end;

function TAllinOne.NomeProcessador: string;
begin
  Result := 'I5';
end;

{ TMiPro }

function TMiPro.Armazenamento: string;
begin
  Result := '1TB';
end;

function TMiPro.NomeProcessador: string;
begin
  Result := 'I7';
end;

end.
