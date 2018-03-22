unit Turkey;

interface

uses
  TurkeyInterface;

type
  TTurkey = class(TInterfacedObject, ITurkey)
    procedure Gobble;
    procedure Fly;
  end;
implementation

{ TPato }

procedure TTurkey.Fly;
begin
  Writeln('Weird Fly');
end;

procedure TTurkey.Gobble;
begin
  Writeln('Gobble Bobble');
end;

end.
