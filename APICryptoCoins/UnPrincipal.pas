unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.StdCtrls, IdComponent,
  IdBaseComponent;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtName: TEdit;
    edtSymbol: TEdit;
    edtRank: TEdit;
    edtPriceUSD: TEdit;
    Button1: TButton;
    edtCEP: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtPriceBTC: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  APICryptoCoins;

procedure TForm1.Button1Click(Sender: TObject);
var
  APICoinCap : TAPICoinCap;
begin
   try
      APICoinCap := TAPICoinCap.Create(edtCep.Text);
      if (APICoinCap.GetRespCode = 200 ) then
      begin
        edtName.Text := APICoinCap.GetName;
        edtSymbol.Text := APICoinCap.GetSymbol;
        edtRank.Text := APICoinCap.GetRank;
        edtPriceUSD.Text := APICoinCap.GetPriceUSD;
        edtPriceBTC.Text := APICoinCap.GetPriceBTC;
      end
      else if (APICoinCap.GetRespCode = 400) then
        showMessage('CryptoCoin Not Found');
   finally
     FreeAndNil(APICoinCap);
   end;
end;

end.
