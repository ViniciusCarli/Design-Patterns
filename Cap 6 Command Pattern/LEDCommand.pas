unit LEDCommand;

interface

uses
  LED, CommandInterface;
type
  TLEDAzul = class(TInterfacedObject, ICommand)
    public
      constructor Create(LED: TLED);
      procedure Execute;
      procedure Undo;
    private
      LED : TLED;
  end;
  TLEDVermelho = class(TInterfacedObject, ICommand)
    public
      constructor Create(LED: TLED);
      procedure Execute;
      procedure Undo;
    private
      LED : TLED;
  end;
  TLEDRoxo = class(TInterfacedObject, ICommand)
    public
      constructor Create(LED: TLED);
      procedure Execute;
      procedure Undo;
    private
      LED : TLED;
  end;
  TLEDVerde = class(TInterfacedObject, ICommand)
    public
      constructor Create(LED: TLED);
      procedure Execute;
      procedure Undo;
    private
      LED : TLED;
  end;
  TLEDOff = class(TInterfacedObject, ICommand)
    public
      constructor Create(LED: TLED);
      procedure Execute;
      procedure Undo;
    private
      LED : TLED;
  end;

implementation

{ LEDAzul }

constructor TLEDAzul.Create(LED: TLED);
begin
  Self.LED := LED;
end;

procedure TLEDAzul.Execute;
begin
  Self.LED.LightBlue;
end;

procedure TLEDAzul.Undo;
begin
  Self.LED.LightOff;
end;

{ LEDVermelho }

constructor TLEDVermelho.Create(LED: TLED);
begin
  Self.LED := LED;
end;

procedure TLEDVermelho.Execute;
begin
  Self.LED.LightRed;
end;

procedure TLEDVermelho.Undo;
begin
  Self.LED.LightOff;
end;

{ TLEDRoxo }

constructor TLEDRoxo.Create(LED: TLED);
begin
  Self.LED := LED;
end;

procedure TLEDRoxo.Execute;
begin
  Self.LED.LightPurple;
end;

procedure TLEDRoxo.Undo;
begin
  Self.LED.LightOff
end;

{ TLEDVerde }

constructor TLEDVerde.Create(LED: TLED);
begin
  Self.LED := LED;
end;

procedure TLEDVerde.Execute;
begin
  Self.LED.LightGreen;
end;

procedure TLEDVerde.Undo;
begin
  Self.LED.LightGreen;
end;

{ TLEDOff }

constructor TLEDOff.Create(LED: TLED);
begin
  Self.LED := LED;
end;

procedure TLEDOff.Execute;
begin
  Self.LED.LightOff;
end;

procedure TLEDOff.Undo;
begin
  Self.LED.LightOff;
end;

end.
