unit Duck;

interface

uses
  DuckInterface;

type
  TPato = class(TInterfacedObject, IDuck)
    procedure Quack;
    procedure Fly;
  end;
implementation

{ TPato }

procedure TPato.Fly;
begin
  Writeln('Normal Fly');
end;

procedure TPato.Quack;
begin
  Writeln('Quack Quack');
end;

end.

