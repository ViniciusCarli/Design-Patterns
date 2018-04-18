unit MenuMusicas;

interface
  type TMenuMusicas = class
    private
      Name : string;
      Artist : string;
      Cod : integer;
      Price : Currency;
    public
      constructor Create(Name, Artist : string;Cod : Integer;Price : Currency);
      function getName : string;
      function getArtist : string;
      function getCod: integer;
      function getPrice : currency;
  end;

implementation

{ TMenuMusicas }

constructor TMenuMusicas.Create(Name, Artist: string; Cod: Integer;
  Price: Currency);
begin
  Self.Name := Name;
  Self.Artist := Artist;
  Self.Cod := Cod;
  Self.Price := Price;
end;

function TMenuMusicas.getArtist: string;
begin
  Result := Self.Artist;
end;

function TMenuMusicas.getCod: integer;
begin

end;

function TMenuMusicas.getName: string;
begin

end;

function TMenuMusicas.getPrice: currency;
begin

end;

end.
