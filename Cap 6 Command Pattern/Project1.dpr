program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CommandInterface in 'CommandInterface.pas',
  Light in 'Light.pas',
  LightCommand in 'LightCommand.pas',
  Invoker in 'Invoker.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
