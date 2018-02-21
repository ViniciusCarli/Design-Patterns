program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Celular in 'Celular.pas',
  Computador in 'Computador.pas',
  FactoryMarca in 'FactoryMarca.pas',
  Celulares in 'Celulares.pas',
  Computadores in 'Computadores.pas',
  Marcas in 'Marcas.pas';
var
  Celular : TCelular;
  Computador : TComputador;
  Marca : TFactoryMarca;
begin
  Marca := nil;
  Celular := nil;
  Computador := nil;
try
    Marca := TSamsung.Create;
    Celular := Marca.ConsultarCelular;
    Computador := Marca.ConsultarComputador;
  try
    Celular.NomeCelular;
    Celular.TamanhoDaTela;
    Celular.MemoriaRAM;

    Writeln('');

    Computador.NomeComputador;
    Computador.NomeProcessador;
    Computador.Armazenamento;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
finally
  Marca.Free;
  Celular.Free;
  Computador.Free;
end;
  ReportMemoryLeaksOnShutdown := True;
end.
