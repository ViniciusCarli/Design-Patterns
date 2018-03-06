object DmDados: TDmDados
  OldCreateOrder = False
  Height = 140
  Width = 184
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 63
    Top = 38
    object cdsid: TStringField
      FieldName = 'id'
      Size = 10
    end
    object cdsfirst_name: TStringField
      FieldName = 'first_name'
      Size = 45
    end
    object cdslast_name: TStringField
      FieldName = 'last_name'
      Size = 45
    end
    object cdsemail: TStringField
      FieldName = 'email'
      Size = 45
    end
    object cdsgender: TStringField
      FieldName = 'gender'
      Size = 12
    end
    object cdsip_address: TStringField
      FieldName = 'ip_address'
      Size = 45
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 128
    Top = 72
  end
end
