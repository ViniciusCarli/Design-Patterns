unit Subject;

interface
type
  IReceberDados = interface
    procedure ReceberProduto(Aproduto : string);
    procedure ReceberPreco(Apreco : string);
    procedure ReceberQuantidade(Aquant : string);
    procedure PrecoTotal;
  end;

implementation

end.