unit Computador;

interface
type
  TComputador = class
    function NomeComputador : string; virtual; abstract;
    function NomeProcessador : string; virtual; abstract;
    function Armazenamento : string; virtual; abstract;
  end;

implementation

end.
