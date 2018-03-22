program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  USingleton in 'USingleton.pas';

var
  Singleton : TSingleton;
begin
  try
    Singleton := TSingleton.GetInstance;
    Singleton.MostrarAlocacaoNaMememoria;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
