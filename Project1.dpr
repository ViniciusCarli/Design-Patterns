program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  DuckUtils in 'DuckUtils.pas',
  FlyUtils in 'FlyUtils.pas',
  DisplayUtils in 'DisplayUtils.pas',
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
  FlyPickleMagic in 'FlyPickleMagic.pas';

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

      Writeln('Rubber Duck');
      RubberDuck.Fly;
      RubberDuck.Swim;

      Writeln('Rocket Duck');
      RocketDuck.Fly;
      RocketDuck.Swim;

      Writeln('Pickle Duck');
      PickleDuck.Fly;
      PickleDuck.Swim;

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
