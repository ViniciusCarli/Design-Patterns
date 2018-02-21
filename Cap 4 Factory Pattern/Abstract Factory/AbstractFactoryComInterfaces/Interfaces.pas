unit Interfaces;

interface

type
  ICelular = interface
    function NomeCelular : string;
    function TamanhoDaTela : string;
    function MemoriaRAM : string;
  end;

  IComputador = interface
    function NomeComputador : string;
    function NomeProcessador : string;
    function Armazenamento : string;
  end;

  IFactoryMarca = interface
    function ConsultarCelular : ICelular;
    function ConsultarComputador : IComputador;
  end;

implementation

end.
