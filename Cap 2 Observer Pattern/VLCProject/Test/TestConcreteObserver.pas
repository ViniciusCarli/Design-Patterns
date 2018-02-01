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

//procedure TestTConcreteObserver.SetUp;
//begin
//  FConcreteObserver := TConcreteObserver.Create;
//end;

//procedure TestTConcreteObserver.TearDown;
//begin
//  FConcreteObserver.Free;
//  FConcreteObserver := nil;
//end;

initialization
  RegisterTest(TestTConcreteObserver.Suite);
end.

