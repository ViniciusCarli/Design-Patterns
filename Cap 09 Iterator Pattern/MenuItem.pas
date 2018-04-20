unit MenuItem;

interface

uses
  System.SysUtils;

  type TMenuItem = class
    private
      Name : string;
      Artist : string;
      Cod : integer;
      Price : Currency;
    public
      constructor Create(Name, Artist : string;Cod : Integer;Price : Currency);
      function getAllSpecs : variant;
      function getName : string;
      function getArtist : string;
      function getCod: integer;
      function getPrice : currency;
  end;

implementation

{ TMenuMusicas }

constructor TMenuItem.Create(Name, Artist: string; Cod: Integer;
  Price: Currency);
begin
  Self.Name := Name;
  Self.Artist := Artist;
  Self.Cod := Cod;
  Self.Price := Price;
end;

function TMenuItem.getAllSpecs: variant;
begin
  Result := Self.Name + ', ' + Self.Artist + ', ' + IntToStr(Self.Cod) + ', ' + CurrToStr(Self.Price);
end;

function TMenuItem.getArtist: string;
begin
  Result := Self.Artist;
end;

function TMenuItem.getCod: integer;
begin
  Result := Self.Cod;
end;

function TMenuItem.getName: string;
begin
  Result := Self.Name;
end;

function TMenuItem.getPrice: currency;
begin
  Result := Self.Price;
end;

end.
