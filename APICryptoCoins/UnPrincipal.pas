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
  UmAPIviacep : TAPIViacep;
begin
   try
      UmAPIviacep := TAPIViacep.Create(edtCep.Text);
      if (UmAPIviacep.GetRespCode = 200 ) then
      begin
        edtName.Text := UmAPIviacep.GetName;
        edtSymbol.Text := UmAPIviacep.GetSymbol;
        edtRank.Text := UmAPIviacep.GetRank;
        edtPriceUSD.Text := UmAPIviacep.GetPriceUSD;
        edtPriceBTC.Text := UmAPIviacep.GetPriceBTC;
      end
      else if (UmAPIviacep.GetRespCode = 400) then
        showMessage('CryptoCoin Not Found');
   finally
     FreeAndNil(UmAPIviacep);
   end;
end;

end.
