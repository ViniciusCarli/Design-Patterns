object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 423
    Top = 8
    Width = 29
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object EdtArquivoOriginal: TEdit
    Left = 8
    Top = 8
    Width = 409
    Height = 21
    TabOrder = 0
  end
  object btnLerArquivo: TBitBtn
    Left = 554
    Top = 8
    Width = 71
    Height = 22
    Caption = 'Ler Arquivo'
    TabOrder = 1
    OnClick = btnLerArquivoClick
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 64
    Width = 635
    Height = 235
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 17
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'first_name'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gender'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ip_address'
        Width = 114
        Visible = True
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 584
    Top = 32
  end
  object DataSource1: TDataSource
    Left = 584
    Top = 88
  end
end
