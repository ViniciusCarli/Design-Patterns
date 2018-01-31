unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Observer, Subject, WeatherCentral,
  ConcreteObserver, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc;

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
  Display: TConcreteObserver;

implementation

{$R *.dfm}

procedure TForm1.AdicionarDados;
begin
  Data := TWeatherCentral.Create;
  Display := TConcreteObserver.Create(Data);
  Data.SetMeasurements(StrToFloat(EditTemp.Text), StrToFloat(EditHum.Text),
    StrToFloat(EditPress.Text));

  Memo1.Lines.Add((Format('Temperature: %n, Humidity: %n, Pressure: %n',
    [Data.FTemperature, Data.FHumidity, Data.FPressure])));
  EdtHeatIndex.Text := Format('Heat Index:%n', [Data.NHeatIndex]);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdicionarDados;
end;

end.
