unit IteratorInterface;

interface

uses
  MenuItem;

type
  IIterator = interface
      function Next : TMenuItem;
      function HasNext : boolean;
  end;

implementation

end.
