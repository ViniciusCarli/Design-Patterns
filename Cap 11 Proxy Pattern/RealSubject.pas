unit RealSubject;

interface

uses
  Subject;

type
  TRealSubject = class(TInterfacedObject, IReceberDados)
    produto,preco,quant : string;
    procedure ReceberProduto(Aproduto : string);
    procedure ReceberPreco(Apreco : string);
    procedure ReceberQuantidade(Aquant : string);
    procedure Create (produto,preco,quant : string);
    procedure PrecoTotal;
  end;
implementation

{ TRealSubject }

procedure TRealSubject.Create(produto: string);
begin
  Self.produto := produto;
  Self.preco := preco;
  Self.quant := quant;
end;

procedure TRealSubject.ReceberPreco;
begin
  Writeln('')
end;

procedure TRealSubject.ReceberProduto;
begin

end;

procedure TRealSubject.ReceberQuantidade;
begin

end;

end.
