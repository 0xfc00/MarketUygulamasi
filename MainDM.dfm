object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
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
  object qrySabitSatirlarKontrol: TUniQuery
    Connection = UniConn
    SQL.Strings = (
      
        'IF NOT EXISTS (SELECT 1 FROM ISLEM_BASLIK WHERE ISLEMTURU = 0 AN' +
        'D ODEMETURU = 0 AND EVRAKNO = '#39'STOKHARSABIT'#39')'
      'BEGIN'
      
        '    INSERT INTO ISLEM_BASLIK (ISLEMTURU, ODEMETURU, ISLEMTARIHI,' +
        ' EVRAKNO)'
      '    VALUES (0, 0, GETDATE(), '#39'STOKHARSABIT'#39')'
      'END')
    Left = 312
    Top = 24
  end
end
