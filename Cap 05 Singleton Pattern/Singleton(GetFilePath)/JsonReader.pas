unit JsonReader;

interface

uses
  ReaderInterface, Dados, System.StrUtils, System.SysUtils, System.Classes,
  Datasnap.DBClient, System.JSON, Data.DB,System.IOUtils, USingleton;

type
  TJsonReader = class(TBBReader)
    function ShowOnGrid: string; override;
  end;
var
  Singleton : TSingleton;

implementation

{ TJsonReader }

function TJsonReader.ShowOnGrid: string;
var
  ListaJSON: TJSONArray;
  ValorJSON: TJSONValue;
  ItemJSON: TJSONValue;
begin
  ListaJSON := nil;
  try
    Singleton := TSingleton.GetInstance;

    ListaJSON := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(TFile.ReadAllText
    (Singleton.PathA)), 0) as TJSONArray;

    FDados.cds.CreateDataSet;
    for ValorJSON in ListaJSON do
    begin
      FDados.cds.Insert;
      for ItemJSON in TJSONArray(ValorJSON) do
      begin
        FDados.cds.FieldByName(TJSONPair(ItemJSON).JsonString.Value).Value := TJSONPair(ItemJSON).JsonValue.Value;
      end;
      FDados.cds.Post;
    end;
  finally
    ListaJSON.Free;
  end;
end;

end.

