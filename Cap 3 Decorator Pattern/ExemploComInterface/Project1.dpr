program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Component in 'Component.pas',
  ConcreteComponent in 'ConcreteComponent.pas',
  Decorator in 'Decorator.pas',
  DecoratorBacon in 'DecoratorBacon.pas',
  DecoratorOnion in 'DecoratorOnion.pas',
  DecoratorQueijo in 'DecoratorQueijo.pas',
  DecoratorMolhoEspecial in 'DecoratorMolhoEspecial.pas',
  DecoratorHamburger in 'DecoratorHamburger.pas';

var
  Sanduiche: ISanduiche;

begin
  Sanduiche := TPaoPadrao.Create;
  try
  try
    Sanduiche := THamburgerDecorator.Create(Sanduiche);
    Sanduiche := TOnionDecorator.Create(Sanduiche);
    Sanduiche := TBaconDecorator.Create(Sanduiche);
    Sanduiche := TQueijoDecorator.Create(Sanduiche);
    Sanduiche := TMolhoDecorator.Create(Sanduiche);

    Writeln(Sanduiche.ObterDados + '.');
    Writeln(FormatFloat('R$: #,##0.00', Sanduiche.ObterPreco) + '.');

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
