unit Screen;

interface
type
  TScreen = class
    procedure Up;
    procedure Down;
  end;

implementation

{ TScreen }

procedure TScreen.Down;
begin
  Writeln('Tela Desce');
end;

procedure TScreen.Up;
begin
  Writeln('Tela Sobe');
end;

end.
