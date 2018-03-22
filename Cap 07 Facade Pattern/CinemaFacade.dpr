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
var
  HomeTheater : THomeTheater;
  PopCorn : TPopCornMachine;
  Light : TCinemaLights;
  Proj : TScreen;
  Amp : TAmplifier;
  DVD : TDVDPlayer;
  CD : TCDPlayer;
  Tuner : TTuner;
begin
  PopCorn := nil;
  Light := nil;
  Proj := nil;
  Amp := nil;
  DVD := nil;
  CD := nil;
  Tuner := nil;
try
  HomeTheater := THomeTheater.Create(PopCorn,Light,Proj,Amp,DVD,CD,Tuner);
  try
    HomeTheater.watchMovie('Inspetor Faustão e Malandro');
    HomeTheater.listenToCd('Mouth Sounds');
    HomeTheater.changeVolume('10');
    HomeTheater.makePopCorn;
    HomeTheater.stopPopCorn;
    HomeTheater.endMovie;
    HomeTheater.endCd;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
finally

end;
end.
