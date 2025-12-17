object stokAktarimForm: TstokAktarimForm
  Left = 0
  Top = 0
  Caption = 'Stok '#304#231'eri Aktar'#305'm'
  ClientHeight = 647
  ClientWidth = 1255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gbUst: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 73
    Width = 1255
    object btnDosyaAc: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 139
      Height = 61
      Align = alLeft
      Caption = 'Dosya A'#231
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000002B744558745469746C65004F70656E3B466F6C6465723B
        426172733B526962626F6E3B5374616E646172643B4C6F6164F1C3C463000000
        7449444154785EEDD3B10DC02010435116BC653203A3651E56702EB51B20912F
        525CFCDAEF9068004AFB16C000030CE8BD4786C9227B1D80950C982CAA01F805
        C080C8CA7E418CF3B8C3464180D50B697C3106EC5FF8FC05D4E3592380729C00
        E2710688C719201E6780789C019A710694668001175F708637AF288C17000000
        0049454E44AE426082}
      TabOrder = 0
      OnClick = btnDosyaAcClick
    end
    object cxGroupBox3: TcxGroupBox
      AlignWithMargins = True
      Left = 333
      Top = 6
      Align = alLeft
      Caption = 'Stok Kodu'
      TabOrder = 1
      Height = 61
      Width = 85
      object cbStokKoduKolon: TcxComboBox
        Left = 3
        Top = 18
        Align = alClient
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        TabOrder = 0
        Width = 79
      end
    end
    object cxGroupBox4: TcxGroupBox
      AlignWithMargins = True
      Left = 424
      Top = 6
      Align = alLeft
      Caption = 'Stok Ad'#305
      TabOrder = 2
      Height = 61
      Width = 78
      object cbStokAdiKolon: TcxComboBox
        Left = 3
        Top = 18
        Align = alClient
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        TabOrder = 0
        Width = 72
      end
    end
    object cxGroupBox5: TcxGroupBox
      AlignWithMargins = True
      Left = 508
      Top = 6
      Align = alLeft
      Caption = 'Barkod'
      TabOrder = 3
      Height = 61
      Width = 71
      object cbBarkodKolon: TcxComboBox
        Left = 3
        Top = 18
        Align = alClient
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        TabOrder = 0
        Width = 65
      end
    end
    object cxGroupBox6: TcxGroupBox
      AlignWithMargins = True
      Left = 585
      Top = 6
      Align = alLeft
      Caption = 'Sat'#305#351' Fiyat'#305' 1'
      TabOrder = 4
      Height = 61
      Width = 96
      object cbSatisFiyatKolon: TcxComboBox
        Left = 3
        Top = 18
        Align = alClient
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        TabOrder = 0
        Width = 90
      end
    end
    object cxGroupBox7: TcxGroupBox
      AlignWithMargins = True
      Left = 687
      Top = 6
      Align = alLeft
      Caption = 'Al'#305#351' Fiyat'#305
      TabOrder = 5
      Height = 61
      Width = 89
      object cbAlisFiyatKolon: TcxComboBox
        Left = 3
        Top = 18
        Align = alClient
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        TabOrder = 0
        Width = 83
      end
    end
    object cxGroupBox8: TcxGroupBox
      AlignWithMargins = True
      Left = 782
      Top = 6
      Align = alLeft
      Caption = 'KDV'
      TabOrder = 6
      Height = 61
      Width = 66
      object cbKdvKolon: TcxComboBox
        Left = 3
        Top = 18
        Align = alClient
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        TabOrder = 0
        Width = 60
      end
    end
    object btnKapat: TcxButton
      AlignWithMargins = True
      Left = 1120
      Top = 6
      Width = 129
      Height = 61
      Align = alRight
      Cancel = True
      Caption = 'Kapat'
      OptionsImage.Glyph.SourceDPI = 96
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
      TabOrder = 7
      OnClick = btnKapatClick
    end
    object cxGroupBox9: TcxGroupBox
      AlignWithMargins = True
      Left = 854
      Top = 6
      Align = alLeft
      Caption = 'Ba'#351'lanacak Sat'#305'r'
      TabOrder = 8
      Height = 61
      Width = 123
      object edtBaslangicSatir: TcxTextEdit
        Left = 3
        Top = 18
        Align = alClient
        TabOrder = 0
        Text = '1'
        OnKeyPress = edtBaslangicSatirKeyPress
        Width = 117
      end
    end
    object btnAktar: TcxButton
      AlignWithMargins = True
      Left = 151
      Top = 6
      Width = 139
      Height = 61
      Margins.Right = 40
      Align = alLeft
      Caption = 'Aktar'
      Enabled = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000010744558745469746C6500456469743B5265646F3B045D719A000001
        1D49444154785EEDD62D4B44411487F1197C45BF8160DEB6414404116C266D0A
        0B8BD962DE2A623088DC601093460DBB518BE05730ADD54FA00822AEBB1C9F28
        87C3BA73CF652D137EF9FF305C666E10917F650EE4801C9003B68EEE47B58D1E
        E4970B4404CD1F60DB415F459C237A0252ED1A1105A2232059C38838F305A46B
        1A11A755052C621FB7E8E21532A2134F401D6DF4210EC765025AF88254A0480D
        388454E412312560090335D0C501EA9847306CE0438D5F21A67E03D76AFC11B3
        0843AC1BE3379828730FBCA880953FC6D7F0AEC63B982A7B0F7CAB809921E3AB
        7853E37798F65CC5FA2817100CCBC6F803E6BC8FD1930AD84348E10D2854C033
        26C71950430F824F6C8EFB04025A9E717F005043A848FE2935E5801CF003ADFD
        2B58A1DE1AB60000000049454E44AE426082}
      TabOrder = 9
      OnClick = btnAktarClick
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 73
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 574
    Width = 1255
    object sGrd: TStringGrid
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 1243
      Height = 562
      Align = alClient
      ColCount = 1
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing]
      TabOrder = 0
      RowHeights = (
        24)
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 784
    Top = 184
  end
  object MSQuery1: TUniQuery
    Left = 232
    Top = 88
  end
end
