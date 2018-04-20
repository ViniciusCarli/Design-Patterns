unit MusicMenuIterator;

interface

uses
  System.SysUtils, MenuItem, IteratorInterface;

type
  TAlbumItemArray = array of TMenuItem;

  TMusicAlbumIterator = class(TInterfacedObject, IIterator)
  private
    items : TAlbumItemArray;
    pos : Integer;
  public
    function Next : TMenuItem;
    function HasNext : boolean;
    constructor Create(items : TAlbumItemArray);
  end;
implementation

{ TMusicAlbumIterator }

constructor TMusicAlbumIterator.Create(items: TAlbumItemArray);
begin
  Self.items := items;
  Self.pos := 0;
end;

function TMusicAlbumIterator.HasNext: boolean;
begin
  if((pos > Length(items)) or (items[pos] = nil)) then
    Result := False
  else
    Result := True;
end;

function TMusicAlbumIterator.Next: TMenuItem;
var MenuItem : TMenuItem;
begin
  MenuItem := items[pos];
  pos := pos + 1;
  Result := MenuItem;
end;

end.
