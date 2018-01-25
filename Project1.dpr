program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  DuckUtils in 'DuckUtils.pas',
  FlyUtils in 'FlyUtils.pas',
  SwimUtils in 'SwimUtils.pas',
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
  QuackSqueak in 'QuackSqueak.pas';

var
  RubberDuck : TDucktype;
  RoyalDuck  : TDucktype;
  RocketDuck : TDucktype;
  PickleDuck : TDucktype;

begin
  RubberDuck := TRubberDuck.Create;
  RoyalDuck := TRoyalDuck.Create;
  RocketDuck := TRocketDuck.Create;
  PickleDuck := TPickleDuck.Create;
  try
    try
      Writeln('Royal Duck');
      RoyalDuck.Fly;
      RoyalDuck.Swim;
      RoyalDuck.Quack;

      Writeln('Rubber Duck');
      RubberDuck.Fly;
      RubberDuck.Swim;
      RubberDuck.Quack;

      Writeln('Rocket Duck');
      RocketDuck.Fly;
      RocketDuck.Swim;
      RocketDuck.Quack;

      Writeln('Pickle Duck');
      PickleDuck.Fly;
      PickleDuck.Swim;
      PickleDuck.Quack;

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
