object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 240
  Width = 332
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 56
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 168
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=lojamoveis'
      'Password=123'
      'User_Name=postgres'
      'Server=localhost'
      'ExtendedMetadata=True'
      'DriverID=PG')
    Left = 192
    Top = 80
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 272
    Top = 72
  end
end
