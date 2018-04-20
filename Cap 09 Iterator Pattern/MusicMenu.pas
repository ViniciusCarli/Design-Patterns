unit MusicMenu;

interface

uses
  System.SysUtils, MenuItem, MusicMenuIterator;

type
  TMusicMenu = class
    private
      MenuItens : TAlbumItemArray;
      pos : integer;
    public
      constructor Create;
      procedure AddItem(Name, Artist : string; Cod : integer; Price : currency);
      function CreateIterator : TMusicAlbumIterator;
  end;

implementation

{ TMusicMenu }

procedure TMusicMenu.AddItem(Name, Artist: string; Cod: integer;
  Price: currency);
var menuItem : TMenuItem;
begin
  menuItem := TMenuItem.Create(Name, Artist, Cod, Price);
  menuItens := menuItens + [menuItem];
  pos := pos + 1;
end;

constructor TMusicMenu.Create;
begin
  pos := 0;
  AddItem('Bombs','BNNY RBBT',0002221,0.99);
  AddItem('Big World','BNNY RBBT',0002311,1.99);
  AddItem('I Hate Love','BNNY RBBT',0003211,0.89);
  AddItem('Waterfalls Down','BNNY RBBT',0003211,0.89);
end;

function TMusicMenu.CreateIterator: TMusicAlbumIterator;
var Iterator : TMusicAlbumIterator;
begin
  Iterator := TMusicAlbumIterator.Create(MenuItens);
  Result := Iterator;
end;

end.
