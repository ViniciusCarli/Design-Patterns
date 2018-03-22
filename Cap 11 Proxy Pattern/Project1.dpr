program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Subject in 'Subject.pas',
  RealSubject in 'RealSubject.pas',
  Proxy in 'Proxy.pas';

var
  Dados : IReceberDados;
begin
  try
    Dados := TVendedor.Create;
    try
      Dados.ReceberProduto('Computador sla');
      Dados.ReceberPreco('3300');
      Readln;
      Dados.ReceberProduto('Celular sla');
      Dados.ReceberPreco('1350');
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
     end;
  finally

  end;
end.
