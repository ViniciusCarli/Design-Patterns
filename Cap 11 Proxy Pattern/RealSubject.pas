unit RealSubject;

interface

uses
  Subject;

type
  TRealSubject = class(TInterfacedObject, IReceberDados)
    produto,preco : string;
    procedure ReceberProduto(Aproduto : string);
    procedure ReceberPreco(Apreco : string);
    procedure Create (produto,preco : string);
    procedure PrecoTotal;
  end;
implementation

{ TRealSubject }

procedure TRealSubject.Create(produto: string);
begin
  Self.produto := produto;
  Self.preco := preco;
end;

procedure TRealSubject.ReceberPreco;
begin
  preco := Apreco;
  Writeln('Preço: ' + preco);
end;

procedure TRealSubject.ReceberProduto;
begin
  produto := Aproduto;
  Writeln('Produto escolhido:' + produto);
end;

end.
