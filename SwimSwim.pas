unit SwimSwim;

interface
uses
  SwimUtils;

type
  TSwimSwim = class(TInterfacedObject, TSwimBehavior)
  public
    procedure Swim;
    constructor Create;
  end;

implementation
constructor TSwimSwim.Create;
begin

end;

procedure TSwimSwim.Swim;
begin
  Writeln('He Swims');
end;
end.

