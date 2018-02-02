unit TestConcreteObserver;

interface

uses
  TestFramework, ConcreteObserver, Subject, WeatherCentral, System.SysUtils, Observer;
type

  TestTConcreteObserver = class(TTestCase)
  strict private
    FConcreteObserver: TConcreteObserver;
  public
//    procedure SetUp; override;
//    procedure TearDown; override;
  end;

implementation

initialization
  RegisterTest(TestTConcreteObserver.Suite);
end.


