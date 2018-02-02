unit TestWeatherCentral;

interface

uses
  TestFramework, Subject, WeatherCentral, System.Generics.Collections,
  System.SysUtils, Observer, ConcreteObserver, Observerteste2;

type
  TestTWeatherCentral = class(TTestCase)
  strict private
    FWeatherCentral: TWeatherCentral;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestHeatIndex;
    procedure TestCriarUmObserver;
    procedure TestCriarDoisObservers;
    procedure TestRemoveUmObserver;
    procedure TestRemoveDoisObservers;

  end;

implementation

procedure TestTWeatherCentral.TestHeatIndex;
begin
  CheckEquals('52,97', FormatFloat('#,##0.00',FWeatherCentral.HeatIndex(10,10)));
end;

procedure TestTWeatherCentral.TestRemoveUmObserver;
begin
  FWeatherCentral.RegisterObserver(TConcreteObserver.Create);
  FWeatherCentral.RemoveObserver(TConcreteObserver.Create);

  FWeatherCentral.FObservers.Pack;
  CheckEquals(0,FWeatherCentral.FObservers.Count);
end;

procedure TestTWeatherCentral.TestRemoveDoisObservers;
begin
  FWeatherCentral.RegisterObserver(TConcreteObserver.Create);
  FWeatherCentral.RegisterObserver(TObserverTeste2.Create);
  FWeatherCentral.RemoveObserver(TObserverTeste2.Create);
  FWeatherCentral.RemoveObserver(TConcreteObserver.Create);

  CheckEquals(0,FWeatherCentral.FObservers.Count);
end;

procedure TestTWeatherCentral.SetUp;
begin
  inherited;
  FWeatherCentral := TWeatherCentral.Create;
end;

procedure TestTWeatherCentral.TearDown;
begin
  inherited;
  FWeatherCentral.Free;
end;

procedure TestTWeatherCentral.TestCriarDoisObservers;
begin
  FWeatherCentral.RegisterObserver(TConcreteObserver.Create);
  FWeatherCentral.RegisterObserver(TObserverTeste2.Create);

  CheckEquals(2,FWeatherCentral.FObservers.Count);
end;

procedure TestTWeatherCentral.TestCriarUmObserver;
begin
  FWeatherCentral.RegisterObserver(TConcreteObserver.Create);

  CheckEquals(1,FWeatherCentral.FObservers.Count);
end;

initialization

RegisterTest(TestTWeatherCentral.Suite);

end.
