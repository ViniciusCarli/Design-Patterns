unit Factory;

interface

uses
  Interfaces, Celulares, Computadores;

implementation
type
  TOpcao = (Redmi,Galaxy);

  TProdFactory =class
    procedure MostrarProdutos(const AOpcao :TOpcao);
  end;

procedure MostrarProdutos(const AOpcao :TOpcao);
var
  Marca: IFactoryMarca;
  Celular: ICelular;
  Computador: IComputador;
begin
  case AOpcao of
    Redmi:
    Marca := TRedmi.Create;
    Galaxy:
    Marca := TGalaxy.Create;
  end;
end;

end.
