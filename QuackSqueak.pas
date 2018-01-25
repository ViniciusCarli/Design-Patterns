unit QuackSqueak;

interface
uses
  QuackUtils;

type
  TQuackSqueak = class(TInterfacedObject, TQuackBehavior)
  public
    procedure Quack;
    constructor Create;
  end;

implementation
constructor TQuackSqueak.Create;
begin

end;

procedure TQuackSqueak.Quack;
begin
  Writeln('Squeak');
  Readln;
end;
end.

