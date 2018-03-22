unit CinemaLights;

interface
type
  TCinemaLights = class
    procedure LightOn;
    procedure LightOff;
    procedure Potencia(Pot: string);
  end;

implementation

{ TCinemaLights }

procedure TCinemaLights.LightOff;
begin
  Writeln('Luzes Desligadas');
end;

procedure TCinemaLights.LightOn;
begin
  Writeln('Luzes Ligadas');
end;

procedure TCinemaLights.Potencia;
begin
  Writeln('Potencia Mudada para' + Pot + '%');
end;

end.
