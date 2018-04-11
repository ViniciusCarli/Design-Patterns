object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Form1'
  ClientHeight = 167
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 111
    Top = 69
    Width = 41
    Height = 13
    Caption = 'Symbol :'
  end
  object Label3: TLabel
    Left = 158
    Top = 69
    Width = 31
    Height = 13
    Caption = 'Rank :'
  end
  object Label4: TLabel
    Left = 8
    Top = 111
    Width = 64
    Height = 13
    Caption = 'Price in USD :'
  end
  object Label1: TLabel
    Left = 8
    Top = 69
    Width = 34
    Height = 13
    Caption = 'Name :'
  end
  object Label5: TLabel
    Left = 8
    Top = 22
    Width = 61
    Height = 13
    Caption = 'CryptoCoin :'
  end
  object Label6: TLabel
    Left = 111
    Top = 111
    Width = 63
    Height = 13
    Caption = 'Price in BTN :'
  end
  object edtName: TEdit
    Left = 8
    Top = 84
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object edtSymbol: TEdit
    Left = 111
    Top = 84
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object edtRank: TEdit
    Left = 158
    Top = 84
    Width = 67
    Height = 21
    TabOrder = 2
  end
  object edtPriceUSD: TEdit
    Left = 8
    Top = 126
    Width = 97
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 125
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 4
    OnClick = Button1Click
  end
  object edtCEP: TEdit
    Left = 8
    Top = 40
    Width = 111
    Height = 21
    TabOrder = 5
  end
  object edtPriceBTC: TEdit
    Left = 111
    Top = 126
    Width = 114
    Height = 21
    TabOrder = 6
  end
end
