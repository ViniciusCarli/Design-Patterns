program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Interfaces in 'Interfaces.pas',
  Computadores in 'Computadores.pas',
  Celulares in 'Celulares.pas',
  Marcas in 'Marcas.pas';

var
  Celular : ICelular;
  Computador : IComputador;
  Marca : IFactoryMarca;
begin
    Marca := TXiaomi.Create;
//    Marca := TSamsung.Create;
    Computador := Marca.ConsultarComputador;
    Celular := Marca.ConsultarCelular;
  try
    Celular.NomeCelular;
    Celular.TamanhoDaTela;
    Celular.MemoriaRAM;

    Writeln('');
//    No caso de trocar de para um computador no meio da operação.
//    Marca := TXiaomi.Create;
//    Marca := TSamsung.Create;
      Computador := Marca.ConsultarComputador;

    Computador.NomeComputador;
    Computador.NomeProcessador;
    Computador.Armazenamento;
    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
