unit APICryptoCoins;

interface

uses
  IdTCPConnection, IdTCPClient, IdHTTP, IdSSLOpenSSL, System.json, System.SysUtils;
type
  TAPICoinCap = class
  private
    RespCode: Integer;
    procedure SearchCoin(pCoin: String);
    procedure LerJson(pJson: String);
  public
    Name, Symbol, Rank, PriceUsd, PriceBtc : String;
    function GetRespCode: Integer;
    function GetName : String;
    function GetSymbol : String;
    function GetRank : String;
    function GetPriceUsd : String;
    function GetPriceBtc : String;
    constructor Create(Coin : String);
  end;
implementation


procedure TAPICoinCap.SearchCoin(pCoin: String);
var
  IdHTTP: TIdHTTP;
  LHandler: TIdSSLIOHandlerSocketOpenSSL;
  Json: String;
  URL : String;
begin
  IdHTTP := TIdHTTP.Create();
  LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    try
      IdHTTP.HandleRedirects := True;
      IdHttp.IOHandler := LHandler;
      URL := 'https://api.coinmarketcap.com/v1/ticker/' + pCoin;
      Json := IdHTTP.Get(URL);
      RespCode := IdHTTP.ResponseCode;
    except
      RespCode := IdHTTP.ResponseCode;
      exit;
    end;
  finally
    FreeAndNil(LHandler);
    FreeAndNil(IdHTTP);
  end;
  LerJson(Json);
end;

constructor TAPICoinCap.Create(Coin: String);
begin
   SearchCoin(Coin);
end;
function TAPICoinCap.GetName: String;
begin
  Result := Name;
end;
function TAPICoinCap.GetSymbol: String;
begin
  Result := Symbol;
end;
function TAPICoinCap.GetRank: String;
begin
  Result := Rank;
end;
function TAPICoinCap.GetPriceUsd: String;
begin
  Result := PriceUsd;
end;
function TAPICoinCap.GetPriceBTC: String;
begin
  Result := PriceBtc;
end;
function TAPICoinCap.GetRespCode: Integer;
begin
  Result := RespCode;
end;

procedure TAPICoinCap.LerJson(pJson: String);
var
  Arr : TJSONArray;
  Obj: TJSONObject;
begin
  try
    Arr:= TJSONArray(TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(pJson), 0));
    Obj := TJSONObject(Arr.Items[0]);
    Name := Obj.Get('name').JsonValue.Value;
    Symbol := Obj.Get('symbol').JsonValue.Value;
    Rank := Obj.Get('rank').JsonValue.Value;
    PriceUsd := Obj.Get('price_usd').JsonValue.Value;
    PriceBtc := Obj.Get('price_btc').JsonValue.Value;
  finally
    FreeAndNil(Arr);
  end;
end;
end.
