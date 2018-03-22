unit Proxy;

interface

uses
  Subject, RealSubject, System.SysUtils;

type
  TVendedor = class(TInterfacedObject, IReceberDados)
    Dados : TRealSubject;
    Produto : string;
    Preco : string;
    procedure ReceberProduto(produto : string);
    procedure ReceberPreco(preco : string);
    constructor Create;
  end;

implementation

{ TVendedor }

constructor TVendedor.Create;
begin
  Self.Produto := Produto;
  Self.Preco := Preco;
end;

procedure TVendedor.ReceberPreco(preco: string);
begin
  if Dados = nil then
  begin
    Dados := Self.Dados;
  end;
  Dados.ReceberPreco(Preco);
end;

procedure TVendedor.ReceberProduto(produto: string);
begin
  if Dados = nil then
  begin
    Dados := Self.Dados;
  end;
  Dados.ReceberProduto(Produto);
end;

end.
