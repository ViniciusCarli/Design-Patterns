unit LED;

interface

uses
  CommandInterface;

type
  TLED = class
    public
      Cor: integer;
      procedure Blue;
      procedure Red;
      procedure Green;
      procedure Off;
      procedure Purple;
      constructor Create;
  end;

   TPurpleCommand = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(ledzin: TLED);
    private
    cLed: TLED;
    UltimaCor: Integer;
  end;


   TBlueCommand = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(ledzin: TLED);
    private
    cLed: TLED;
    UltimaCor: Integer;
  end;

  TRedCommand = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(ledzin: TLed);
    private
    cLed: TLed;
    UltimaCor: Integer;
  end;

  TGreenCommand = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(ledzin: TLed);
    private
    cLed: TLed;
    UltimaCor: Integer;
  end;

  TOffCommand = class(TInterfacedObject, ICommand)
    public
      procedure execute;
      procedure undo;
      constructor Create(ledzin: TLed);
    private
    cLed: TLed;
    UltimaCor: Integer;
  end;

implementation

{ TLed }

constructor TLED.Create;
begin
  Cor := 0;
end;

procedure TLED.Purple;
begin
  Cor := 4;
  Writeln('Roxo');
end;

procedure TLED.Red;
begin
  Cor := 2;
  Writeln('Vermelho');
end;

procedure TLED.Blue;
begin
  Cor := 1;
  Writeln('Azul');
end;

procedure TLED.Green;
begin
  Cor := 3;
  Writeln('Verde');
end;

procedure TLED.off;
begin
  Cor := 0;
  Writeln('Led Desligado');
end;

{ TBlueCommand }

constructor TBlueCommand.Create(ledzin: TLed);
begin
  cLed := ledzin;
end;

procedure TBlueCommand.execute;
begin
  UltimaCor := cLed.Cor;
  cLed.Blue;
end;

procedure TBlueCommand.undo;
begin
  if UltimaCor = 0 then
    cLed.off;
  if UltimaCor = 1 then
    cLed.Blue;
  if UltimaCor = 2 then
    cLed.Red;
  if UltimaCor = 3 then
    cLed.Green;
  if UltimaCor = 4 then
    cLed.Purple;
end;

{ TRedCommand }

constructor TRedCommand.Create(ledzin: TLed);
begin
  cLed := ledzin;
end;

procedure TRedCommand.execute;
begin
  UltimaCor := cLed.Cor;
  cLed.Red;
end;

procedure TRedCommand.undo;
begin
  if UltimaCor = 0 then
    cLed.off;
  if UltimaCor = 1 then
    cLed.Blue;
  if UltimaCor = 2 then
    cLed.Red;
  if UltimaCor = 3 then
    cLed.Green;
  if UltimaCor = 4 then
    cLed.Purple;
end;

{ TOffCommand }

constructor TOffCommand.Create(ledzin: TLed);
begin
  cLed := ledzin;
end;

procedure TOffCommand.execute;
begin
  UltimaCor := cLed.Cor;
  cLed.off;
end;

procedure TOffCommand.undo;
begin
  if UltimaCor = 0 then
    cLed.off;
  if UltimaCor = 1 then
    cLed.Blue;
  if UltimaCor = 2 then
    cLed.Red;
  if UltimaCor = 3 then
    cLed.Green;
  if UltimaCor = 4 then
    cLed.Purple;
end;

{ TGreenCommand }

constructor TGreenCommand.Create(ledzin: TLed);
begin
  cLed := ledzin;
end;

procedure TGreenCommand.execute;
begin
  UltimaCor := cLed.Cor;
  cLed.Green;
end;

procedure TGreenCommand.undo;
begin
  if UltimaCor = 0 then
    cLed.off;
  if UltimaCor = 1 then
    cLed.Blue;
  if UltimaCor = 2 then
    cLed.Red;
  if UltimaCor = 3 then
    cLed.Green;
  if UltimaCor = 4 then
    cLed.Purple;
end;

{ TPurpleCommand }

constructor TPurpleCommand.Create(ledzin: TLED);
begin
  cLed := ledzin;
end;

procedure TPurpleCommand.execute;
begin
  UltimaCor := cLed.Cor;
  cLed.Purple;
end;

procedure TPurpleCommand.undo;
begin
  if UltimaCor = 0 then
    cLed.off;
  if UltimaCor = 1 then
    cLed.Blue;
  if UltimaCor = 2 then
    cLed.Red;
  if UltimaCor = 3 then
    cLed.Green;
  if UltimaCor = 4 then
    cLed.Purple;
end;

end.
