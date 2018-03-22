unit HomeTheaterFacade;

interface

uses
  Tuner, CDPlayer, Screen, Amplifier, DVDPlayer, PopcornMachine, CinemaLights;
type
  THomeTheater = class
  private
    PopcornMachine : TPopCornMachine;
    Light : TCinemaLights;
    Projetor : TScreen;
    Amplificador : TAmplifier;
    DVDPlayer : TDVDPlayer;
    CDPlayer : TCDPlayer;
    Tuner : TTuner;
  public
    procedure watchMovie(Movie : String);
    procedure endMovie;
    procedure listenToCd(CDzao : string);
    procedure endCd;
    procedure listenToRadio(Frq : string);
    procedure endRadio;
    procedure changeVolume(volzin : string);
    procedure makePopCorn;
    procedure stopPopCorn;
    constructor Create(PopcornMachine : TPopCornMachine; Light : TCinemaLights;
      Projetor : TScreen; Amplificador : TAmplifier; DVDPlayer : TDVDPlayer;
      CDPlayer : TCDPlayer; Tuner : TTuner);
  end;
implementation

{ THomeTheater }

procedure THomeTheater.changeVolume(volzin: string);
begin
  Amplificador.SetVolume(volzin);
end;

constructor THomeTheater.Create(PopcornMachine: TPopCornMachine;
  Light: TCinemaLights; Projetor: TScreen; Amplificador: TAmplifier;
  DVDPlayer: TDVDPlayer; CDPlayer: TCDPlayer; Tuner: TTuner);
begin

  Self.PopcornMachine := PopcornMachine;
  Self.Projetor := Projetor;
  Self.Amplificador := Amplificador;
  Self.DVDPlayer := DVDPlayer;
  Self.CDplayer := CDPlayer;
  Self.Tuner := Tuner;
  Self.Light := Light;
  Readln;
end;

procedure THomeTheater.endCd;
begin
  CDPlayer.CDStop;
  CDPlayer.CDOff;
end;

procedure THomeTheater.endMovie;
begin
  Projetor.Up;
  DVDPlayer.DVDStop;
  DVDPlayer.DVDOff;
end;

procedure THomeTheater.endRadio;
begin
  Tuner.TunerOff;
end;

procedure THomeTheater.listenToCd;
begin
  CDPlayer.CDOn;
  Amplificador.SetStereoSound;
  Amplificador.SetCD(CDzao);
  CDPlayer.CDPlay
end;

procedure THomeTheater.listenToRadio;
begin
  Amplificador.SetTuner;
  Tuner.TunerOn;
  Tuner.SetAm;
  Tuner.SetFrequency(Frq);
end;

procedure THomeTheater.makePopCorn;
begin
  PopcornMachine.MachineOn;
  PopcornMachine.Pop;
end;

procedure THomeTheater.stopPopCorn;
begin
  PopcornMachine.MachineOff;
end;

procedure THomeTheater.watchMovie;
begin
  Projetor.Down;
  DVDPlayer.DVDOn;
  Amplificador.SetSurroundSound;
  Amplificador.SetDVD(Movie);
  DVDPlayer.DVDPlay;
end;

end.
