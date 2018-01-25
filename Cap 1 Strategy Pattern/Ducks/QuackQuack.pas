unit QuackQuack;

interface
uses
  QuackUtils;

type
  TQuackQuack = class(TInterfacedObject, TQuackBehavior)
  public
    procedure Quack;
    constructor Create;
  end;

implementation
constructor TQuackQuack.Create;
begin

end;

procedure TQuackQuack.Quack;
begin
  Writeln('Quack');
  Readln;
end;
end.

