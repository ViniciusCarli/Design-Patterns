unit PonteAbstract;

interface

uses
  System.SysUtils, InterfaceImp;

type
  TPonteAbstract = class
    Imp : IImplementor;
    constructor Create(Imp : IImplementor);
    function Mostrar : string; virtual; abstract;
  end;
implementation

{ TPonte }

constructor TPonteAbstract.Create(Imp: IImplementor);
begin
  Self.Imp := Imp;
end;

end.
