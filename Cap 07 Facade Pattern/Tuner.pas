unit Tuner;

interface
type
  TTuner = class
    procedure TunerOn;
    procedure TunerOff;
    procedure SetAm;
    procedure SetPm;
    procedure SetFrequency(freq : string);
  end;

implementation

{ TTuner }

procedure TTuner.SetAm;
begin
  Writeln('Tunner On Am');
end;

procedure TTuner.SetFrequency;
begin
  Writeln('Tunner Frequency:' + freq);
end;

procedure TTuner.SetPm;
begin
  Writeln('Tunner On Pm');
end;

procedure TTuner.TunerOff;
begin
  Writeln('Tunner Desligado');
end;

procedure TTuner.TunerOn;
begin
  Writeln('Tunner Ligado');
end;

end.
