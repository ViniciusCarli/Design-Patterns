object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 93
  ClientWidth = 227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 84
    Height = 26
    Caption = 'Selecione A Porta'#13#10
  end
  object btnIniciar: TButton
    Left = 135
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object edtPort: TEdit
    Left = 8
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '211'
  end
end
