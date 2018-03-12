unit LED;

interface

uses
  CommandInterface, System.Generics.Collections;

type
  TLED = class
    procedure LightBlue;
    procedure LightRed;
    procedure LightPurple;
    procedure LightGreen;
    procedure LightOff;
    procedure CriarTList;
    var
    Status : TList<string>;
  end;

implementation

{ TLight }

procedure TLED.CriarTList;
begin
  Status := TList<string>.Create;
end;

procedure TLED.LightBlue;
begin
  Status.Add('LED Azul');
  Writeln('LED Azul');
end;

procedure TLED.LightGreen;
begin
  Status.Add('LED Verde');
  Writeln('LED Verde');
end;

procedure TLED.LightOff;
var
A : string;
I : Integer;
begin
  if Status = nil then
  begin
    Writeln('LED Desligado');
  end
  else
  for I := 0 to Status.Count - 1 do
  begin
    Writeln(TLED(Status[I])-1);
  end;
end;

procedure TLED.LightPurple;
begin
  Status.Add('LED Roxo');
  Writeln('LED Roxo');
end;

procedure TLED.LightRed;
begin
  Status.Add('LED Vermelho');
  Writeln('LED Vermelho');
end;

end.
