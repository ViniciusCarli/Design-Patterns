unit Dados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TDmDados = class(TDataModule)
    cds: TClientDataSet;
    cdsid: TStringField;
    cdsfirst_name: TStringField;
    cdslast_name: TStringField;
    cdsemail: TStringField;
    cdsgender: TStringField;
    cdsip_address: TStringField;
    XMLDocument1: TXMLDocument;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
