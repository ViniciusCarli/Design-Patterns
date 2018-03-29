unit FantaConcreteClass;

interface
type
  TFantaBeverage = class
    public
      procedure PrepareSoda;
      procedure putSyrup;
      procedure Gasify;
      procedure Mix; virtual; abstract;
      procedure addExtra; virtual; abstract;
  end;
implementation

{ TFantaBeverage }

procedure TFantaBeverage.Gasify;
begin
  Writeln('boiling watter');
end;

procedure TFantaBeverage.putSyrup;
begin
  Writeln('Orange Syrup');
end;

procedure TFantaBeverage.PrepareSoda;
begin
  putSyrup;
  Gasify;
  Mix;
  addExtra;
end;
end.
