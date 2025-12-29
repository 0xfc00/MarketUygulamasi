object frmCariHareketEkle: TfrmCariHareketEkle
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmCariHareketEkle'
  ClientHeight = 350
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 15
    Top = 48
    Width = 54
    Height = 13
    Caption = #304#351'lem Tarihi'
    FocusControl = edtIslemTarihi
  end
  object lblIslemTuru: TLabel
    Left = 15
    Top = 70
    Width = 50
    Height = 13
    Caption = #304#351'lem T'#252'r'#252
  end
  object Label13: TLabel
    Left = 15
    Top = 161
    Width = 50
    Height = 13
    Caption = 'A'#231#305'klama 1'
    FocusControl = cxDBTextEdit8
  end
  object Label14: TLabel
    Left = 15
    Top = 115
    Width = 43
    Height = 13
    Caption = 'Evrak No'
    FocusControl = cxDBTextEdit9
  end
  object Label16: TLabel
    Left = 15
    Top = 138
    Width = 26
    Height = 13
    Caption = 'Tutar'
  end
  object Label2: TLabel
    Left = 274
    Top = 48
    Width = 37
    Height = 13
    Caption = 'Cari Ad'#305
    FocusControl = cxDBTextEdit2
  end
  object Label1: TLabel
    Left = 274
    Top = 70
    Width = 46
    Height = 13
    Caption = 'Cari Kodu'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel
    Left = 274
    Top = 91
    Width = 21
    Height = 13
    Caption = 'Bor'#231
    FocusControl = cxDBTextEdit1
  end
  object Label4: TLabel
    Left = 15
    Top = 183
    Width = 50
    Height = 13
    Caption = 'A'#231#305'klama 2'
    FocusControl = cxDBTextEdit4
  end
  object lblPosHesabi: TLabel
    Left = 15
    Top = 92
    Width = 52
    Height = 13
    Caption = 'Pos Hesab'#305
    Visible = False
  end
  object pnlAlt: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 264
    Width = 481
    Height = 83
    Align = alBottom
    TabOrder = 0
    object btnKapat: TcxButton
      AlignWithMargins = True
      Left = 377
      Top = 4
      Width = 100
      Height = 75
      Align = alRight
      Cancel = True
      Caption = 'Kapat'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001D744558745469746C6500436C6F73653B457869743B42
        6172733B526962626F6E3B4603B9E8000000F749444154785EEDD741CAC23010
        86E17FD5FB284AA5B8FC6FE2F52C6816398B87B0E805D238C8C82C8A86778274
        6117DF76BE27214CF52FE73C6B9E80CBE13FCF919F002C80540BB84BF692E800
        044927B97180956F15D8288294373A7BA308044892CE76802148F92B7A1323BD
        81A30DB2288294379293F70DF48628DE445064A19C0014F16670042707007813
        93728D95230047809303004080720000085E5E0F081F00B112C0CB39C20F08E0
        11463F806FB81E6C4C00001BAEB02700009C9C6CCC2200BEF6B3676352C028D9
        4D07593944B49ECFF1205983F20942E12BC9D5FB0606D55B3943B4564E0196F4
        ED1FA5CBFF8205306B1EDD7B20108AD63FFD0000000049454E44AE426082}
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnKapatClick
    end
    object btnkaydet: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 75
      Align = alLeft
      Caption = 'Kaydet'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F637373223E2E477265656E7B
        66696C6C3A233033394332333B7D3C2F7374796C653E0D0A3C7061746820636C
        6173733D22477265656E2220643D224D32392C32682D35763130483856324833
        43322E342C322C322C322E342C322C3376323663302C302E362C302E342C312C
        312C3168323663302E362C302C312D302E342C312D3156334333302C322E342C
        32392E362C322C32392C327A204D32342C32344838762D3620202623393B6831
        365632347A204D31302C327638683856324831307A204D31342C38682D325634
        683256387A222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnkaydetClick
    end
  end
  object edtIslemTarihi: TcxDBDateEdit
    Left = 75
    Top = 45
    DataBinding.DataField = 'ISLEMTARIHI'
    DataBinding.DataSource = dsCariHarEkle
    TabOrder = 1
    Width = 121
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 75
    Top = 158
    DataBinding.DataField = 'ACIKLAMA1'
    DataBinding.DataSource = dsCariHarEkle
    TabOrder = 2
    Width = 310
  end
  object cxDBTextEdit9: TcxDBTextEdit
    Left = 75
    Top = 112
    DataBinding.DataField = 'EVRAKNO'
    DataBinding.DataSource = dsCariHarEkle
    TabOrder = 3
    Width = 121
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 324
    Top = 45
    DataBinding.DataField = 'UNVAN'
    DataBinding.DataSource = dsCari
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 121
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 324
    Top = 67
    DataBinding.DataField = 'CARIKODU'
    DataBinding.DataSource = dsCari
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 324
    Top = 88
    DataBinding.DataField = 'BAKIYE'
    DataBinding.DataSource = dsCari
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 121
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 75
    Top = 180
    DataBinding.DataField = 'ACIKLAMA2'
    DataBinding.DataSource = dsCariHarEkle
    TabOrder = 7
    Width = 310
  end
  object edtTutar: TcxCalcEdit
    Left = 75
    Top = 135
    EditValue = 0.000000000000000000
    TabOrder = 8
    Width = 121
  end
  object cbxIslemTuru: TcxComboBox
    Left = 75
    Top = 67
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = cbxIslemTuruPropertiesChange
    TabOrder = 9
    Width = 121
  end
  object cbxPosHesabi: TcxDBLookupComboBox
    Left = 75
    Top = 89
    DataBinding.DataField = 'POSID'
    DataBinding.DataSource = dsCariHarEkle
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'POSADI'
      end>
    Properties.ListSource = dsPos
    TabOrder = 10
    Visible = False
    Width = 121
  end
  object qryCari: TFDQuery
    Connection = dmMain.UniConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select'
      '* FROM CARI')
    Left = 352
    Top = 120
  end
  object dsCari: TDataSource
    AutoEdit = False
    DataSet = qryCari
    Left = 408
    Top = 120
  end
  object qryCariHarEkle: TFDQuery
    BeforePost = qryCariHarEkleBeforePost
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from ISLEM_BASLIK where 1=0')
    Left = 352
    Top = 168
  end
  object dsCariHarEkle: TDataSource
    DataSet = qryCariHarEkle
    Left = 416
    Top = 176
  end
  object qryPos: TFDQuery
    Connection = dmMain.UniConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select'
      '* FROM POS where AKTIF = 1 and POSADI <> '#39'POSSABIT'#39)
    Left = 296
    Top = 232
  end
  object dsPos: TDataSource
    AutoEdit = False
    DataSet = qryPos
    Left = 352
    Top = 232
  end
end
