unit Computadores;

interface

uses
  Computador;

type
  TAllinOne = class(TComputador)
  private
    function NomeComputador : string; override;
    function NomeProcessador : string; override;
    function Armazenamento : string; override;
  end;

  TMiPro = class(TComputador)
  private
    function NomeComputador : string; override;
    function NomeProcessador : string; override;
    function Armazenamento : string; override;
  end;

implementation

{ TAllinOne }

function TAllinOne.Armazenamento: string;
begin
inherited;
  Result := '500 GB';
  Writeln(Result);
end;

function TAllinOne.NomeComputador: string;
begin
inherited;
  Result := 'Samsung All in One';
  Writeln(Result);
end;

function TAllinOne.NomeProcessador: string;
begin
inherited;
  Result := 'Intel Core i5';
  Writeln(Result);
end;

{ TMiPro }

function TMiPro.Armazenamento: string;
begin
inherited;
  Result := '1TB';
  Writeln(Result);
end;

function TMiPro.NomeComputador: string;
begin
inherited;
  Result := 'Xiaomi Mi Pro';
  Writeln(Result);
end;

function TMiPro.NomeProcessador: string;
begin
inherited;
  Result := 'Intel Core i7';
  Writeln(Result);
end;

end.
