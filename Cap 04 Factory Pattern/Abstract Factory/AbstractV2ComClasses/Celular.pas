unit Celular;

interface
type
  TCelular = class
    function NomeCelular : string; virtual; abstract;
    function TamanhoDaTela : string; virtual; abstract;
    function MemoriaRAM : string; virtual; abstract;
  end;

implementation

end.
