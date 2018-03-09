unit Light;

interface

uses
  CommandInterface;

type
  TLight = class
    procedure LightsUp;
    procedure LightsOff;
  end;

implementation

{ TLight }

procedure TLight.LightsUp;
begin
  Writeln('Luz Acesa');
end;

procedure TLight.LightsOff;
begin
  Writeln('Luz Apagada');
end;

end.
