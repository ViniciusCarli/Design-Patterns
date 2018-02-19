unit Interfaces;

interface

implementation
type
  ICelular = interface
    function TamanhoDaTela : string;
    function MemoriaRAM : string;
  end;

  IComputador = interface
    function NomeProcessador : string;
    function Armazenamento : string;
  end;

  IFactoryMarca = interface
    function ConsultarCelular : ICelular;
    function ConsultarComputador : IComputador;
  end;

end.
