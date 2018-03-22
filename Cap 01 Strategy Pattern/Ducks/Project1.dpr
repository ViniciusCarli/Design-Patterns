program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  DuckUtils in 'DuckUtils.pas',
  FlyWings in 'FlyWings.pas',
  FlyNoFly in 'FlyNoFly.pas',
  RubberDuck in 'RubberDuck.pas',
  RoyalDuck in 'RoyalDuck.pas',
  SwimFloat in 'SwimFloat.pas',
  SwimSwim in 'SwimSwim.pas',
  RocketDuck in 'RocketDuck.pas',
  FlyRocket in 'FlyRocket.pas',
  PickleDuck in 'PickleDuck.pas',
  FlyPickleMagic in 'FlyPickleMagic.pas',
  QuackUtils in 'QuackUtils.pas',
  QuackQuack in 'QuackQuack.pas',
  QuackSqueak in 'QuackSqueak.pas',
  FlyUtils in 'FlyUtils.pas',
  SwimUtils in 'SwimUtils.pas';

var
  RubberDuck: TDucktype;
  RoyalDuck: TDucktype;
  RocketDuck: TDucktype;
  PickleDuck: TDucktype;

begin
  RubberDuck := TRubberDuck.Create;
  RoyalDuck := TRoyalDuck.Create;
  RocketDuck := TRocketDuck.Create;
  PickleDuck := TPickleDuck.Create;
  try
    try
      Writeln('Royal Duck');
      Writeln(RoyalDuck.fly);
      Writeln(RoyalDuck.swim);
      Writeln(RoyalDuck.Quack);

      Readln;

      Writeln('Rubber Duck');
      Writeln(RubberDuck.fly);
      Writeln(RubberDuck.swim);
      Writeln(RubberDuck.Quack);

      Readln;

      Writeln('Rocket Duck');
      Writeln(RocketDuck.fly);
      Writeln(RocketDuck.swim);
      Writeln(RocketDuck.Quack);

      Readln;

      Writeln('Pickle Duck');
      Writeln(PickleDuck.fly);
      Writeln(PickleDuck.swim);
      Writeln(PickleDuck.Quack);

      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    RoyalDuck.Free;
    RubberDuck.Free;
    RocketDuck.Free;
    PickleDuck.Free;
  end;

end.
