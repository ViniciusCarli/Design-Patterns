unit FantaBeverage;

interface
type
  TCokeBeverage = class
    public
      procedure PrepareSoda;
      procedure putSyrup;
      procedure Gasify;
    protected
      procedure Mix; virtual; abstract;
      procedure addExtra; virtual; abstract;
  end;
implementation

{ TCaffeineBeverage }

procedure TCokeBeverage.Gasify;
begin
  Writeln('boiling watter');
end;

procedure TCokeBeverage.putSyrup;
begin
  Writeln('Orange Syrup');
end;

procedure TCokeBeverage.PrepareSoda;
begin
  PrepareSoda;
  putSyrup;
  Gasify;
  Mix;
  addExtra;
end;
end.
