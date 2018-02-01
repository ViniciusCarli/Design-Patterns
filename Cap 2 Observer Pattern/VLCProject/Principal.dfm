object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 234
  ClientWidth = 463
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
    Top = 8
    Width = 62
    Height = 13
    Caption = 'Temperature'
  end
  object Label2: TLabel
    Left = 95
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Humidity'
  end
  object Label3: TLabel
    Left = 182
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Pressure'
  end
  object Label4: TLabel
    Left = 295
    Top = 50
    Width = 54
    Height = 13
    Caption = 'Heat Index'
  end
  object Log: TLabel
    Left = 8
    Top = 98
    Width = 54
    Height = 13
    Caption = 'ChangeLog'
  end
  object Label5: TLabel
    Left = 8
    Top = 50
    Width = 64
    Height = 13
    Caption = 'Actual Status'
  end
  object Memo1: TMemo
    Left = 8
    Top = 117
    Width = 305
    Height = 109
    TabOrder = 0
  end
  object EditTemp: TEdit
    Left = 8
    Top = 23
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object EditHum: TEdit
    Left = 95
    Top = 23
    Width = 81
    Height = 21
    TabOrder = 2
  end
  object EditPress: TEdit
    Left = 182
    Top = 23
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 381
    Top = 23
    Width = 75
    Height = 21
    Caption = 'New Data'
    TabOrder = 4
    OnClick = Button1Click
  end
  object EdtHeatIndex: TEdit
    Left = 295
    Top = 69
    Width = 99
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 8
    Top = 69
    Width = 281
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 6
  end
end
