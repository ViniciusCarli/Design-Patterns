program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Beverage in 'Beverage.pas',
  Decorator in 'Decorator.pas',
  BeverageBlackCoffee in 'BeverageBlackCoffee.pas',
  DecoratorMilk in 'DecoratorMilk.pas',
  DecoratorCream in 'DecoratorCream.pas';

var
 Beverage :TBeverage;
begin
  try
    Beverage := TBlackCoffee.Create;
    Beverage := TMilkDecorator.Create(Beverage);
    Beverage := TCreamDecorator.Create(Beverage);
    Writeln(Beverage.getDescription);
    Writeln(FormatFloat('R$: #,##0.00',Beverage.getPrice));
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
