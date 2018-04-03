program Bridge;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  InterfaceImp in 'InterfaceImp.pas',
  RecursoBurger in 'RecursoBurger.pas',
  Burger in 'Burger.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
