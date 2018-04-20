program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  IteratorInterface in 'IteratorInterface.pas',
  MenuItem in 'MenuItem.pas',
  MusicMenu in 'MusicMenu.pas',
  MusicMenuIterator in 'MusicMenuIterator.pas';
var
 Album : TMusicMenu;
 AlbumIterator : TMusicAlbumIterator;
begin
  Album := TMusicMenu.Create;
  AlbumIterator := Album.CreateIterator;
  try
    try
      Writeln(AlbumIterator.Next.getAllSpecs);
      Writeln(AlbumIterator.Next.getAllSpecs);
      Writeln(AlbumIterator.Next.getAllSpecs);
      Writeln(AlbumIterator.Next.getAllSpecs);
//      Writeln(AlbumIterator.Next.getArtist);
//      Writeln(AlbumIterator.Next.getCod);
//      Writeln(AlbumIterator.Next.getPrice);
    finally
      Readln;
      Album.Free;
      AlbumIterator.Free;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
