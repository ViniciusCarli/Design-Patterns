unit SwimFloat;

interface
uses
  SwimUtils;

type
  TFloat = class(TInterfacedObject, TSwimBehavior)
  public
    procedure Swim;
    constructor Create;
  end;

implementation
constructor TFloat.Create;
begin

end;

procedure TFloat.Swim;
begin
  Writeln('He Floats');
  Readln;
end;
end.
