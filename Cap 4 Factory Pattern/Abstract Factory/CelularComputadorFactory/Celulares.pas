unit Celulares;

interface

uses
  Interfaces;


type
  TGalaxy = class(TInterfacedObject, ICelular)
  private
    function NomeCelular : string;
    function TamanhoDaTela : string;
    function MemoriaRAM : string;
  end;

  TRedmi = class(TInterfacedObject, ICelular)
  private
    function NomeCelular : string;
    function TamanhoDaTela : string;
    function MemoriaRAM : string;
  end;

implementation

{ TGalaxy }

function TGalaxy.MemoriaRAM: string;
begin
  Result := '2GB';
  Writeln(Result);
end;

function TGalaxy.NomeCelular: string;
begin
  Result := 'Samsung Galaxy 8';
  Writeln(Result);
end;

function TGalaxy.TamanhoDaTela: string;
begin
  Result := '6 polegadas';
  Writeln(Result);
end;

{ TRedmi }

function TRedmi.MemoriaRAM: string;
begin
  Result := '4GB';
  Writeln(Result);
end;

function TRedmi.NomeCelular: string;
begin
  Result := 'Xiaomi RedMi V5';
  Writeln(Result);
end;

function TRedmi.TamanhoDaTela: string;
begin
  Result := '7 polegadas';
  Writeln(Result);
end;

end.

