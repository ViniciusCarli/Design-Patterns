program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Interfaces in 'Interfaces.pas',
  Samsung in 'Samsung.pas',
  Xiaomi in 'Xiaomi.pas',
  Computadores in 'Computadores.pas',
  Celulares in 'Celulares.pas',
  Factory in 'Factory.pas';

var
  Celular : ICelular;
  Computador : IComputador;
  Marca : IFactoryMarca;

begin
  try
  Celular := Marca.ConsultarCelular;
  Computador := Marca.ConsultarComputador;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
