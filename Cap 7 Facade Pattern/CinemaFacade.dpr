program CinemaFacade;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PopcornMachine in 'PopcornMachine.pas',
  CinemaLights in 'CinemaLights.pas',
  Screen in 'Screen.pas',
  Amplifier in 'Amplifier.pas',
  DVDPlayer in 'DVDPlayer.pas',
  CDPlayer in 'CDPlayer.pas',
  Tuner in 'Tuner.pas',
  HomeTheaterFacade in 'HomeTheaterFacade.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
