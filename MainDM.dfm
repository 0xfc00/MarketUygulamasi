object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 356
  Width = 732
  object UniConn: TFDConnection
    Params.Strings = (
      'Server=DESKTOP-MCB\MSSQLSERVER2014'
      'Database=KHPRO'
      'DriverID=MSSQL'
      'OSAuthent=Yes')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    DriverID = 'MSSQL'
    Left = 72
    Top = 160
  end
  object qry1: TFDQuery
    ObjectView = False
    Connection = UniConn
    Left = 208
    Top = 48
  end
end
