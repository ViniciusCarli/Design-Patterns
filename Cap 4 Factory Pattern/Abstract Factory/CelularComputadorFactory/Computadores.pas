unit Computadores;

interface

uses
  Interfaces;


type
  TAllinOne = class(TInterfacedObject, IComputador)
  private
    function NomeComputador : string;
    function NomeProcessador : string;
    function Armazenamento : string;
  end;

  TMiPro = class(TInterfacedObject, IComputador)
  private
    function NomeComputador : string;
    function NomeProcessador : string;
    function Armazenamento : string;
  end;

implementation

{ TAllinOne }

function TAllinOne.Armazenamento: string;
begin
  Result := '500 GB';
  Writeln(Result);
end;

function TAllinOne.NomeComputador: string;
begin
  Result := 'Samsung All in One';
  Writeln(Result);
end;

function TAllinOne.NomeProcessador: string;
begin
  Result := 'Intel Core i5';
  Writeln(Result);
end;

{ TMiPro }

function TMiPro.Armazenamento: string;
begin
  Result := '1TB';
  Writeln(Result);
end;

function TMiPro.NomeComputador: string;
begin
  Result := 'Xiaomi Mi Pro';
  Writeln(Result);
end;

function TMiPro.NomeProcessador: string;
begin
  Result := 'Intel Core i7';
  Writeln(Result);
end;

end.
