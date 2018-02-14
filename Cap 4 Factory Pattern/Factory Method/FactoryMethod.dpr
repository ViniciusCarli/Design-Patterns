program FactoryMethod;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PizzaStore in 'PizzaStore.pas',
  NYPizzaStore in 'NYPizzaStore.pas',
  NYStyleChessePizza in 'NYStyleChessePizza.pas',
  NYStylePepperoniPizza in 'NYStylePepperoniPizza.pas',
  CHPizzaStore in 'CHPizzaStore.pas',
  CHStyleChessePizza in 'CHStyleChessePizza.pas',
  CHStylePepperoniPizza in 'CHStylePepperoniPizza.pas',
  PizzaFactory in 'PizzaFactory.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
