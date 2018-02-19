unit Celulares;

interface

uses
  Interfaces;

implementation

type
  TGalaxy = class(TInterfacedObject, ICelular)
    function ConsultarComputador :string;
    function TamanhoDaTela : string;
    function MemoriaRAM : string;
  end;

  TRedmi = class(TInterfacedObject, ICelular)
    function TamanhoDaTela : string;
    function MemoriaRAM : string;
  end;

{ TGalaxy }

function TGalaxy.MemoriaRAM: string;
begin
  Result := '2GB';
end;

function TGalaxy.TamanhoDaTela: string;
begin
  Result := '6 polegadas';
end;

{ TRedmi }

function TRedmi.MemoriaRAM: string;
begin
  Result := '4GB';
end;

function TRedmi.TamanhoDaTela: string;
begin
  Result := '7 polegadas';
end;

end.

