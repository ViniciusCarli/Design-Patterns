unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, CsvReader,
  ReaderFactory, Dados;

type
  TForm1 = class(TForm)
    EdtArquivoOriginal: TEdit;
    SpeedButton1: TSpeedButton;
    btnLerArquivo: TBitBtn;
    RadioGroup1: TRadioGroup;
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

implementation

uses
  ReaderInterface;

{$R *.dfm}

procedure TForm1.btnLerArquivoClick(Sender: TObject);
var
  Reader: TBBReader;
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    Factory := TReaderFactory.Create(FDados);
    try
      Reader := Factory.CriarReader(tpCsvReader);
      try
        Reader.ShowOnGrid;
      finally
        Reader.Free;
      end;
    finally
      Factory.Free;
    end;
  end;
//  if RadioGroup1.ItemIndex = 1 then

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
end;

end.
