unit RealSubject;

interface

uses
  Subject;

type
  TRealSubject = class(TInterfacedObject, IReceberDados)
    produto,preco : string;
    procedure ReceberProduto(produto : string);
    procedure ReceberPreco(preco : string);
    procedure Create (produto,preco : string);
  end;
implementation

{ TRealSubject }

procedure TRealSubject.Create(produto,preco: string);
begin
  Self.produto := produto;
  Self.preco := preco;
end;

procedure TRealSubject.ReceberPreco;
begin
  Writeln('Preço: ' + preco);
end;

procedure TRealSubject.ReceberProduto;
begin
  Writeln('Produto Escolhido: ' + produto);
end;

end.
