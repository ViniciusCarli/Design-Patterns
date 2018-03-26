object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 240
  Width = 332
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 96
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 56
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=lojamoveis'
      'Password=123'
      'User_Name=postgres'
      'Server=localhost'
      'ExtendedMetadata=True'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 248
    Top = 64
  end
  object qryProduto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cliente;')
    Left = 240
    Top = 112
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 240
    Top = 168
  end
end
