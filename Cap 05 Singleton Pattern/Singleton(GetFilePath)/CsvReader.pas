unit CsvReader;

interface

uses
  ReaderInterface, System.StrUtils, System.SysUtils, System.Classes, USingleton;

type
  TcsvReader = class(TBBReader)
    function ShowOnGrid: string; override;
    procedure Split (DelimiterText : string; Delimiter : Char; ListOfStrings : TStrings);
  end;
var
  Singleton : TSingleton;

implementation

{ TcsvReader }

function TcsvReader.ShowOnGrid: string;
var
  ListaItens, ListaDados : TStringList;
  y : Integer;
  stringLinha : string;
begin
  ListaItens := nil;
  ListaDados := nil;
  try
    ListaItens := TStringList.Create;
    ListaDados := TStringList.Create;

    Singleton := TSingleton.GetInstance;
    ListaItens.LoadFromFile(Singleton.PathA);

    FDados.cds.CreateDataSet;

    for y := 1 to Pred(ListaItens.Count) do
    begin
      stringLinha := ListaItens[y];
      Split(stringLinha, ',', ListaDados);

      FDados.cds.Insert;
      FDados.cdsid.AsString := ListaDados[0];
      FDados.cdsfirst_name.AsString := ListaDados[1];
      FDados.cdslast_name.AsString := ListaDados[2];
      FDados.cdsemail.AsString := ListaDados[3];
      FDados.cdsgender.AsString := ListaDados[4];
      FDados.cdsip_address.AsString := ListaDados[5];
      FDados.cds.Post;
    end;
  finally
    ListaItens.Free;
    ListaDados.Free;
  end;
end;

procedure TcsvReader.Split(DelimiterText: string; Delimiter: Char;
  ListOfStrings: TStrings);
begin
  ListOfStrings.DelimitedText := DelimiterText;
end;

end.
