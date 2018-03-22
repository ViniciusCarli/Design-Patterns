unit Decorator;

interface

uses
  Component;

type
  TDecorator = class(TInterfacedObject, ISanduiche)
  protected
    Sanduiche: ISanduiche;
    function ObterPreco: double; virtual;
    function ObterDados: string; virtual;
  public
    constructor Create(Sanduiche: ISanduiche);
  end;

implementation

{ TDecorator }

constructor TDecorator.Create(Sanduiche: ISanduiche);
begin
  Self.Sanduiche := Sanduiche;
end;

function TDecorator.ObterDados  : string;
begin
  Result := Sanduiche.ObterDados;
end;

function TDecorator.ObterPreco: double;
begin
  Result := Sanduiche.ObterPreco;
end;

end.
