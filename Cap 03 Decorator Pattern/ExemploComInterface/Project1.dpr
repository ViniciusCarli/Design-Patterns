program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Component in 'Component.pas',
  ConcreteComponentPadrao in 'ConcreteComponentPadrao.pas',
  Decorator in 'Decorator.pas',
  DecoratorBacon in 'DecoratorBacon.pas',
  DecoratorOnion in 'DecoratorOnion.pas',
  DecoratorQueijo in 'DecoratorQueijo.pas',
  DecoratorMolhoEspecial in 'DecoratorMolhoEspecial.pas',
  DecoratorHamburger in 'DecoratorHamburger.pas',
  ConcreteComponentAustraliano in 'ConcreteComponentAustraliano.pas';

var
  Sanduiche : ISanduiche;
  Sanduiche2 : ISanduiche;
  Sanduiche4 : ISanduiche;
begin
  Sanduiche := TPaoPadrao.Create();
  Sanduiche2 := TPaoPadrao.Create();
  Sanduiche4 := TAustraliano.Create();
  try
  try
    Sanduiche := THamburgerDecorator.Create(Sanduiche);
    Sanduiche := TOnionDecorator.Create(Sanduiche);
    Sanduiche := TBaconDecorator.Create(Sanduiche);
    Sanduiche := TQueijoDecorator.Create(Sanduiche);
    Sanduiche := TMolhoDecorator.Create(Sanduiche);
    Sanduiche := TBaconDecorator.Create(Sanduiche);

    Writeln(Sanduiche.ObterDados + '.');
    Writeln(FormatFloat('R$: #,##0.00', Sanduiche.ObterPreco) + '.');

    Readln;

    Sanduiche2 := THamburgerDecorator.Create(Sanduiche2);
    Sanduiche2 := TOnionDecorator.Create(Sanduiche2);
    Sanduiche2 := TBaconDecorator.Create(Sanduiche2);
    Sanduiche2 := TQueijoDecorator.Create(Sanduiche2);

    Writeln(Sanduiche2.ObterDados + '.');
    Writeln(FormatFloat('R$: #,##0.00', Sanduiche2.ObterPreco) + '.');

    Readln;

    Sanduiche4 := THamburgerDecorator.Create(Sanduiche4);
    Sanduiche4 := TQueijoDecorator.Create(Sanduiche4);
    Sanduiche4 := TBaconDecorator.Create(Sanduiche4);

    Writeln(Sanduiche4.ObterDados + '.');
    Writeln(FormatFloat('R$: #,##0.00', Sanduiche4.ObterPreco) + '.');

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
