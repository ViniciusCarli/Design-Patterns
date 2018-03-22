program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  ReaderInterface in 'ReaderInterface.pas',
  CsvReader in 'CsvReader.pas',
  ReaderFactory in 'ReaderFactory.pas',
  XmlReader in 'XmlReader.pas',
  JsonReader in 'JsonReader.pas',
  Dados in 'Dados.pas' {DmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDmDados, DmDados);
  Application.Run;
end.
