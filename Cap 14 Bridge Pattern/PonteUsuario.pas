unit PonteUsuario;

interface

uses
  System.SysUtils, PonteAbstract;

type
  TPonteUsuario = class(TPonteAbstract)
    function Mostrar : string; override;
  end;
implementation

{ TPonteUsuario }

function TPonteUsuario.Mostrar : string;
begin
  Self.Imp.Nome;
  Self.Imp.Ingredients;
  Self.Imp.Adicionais;
end;

end.
