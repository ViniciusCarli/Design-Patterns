unit TurkeyAdapter;

interface

uses
  TurkeyInterface, DuckInterface;
type
  TAdapterTurkey = class(TInterfacedObject, IDuck)
    Peru : ITurkey;
    constructor Create(Peru : ITurkey);
    procedure Quack;
    procedure Fly;
  end;
implementation

{ TAdapterTurkey }

constructor TAdapterTurkey.Create(Peru: ITurkey);
begin
  Self.Peru := Peru;
end;

procedure TAdapterTurkey.Fly;
begin
  Peru.Fly;
end;

procedure TAdapterTurkey.Quack;
begin
  Peru.Gobble;
end;

end.
