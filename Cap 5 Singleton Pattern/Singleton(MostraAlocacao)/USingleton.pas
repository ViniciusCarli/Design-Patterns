unit USingleton;

interface

uses
  System.SysUtils;

type
  TSingleton = class
    private
      constructor Create;
    public
      class function GetInstance : TSingleton;
      procedure MostrarAlocacaoNaMememoria;
  end;

implementation
var
  Instancia : TSingleton;

{ TSingleton }

constructor TSingleton.Create;
begin
  inherited;
end;

class function TSingleton.GetInstance: TSingleton;
begin
  if instancia = nil then
    Instancia := TSingleton.Create;
  Result := instancia;
end;

procedure TSingleton.MostrarAlocacaoNaMememoria;
begin
  Writeln(IntToStr(Integer(Self)));
  Readln;
end;

initialization
  Instancia := nil;

finalization
  if instancia <> nil then
  Instancia.Free;
end.
