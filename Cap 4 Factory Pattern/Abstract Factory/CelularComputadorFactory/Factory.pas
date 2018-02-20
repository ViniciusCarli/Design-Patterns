unit Factory;

interface

uses
  Interfaces, Celulares, Computadores, Marcas;

type
  TOpcao = (opXiaomi,opSamsung);

  TProdFactory = class
    procedure MostrarProdutos(const AOpcao :TOpcao);
  end;
var
    Marca : IFactoryMarca;

implementation


procedure MostrarProdutos(const AOpcao :TOpcao);
var
  Marca: IFactoryMarca;
  Samsung: TSamsung;
  Xiaomi: TXiaomi;
begin
  case AOpcao of
    opXiaomi:
      Marca := Xiaomi.Create;
    opSamsung:
      Marca := Samsung.Create;
  end;
end;

{ TProdFactory }

procedure TProdFactory.MostrarProdutos(const AOpcao: TOpcao);
var
  Celular : ICelular;
  Computador : IComputador;
begin
  Celular := Marca.ConsultarCelular;
  Computador := Marca.ConsultarComputador;

  Writeln(Celular.TamanhoDaTela);
  Writeln(Celular.MemoriaRAM);

  Writeln(Computador.NomeProcessador);
  Writeln(Computador.Armazenamento);
end;

end.
