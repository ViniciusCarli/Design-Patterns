program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PizzaStore in 'PizzaStore.pas',
  NYStore in 'NYStore.pas',
  ChicagoStore in 'ChicagoStore.pas',
  PizzaFactory in 'PizzaFactory.pas';

var
    Pizza : TPizzaFactory;
begin
Pizza := TPizzaFactory.Create;
  try
    Writeln(Pizza.CriarPizza(tpNYStore).FPizza);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
