unit CDPlayer;

interface
type
  TCDPlayer = class
    procedure CDOn;
    procedure CDOff;
    procedure CDEject;
    procedure CDPause;
    procedure CDPlay;
    procedure CDStop;
  end;

implementation

{ TCDPlayer }

procedure TCDPlayer.CDEject;
begin
  Writeln('CD Ejetado');
end;

procedure TCDPlayer.CDOff;
begin
  Writeln('CD Desligado');
end;

procedure TCDPlayer.CDOn;
begin
  Writeln('CD Ligado');
end;

procedure TCDPlayer.CDPause;
begin
  Writeln('CD Pausado');
end;

procedure TCDPlayer.CDPlay;
begin
  Writeln('CD Tocando');
end;

procedure TCDPlayer.CDStop;
begin
  Writeln('CD Parado');
end;

end.
