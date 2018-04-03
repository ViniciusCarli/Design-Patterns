program Bridge;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  InterfaceImp in 'InterfaceImp.pas',
  RecursoBurger in 'RecursoBurger.pas',
  Burger in 'Burger.pas',
  PonteAbstract in 'PonteAbstract.pas',
  PonteUsuario in 'PonteUsuario.pas';

var
  Ponte : TPonteUsuario;
  Implement : IImplementor;
  HamBurger : TBurger;
begin
  try
    Implement := TRecursoBurger.Create(HamBurger);
    Ponte := TPonteUsuario.Create(Implement);
    try
      Ponte.Mostrar;
      Readln;
    except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    FreeAndNil(Ponte);
    FreeAndNil(HamBurger);
  end;
end.
