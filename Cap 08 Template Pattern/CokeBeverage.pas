unit CokeBeverage;

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
  Writeln('A lot of Gaz');
end;

procedure TCokeBeverage.putSyrup;
begin
  Writeln('Cola Syrup');
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
