object frmDbAyarlar: TfrmDbAyarlar
  Left = 0
  Top = 0
  Caption = 'Veritaban'#305' Ayarlar'#305
  ClientHeight = 551
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnKaydet: TcxButton
    AlignWithMargins = True
    Left = 3
    Top = 262
    Width = 312
    Height = 25
    Align = alTop
    Caption = 'Kaydet'
    TabOrder = 0
    OnClick = btnKaydetClick
    ExplicitLeft = 21
    ExplicitTop = 495
    ExplicitWidth = 289
  end
  object btnTest: TcxButton
    AlignWithMargins = True
    Left = 3
    Top = 231
    Width = 312
    Height = 25
    Align = alTop
    Caption = 'Test'
    TabOrder = 1
    OnClick = btnTestClick
    ExplicitLeft = 97
    ExplicitTop = 334
    ExplicitWidth = 75
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 312
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 20
    ExplicitTop = 48
    ExplicitWidth = 185
    object cxLabel6: TcxLabel
      Left = 12
      Top = 9
      Caption = 'Ba'#287'lant'#305' : '
      OnClick = cxLabel1Click
    end
    object cbDbTipi: TComboBox
      Left = 70
      Top = 8
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 1
      Text = 'Firebird Embeded'
      OnChange = cbDbTipiChange
      Items.Strings = (
        'Firebird Embeded'
        'Firebird Server')
    end
  end
  object gbServer: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 111
    Width = 312
    Height = 114
    Align = alTop
    Caption = 'Firebird Server'
    TabOrder = 3
    Visible = False
    object edtServer: TcxTextEdit
      Left = 75
      Top = 26
      TabOrder = 0
      Text = 'localhost'
      Width = 197
    end
    object cxLabel7: TcxLabel
      Left = 12
      Top = 27
      Caption = 'Server :'
      OnClick = cxLabel1Click
    end
    object edtUser: TcxTextEdit
      Left = 75
      Top = 50
      TabOrder = 2
      Width = 197
    end
    object cxLabel9: TcxLabel
      Left = 12
      Top = 51
      Caption = 'Username'
      Visible = False
    end
    object edtPass: TcxTextEdit
      Left = 75
      Top = 74
      TabOrder = 4
      Width = 197
    end
    object cxLabel10: TcxLabel
      Left = 12
      Top = 75
      Caption = 'Password'
      Visible = False
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 312
    Height = 55
    Align = alTop
    TabOrder = 4
    object cxLabel2: TcxLabel
      Left = 7
      Top = 11
      Caption = 'Database'
    end
    object edtDatabase: TcxTextEdit
      Left = 70
      Top = 10
      Enabled = False
      TabOrder = 1
      Text = 'KHPRO.FDB'
      Width = 197
    end
  end
  object UniConnTest: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\mcb_proje\data\khpro.fdb'
    Server = 'localhost'
    LoginPrompt = False
    Left = 136
    Top = 56
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 200
    Top = 56
  end
end
