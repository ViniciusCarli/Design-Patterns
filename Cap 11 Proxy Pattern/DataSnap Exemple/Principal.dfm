object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 304
  ClientWidth = 613
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
    Top = 5
    Width = 26
    Height = 26
    Caption = 'Porta'#13#10
  end
  object Label2: TLabel
    Left = 8
    Top = 41
    Width = 22
    Height = 13
    Caption = 'Host'
  end
  object edtPorta: TEdit
    Left = 8
    Top = 19
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '211'
  end
  object edtHost: TEdit
    Left = 8
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'localhost'
  end
  object btnConectar: TButton
    Left = 135
    Top = 54
    Width = 75
    Height = 21
    Caption = 'Conectar'
    TabOrder = 2
    OnClick = btnConectarClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 112
    Width = 601
    Height = 184
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 369
    Top = 81
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=localhost'
      'port=211')
    Connected = True
    Left = 410
    Top = 24
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 312
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 485
    Top = 24
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    RemoteServer = DSProviderConnection1
    Left = 555
    Top = 24
  end
end
