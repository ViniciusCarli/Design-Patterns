unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, CsvReader,
  ReaderFactory, Dados, USingleton;

type
  TForm1 = class(TForm)
    EdtArquivoOriginal: TEdit;
    SpeedButton1: TSpeedButton;
    btnLerArquivo: TBitBtn;
    OpenDialog1: TOpenDialog;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    procedure btnLerArquivoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FDados: TDmDados;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  Form1: TForm1;
  Factory : TReaderFactory;
  ACsvReader : TcsvReader;
  Singleton : TSingleton;
implementation

uses
  ReaderInterface;

{$R *.dfm}

procedure TForm1.btnLerArquivoClick(Sender: TObject);
var
  Reader: TBBReader;
begin
  if ExtractFileExt(EdtArquivoOriginal.Text) = '.csv' then
  begin
    Factory := TReaderFactory.Create(FDados);
    try
      FDados.cds.Close;
      Reader := Factory.CriarReader(tpCsvReader);
      Reader.ShowOnGrid;
    finally
      Reader.Free;
      Factory.Free;
    end;
  end;

  if ExtractFileExt(EdtArquivoOriginal.Text) = '.xml' then
  begin
    Factory := TReaderFactory.Create(FDados);
    try
      FDados.cds.Close;
      Reader := Factory.CriarReader(tpXmlReader);
      Reader.ShowOnGrid;
    finally
      Reader.Free;
      Factory.Free;
    end;
  end;

  if ExtractFileExt(EdtArquivoOriginal.Text) = '.json' then
  begin
    Factory := TReaderFactory.Create(FDados);
    try
      FDados.cds.Close;
      Reader := Factory.CriarReader(tpJsonReader);
      Reader.ShowOnGrid;
    finally
      Reader.Free;
      Factory.Free;
    end;
  end;

end;

constructor TForm1.Create(AOwner: TComponent);
begin
  inherited;
  FDados := TDmDados.Create(Self);
  DataSource1.DataSet := FDados.cds;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
   EdtArquivoOriginal.Text := OpenDialog1.FileName;

   Singleton := TSingleton.GetInstance;
   Singleton.GetFilePath(EdtArquivoOriginal.Text);
end;

end.
