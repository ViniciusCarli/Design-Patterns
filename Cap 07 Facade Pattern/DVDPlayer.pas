unit DVDPlayer;

interface
type
  TDVDPlayer = class
    procedure DVDOn;
    procedure DVDOff;
    procedure DVDEject;
    procedure DVDPause;
    procedure DVDPlay;
    procedure DVDStop;
  end;

implementation

{ TDVDPlayer }

procedure TDVDPlayer.DVDEject;
begin
  Writeln('DVD Ejetado');
end;

procedure TDVDPlayer.DVDOff;
begin
  Writeln('DVD Desligado');
end;

procedure TDVDPlayer.DVDOn;
begin
  Writeln('DVD Ligado');
end;

procedure TDVDPlayer.DVDPause;
begin
  Writeln('DVD Pausado');
end;

procedure TDVDPlayer.DVDPlay;
begin
  Writeln('DVD Ligado');
end;

procedure TDVDPlayer.DVDStop;
begin
  Writeln('DVD Parado');
end;

end.
