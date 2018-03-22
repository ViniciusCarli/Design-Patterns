unit ReaderFactory;

interface

uses
  Classes,ReaderInterface, CsvReader, XmlReader, JsonReader, Dados;

type
  TTipoReader = (tpCsvReader, tpXmlReader, tpJsonReader);

  TReaderFactory = class
  private
    FDados: TDmDados;
  public
    function CriarReader(const ATipoReader: TTipoReader): TBBReader;
    constructor Create(Dados: TDmDados);
  end;

implementation

constructor TReaderFactory.Create(Dados: TDmDados);
begin
  FDados := Dados;
end;

function TReaderFactory.CriarReader(const ATipoReader: TTipoReader): TBBReader;
begin
  Result := nil;
  case ATipoReader of
    tpCsvReader:
      Result := TcsvReader.Create(FDados);
    tpXmlReader:
      Result := TXmlReader.Create(FDados);
    tpJsonReader:
      Result := TJsonReader.Create(FDados);
  end;
end;

end.
