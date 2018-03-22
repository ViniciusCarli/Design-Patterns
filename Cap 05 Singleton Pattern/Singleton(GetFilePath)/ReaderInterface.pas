unit ReaderInterface;

interface

uses
  Dados;

type
  TBBReader = class
  protected
    FDados: TDmDados;
  public
    function ShowOnGrid: string; virtual; abstract;
    constructor Create(Dados: TDmDados);
  end;

implementation

{ TBBReader }

constructor TBBReader.Create(Dados: TDmDados);
begin
  FDados := Dados;
end;

end.
