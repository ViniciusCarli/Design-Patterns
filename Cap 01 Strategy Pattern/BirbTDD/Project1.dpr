program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Birbs in 'Birbs.pas',
  ColorBehavior in 'ColorBehavior.pas',
  BeakBehavior in 'BeakBehavior.pas',
  RadBirb in 'RadBirb.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
