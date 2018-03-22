unit FactoryMarca;

interface

uses
  Celular, Computador;

type
  TFactoryMarca = class
    function ConsultarCelular : TCelular; virtual; abstract;
    function ConsultarComputador : TComputador; virtual; abstract;
  end;

implementation

end.
