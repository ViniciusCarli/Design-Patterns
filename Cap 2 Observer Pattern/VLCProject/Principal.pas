unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Observer, Subject, WeatherCentral,
  ConcreteObserver, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, Observerteste2;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    EditTemp: TEdit;
    EditHum: TEdit;
    EditPress: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtHeatIndex: TEdit;
    Log: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    procedure AdicionarDados;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Data: TWeatherCentral;
  ObserverTeste : TObserverTeste2;
  ConcreteObserver: TConcreteObserver;

implementation

{$R *.dfm}

procedure TForm1.AdicionarDados;
begin
  Data := TWeatherCentral.Create;
  ConcreteObserver := TConcreteObserver.Create(Data);
  ObserverTeste := TObserverTeste2.Create;

  Data.SetMeasurements(StrToFloat(EditTemp.Text), StrToFloat(EditHum.Text),
    StrToFloat(EditPress.Text));

  Memo1.Lines.Add((Format('Temperature: %n, Humidity: %n, Pressure: %n',
    [Data.FTemperature, Data.FHumidity, Data.FPressure])));

  Memo1.Lines.Add(Format('Heat Index:%n', [Data.NHeatIndex]));

  EdtHeatIndex.Text := Format('Heat Index:%n', [Data.NHeatIndex]);

  Edit1.Text := ((Format('Temperature: %n, Humidity: %n, Pressure: %n',
    [Data.FTemperature, Data.FHumidity, Data.FPressure])));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdicionarDados;
end;

end.
