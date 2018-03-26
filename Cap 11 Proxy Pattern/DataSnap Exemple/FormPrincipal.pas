unit FormPrincipal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnIniciar: TButton;
    Label1: TLabel;
    edtPort: TEdit;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ServerContainerUnit1;

{$R *.dfm}

procedure TForm1.btnIniciarClick(Sender: TObject);
begin
  if btnIniciar.Caption = 'Iniciar' then
    begin
     ServerContainer1.DSTCPServerTransport1.Port := StrToInt(edtPort.Text);
     ServerContainer1.DSServer1.Start;
      if ServerContainer1.DSServer1.Started then
        btnIniciar.Caption := 'Parar';
    end
  else
begin
  ServerContainer1.DSServer1.Stop;
    if not ServerContainer1.DSServer1.Started then
      btnIniciar.Caption := 'Iniciar';
end;
end;

end.

