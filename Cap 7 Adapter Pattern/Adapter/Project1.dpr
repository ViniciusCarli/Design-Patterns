program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DuckInterface in 'DuckInterface.pas',
  TurkeyInterface in 'TurkeyInterface.pas',
  Turkey in 'Turkey.pas',
  Duck in 'Duck.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
