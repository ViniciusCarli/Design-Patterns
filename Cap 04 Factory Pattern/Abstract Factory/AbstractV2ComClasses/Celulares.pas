unit Celulares;

interface

uses
  Celular;

type
  TGalaxy = class(TCelular)
  private
    function NomeCelular : string; override;
    function TamanhoDaTela : string; override;
    function MemoriaRAM : string; override;
  end;

  TRedmi = class(TCelular)
  private
    function NomeCelular : string; override;
    function TamanhoDaTela : string; override;
    function MemoriaRAM : string; override;
  end;

implementation

{ TGalaxy }

function TGalaxy.MemoriaRAM: string;
begin
inherited;
  Result := '2GB';
  Writeln(Result);
end;

function TGalaxy.NomeCelular: string;
begin
inherited;
  Result := 'Samsung Galaxy 8';
  Writeln(Result);
end;

function TGalaxy.TamanhoDaTela: string;
begin
inherited;
  Result := '6 polegadas';
  Writeln(Result);
end;

{ TRedmi }

function TRedmi.MemoriaRAM: string;
begin
inherited ;
  Result := '4GB';
  Writeln(Result);
end;

function TRedmi.NomeCelular: string;
begin
inherited ;
  Result := 'Xiaomi RedMi V5';
  Writeln(Result);
end;

function TRedmi.TamanhoDaTela: string;
begin
inherited;
  Result := '7 polegadas';
  Writeln(Result);
end;

end.

