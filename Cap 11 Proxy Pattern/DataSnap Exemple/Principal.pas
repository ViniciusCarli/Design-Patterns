unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPrincipal = class(TForm)
    edtPorta: TEdit;
    edtHost: TEdit;
    btnConectar: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnConectarClick(Sender: TObject);
begin
  if btnConectar.Caption = 'Conectar' then
  begin
    SQLConnection1.Close;
    SQLConnection1.Params.Clear;
    SQLConnection1.Params.Add('DriverName=DataSnap');
    SQLConnection1.Params.Add('HostName='+ edtHost.Text);
    SQLConnection1.Params.Add('port='+ edtPorta.Text);
    SQLConnection1.Connected := True;
    ClientDataSet1.Open;
    if SQLConnection1.Connected then
      btnConectar.Caption := 'Desconectar';
  end
else
  begin
    SQLConnection1.Close;
    if not SQLConnection1.Connected then
    btnConectar.Caption := 'Conectar';
    ClientDataSet1.Close;
  end;
end;

end.
