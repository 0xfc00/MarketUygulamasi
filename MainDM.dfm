object dmMain: TdmMain
  OldCreateOrder = False
  Height = 356
  Width = 732
  object UniConn: TUniConnection
    ProviderName = 'SQL Server'
    Database = 'KHPRO'
    SpecificOptions.Strings = (
      'SQL Server.Authentication=auWindows')
    Server = 'DESKTOP-MCB\SQLEXPRESS'
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 408
    Top = 136
  end
  object qry1: TUniQuery
    Connection = UniConn
    Left = 208
    Top = 48
  end
end
