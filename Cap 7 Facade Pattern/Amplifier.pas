unit Amplifier;

interface
type
  TAmplifier = class
    procedure AmpOn;
    procedure AmpOff;
    procedure SetCD(Cd : String);
    procedure SetDVD(Dvd : string);
    procedure SetStereoSound;
    procedure SetSurroundSound;
    procedure SetTuner;
    procedure SetVolume(vol : string);
  end;

implementation

{ TAmplifier }

procedure TAmplifier.AmpOff;
begin
  Writeln('Amplificar Desligado');
end;

procedure TAmplifier.AmpOn;
begin
  Writeln('Amplificar Ligado');
end;

procedure TAmplifier.SetCD;
begin
  Writeln('CD Escolhido: ' + Cd);
end;

procedure TAmplifier.SetDVD;
begin
  Writeln('DVD Escolhido: ' + Dvd);
end;

procedure TAmplifier.SetStereoSound;
begin
  Writeln('Som Stereo');
end;

procedure TAmplifier.SetSurroundSound;
begin
  Writeln('Som Surround');
end;

procedure TAmplifier.SetTuner;
begin
  Writeln('Tuner Ativado');
end;

procedure TAmplifier.SetVolume;
begin
  Writeln('Volume : ' + vol);
end;

end.
