program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CokeConcreteClass in 'CokeConcreteClass.pas',
  FantaConcreteClass in 'FantaConcreteClass.pas',
  SodaClasses in 'SodaClasses.pas';

var
  Coke : TNormalCoke;
  LimeIceCoke : TCokeIceLime;
  Fanta : TNormalFanta;

begin
  Coke := TNormalCoke.Create;
  LimeIceCoke := TCokeIceLime.Create;
  Fanta := TNormalFanta.Create;
  try
    try
      Coke.PrepareSoda;
      Fanta.PrepareSoda;
      LimeIceCoke.PrepareSoda;

    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    Readln;
    Coke.Free;
    LimeIceCoke.Free;
    Fanta.Free;
  end;
end.
