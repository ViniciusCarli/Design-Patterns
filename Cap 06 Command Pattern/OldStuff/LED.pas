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
    constructor Create;
    var
    LedAtual : Integer;
  end;

  TBlueLED = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(Ledzin : TLED);
    private
    cLED: TLED;
    UltimaLed: Integer;
  end;

  TRedLED = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(Ledzin : TLED);
    private
    cLED: TLED;
    UltimaLed: Integer;
  end;

  TPurpleLED = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(Ledzin : TLED);
    private
    cLED: TLED;
    UltimaLed: Integer;
  end;

  TGreenLED = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(Ledzin : TLED);
    private
    cLED: TLED;
    UltimaLed: Integer;
  end;

  TOffLED = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(Ledzin : TLED);
    private
    cLED: TLED;
    UltimaLed: Integer;
  end;


implementation

{ TLight }

constructor TLED.Create;
begin
  LedAtual := 0;
end;

procedure TLED.LightBlue;
begin
  LedAtual := 1;
  Writeln('LED Azul');
end;

procedure TLED.LightGreen;
begin
  LedAtual := 2;
  Writeln('LED Verde');
end;

procedure TLED.LightOff;
begin
  LedAtual := 0;
  Writeln('LED Off');
end;

procedure TLED.LightPurple;
begin
  LedAtual := 3;
  Writeln('LED Roxo');
end;

procedure TLED.LightRed;
begin
  LedAtual := 4;
  Writeln('LED Vermelho');
end;

{ TBlueLED }

constructor TBlueLED.Create(Ledzin: TLED);
begin
  cLED := Ledzin;
end;

procedure TBlueLED.execute;
begin
  UltimaLed := cLED.LedAtual;
  cLED.LightBlue;
end;

procedure TBlueLED.undo;
begin
  if UltimaLed = 0 then
    cLED.LightOff;
  if UltimaLed = 1 then
    cLED.LightBlue;
  if UltimaLed = 2 then
    cLED.LightGreen;
  if UltimaLed = 3 then
    cLED.LightPurple;
  if UltimaLed = 4 then
    cLED.LightRed;
end;

{ TRedLED }

constructor TRedLED.Create(Ledzin: TLED);
begin
  cLED := Ledzin;
end;

procedure TRedLED.execute;
begin
  UltimaLed := cLED.LedAtual;
  cLED.LightRed;
end;

procedure TRedLED.undo;
begin
  if UltimaLed = 0 then
    cLED.LightOff;
  if UltimaLed = 1 then
    cLED.LightBlue;
  if UltimaLed = 2 then
    cLED.LightGreen;
  if UltimaLed = 3 then
    cLED.LightPurple;
  if UltimaLed = 4 then
    cLED.LightRed;
end;

{ TPurpleLED }

constructor TPurpleLED.Create(Ledzin: TLED);
begin
  cLED := Ledzin;
end;

procedure TPurpleLED.execute;
begin
  UltimaLed := cLED.LedAtual;
  cLED.LightPurple;
end;

procedure TPurpleLED.undo;
begin
  if UltimaLed = 0 then
    cLED.LightOff;
  if UltimaLed = 1 then
    cLED.LightBlue;
  if UltimaLed = 2 then
    cLED.LightGreen;
  if UltimaLed = 3 then
    cLED.LightPurple;
  if UltimaLed = 4 then
    cLED.LightRed;
end;

{ TGreenLED }

constructor TGreenLED.Create(Ledzin: TLED);
begin
  cLED := Ledzin;
end;

procedure TGreenLED.execute;
begin
  UltimaLed := cLED.LedAtual;
  cLED.LightGreen;
end;

procedure TGreenLED.undo;
begin
  if UltimaLed = 0 then
    cLED.LightOff;
  if UltimaLed = 1 then
    cLED.LightBlue;
  if UltimaLed = 2 then
    cLED.LightGreen;
  if UltimaLed = 3 then
    cLED.LightPurple;
  if UltimaLed = 4 then
    cLED.LightRed;
end;

{ TOffLED }

constructor TOffLED.Create(Ledzin: TLED);
begin
  cLED := Ledzin;
end;

procedure TOffLED.execute;
begin
  UltimaLed := cLED.LedAtual;
  cLED.LightOff;
end;

procedure TOffLED.undo;
begin
  if UltimaLed = 0 then
    cLED.LightOff;
  if UltimaLed = 1 then
    cLED.LightBlue;
  if UltimaLed = 2 then
    cLED.LightGreen;
  if UltimaLed = 3 then
    cLED.LightPurple;
  if UltimaLed = 4 then
    cLED.LightRed;
end;

end.
