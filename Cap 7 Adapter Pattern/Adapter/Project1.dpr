program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DuckInterface in 'DuckInterface.pas',
  TurkeyInterface in 'TurkeyInterface.pas',
  Turkey in 'Turkey.pas',
  Duck in 'Duck.pas',
  TurkeyAdapter in 'TurkeyAdapter.pas';
var
  Pato : IDuck;
  Peru : ITurkey;
  AdapterPeru : TAdapterTurkey;
begin
  Pato := TPato.Create;
  Peru := TTurkey.Create;
  AdapterPeru := TAdapterTurkey.Create(Peru);
  try
    try
      Readln;
      Pato.Quack;
      Pato.Fly;
//      Peru.Gobble;
//      Peru.Fly;
      AdapterPeru.Quack;
      AdapterPeru.Fly;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    AdapterPeru.Free;
  end;

end.
