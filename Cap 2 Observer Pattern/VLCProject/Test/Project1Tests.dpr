program Project1Tests;

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestConcreteObserver in 'TestConcreteObserver.pas',
  ConcreteObserver in '..\ConcreteObserver.pas',
  Observer in '..\Observer.pas',
  WeatherCentral in '..\WeatherCentral.pas',
  Subject in '..\Subject.pas',
  TestWeatherCentral in 'TestWeatherCentral.pas',
  Observerteste2 in '..\Observerteste2.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

