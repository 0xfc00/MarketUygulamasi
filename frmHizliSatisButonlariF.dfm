object frmHizliSatisButonlari: TfrmHizliSatisButonlari
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'H'#305'zl'#305' Sat'#305#351' Butonlar'#305
  ClientHeight = 573
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Align = alLeft
    Caption = 'H'#305'zl'#305' Sat'#305#351' Grup'
    TabOrder = 0
    Height = 490
    Width = 222
    object grdHsGrup: TcxGrid
      AlignWithMargins = True
      Left = 6
      Top = 18
      Width = 210
      Height = 391
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object viewHsGrup: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsHsGrup
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object viewHsGrupColumn1: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'ID'
          DataBinding.IsNullValueType = True
        end
        object viewHsGrupadi: TcxGridDBColumn
          Caption = 'Grup Ad'#305
          DataBinding.FieldName = 'GRUPADI'
          DataBinding.IsNullValueType = True
          Width = 161
        end
        object viewHsGrupsira: TcxGridDBColumn
          Caption = 'S'#305'ra'
          DataBinding.FieldName = 'SIRA'
          DataBinding.IsNullValueType = True
          Width = 49
        end
      end
      object grdHsGrupLevel1: TcxGridLevel
        Caption = 'grdHsGrupLevel1'
        GridView = viewHsGrup
      end
    end
    object cxButton1: TcxButton
      Left = 3
      Top = 412
      Width = 216
      Height = 34
      Align = alBottom
      Caption = 'Ekle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001B744558745469746C65004164643B506C75733B426172
        733B526962626F6E3B9506332F0000004D49444154785EEDD6B10D0020084451
        177429A762BBD3D2460B1273517F71A123AF004291644D1A0000406DA1395900
        000000002C9B9F881D00E0FD2D1875173F8043F4C51002B8EF2D0700A00379E5
        8E847E4EA9750000000049454E44AE426082}
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 3
      Top = 446
      Width = 216
      Height = 35
      Align = alBottom
      Caption = 'Sil'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000023744558745469746C650043616E63656C3B53746F703B
        457869743B426172733B526962626F6E3B4C9696B2000000F549444154785EED
        D7310AC240108561B31750922BD9A44802F1081E554451B4F62AA9D6090CAC84
        98C7CC63D122C56BF7FF8A8DAC9B18E34FF79F8015F03AEE994DCF0A5EC05676
        92D51E80C61BD959B63301347E9345D960447CC6073DE3FE0D31170FAA8E3A0F
        22C5757A6601018A38243D42E0B8623AEB1DE801828863004470710C3020709C
        0060048A93008C00711A801138CE033022C547686E40B300A83300707C8AC805
        680C97B066009678B7F489D2001CC7BF132400C7ED080C40F1364509040018E2
        1C622E5EC82E20EE415C2D0F9252F670C6C7C014F19455D63B50AABA251EA5BD
        9E5179BF8290FB59BEFE335A016F69850D637E4FD7AD0000000049454E44AE42
        6082}
      TabOrder = 2
      OnClick = cxButton2Click
    end
  end
  object cxGroupBox3: TcxGroupBox
    AlignWithMargins = True
    Left = 231
    Top = 3
    Align = alClient
    Caption = 'Stoklar'
    TabOrder = 1
    Height = 490
    Width = 400
    object grdStoklar: TcxGrid
      AlignWithMargins = True
      Left = 6
      Top = 18
      Width = 388
      Height = 391
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object viewStoklar: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsHsStoklar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object viewStoklarstokid: TcxGridDBColumn
          Caption = 'Stok Ad'#305
          DataBinding.FieldName = 'STOKKODU'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
          Properties.KeyFieldNames = 'STOKKODU'
          Properties.ListColumns = <
            item
              FieldName = 'STOKADI'
            end>
          Properties.ListSource = dsStok
          Width = 268
        end
        object viewStoklarsira: TcxGridDBColumn
          Caption = 'S'#305'ra'
          DataBinding.FieldName = 'SIRA'
          DataBinding.IsNullValueType = True
          Width = 80
        end
      end
      object grdStoklarLevel1: TcxGridLevel
        Caption = 'grdStoklarLevel1'
        GridView = viewStoklar
      end
    end
    object cxButton3: TcxButton
      Left = 3
      Top = 412
      Width = 394
      Height = 34
      Align = alBottom
      Caption = 'Ekle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001B744558745469746C65004164643B506C75733B426172
        733B526962626F6E3B9506332F0000004D49444154785EEDD6B10D0020084451
        177429A762BBD3D2460B1273517F71A123AF004291644D1A0000406DA1395900
        000000002C9B9F881D00E0FD2D1875173F8043F4C51002B8EF2D0700A00379E5
        8E847E4EA9750000000049454E44AE426082}
      TabOrder = 1
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 3
      Top = 446
      Width = 394
      Height = 35
      Align = alBottom
      Caption = 'Sil'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000023744558745469746C650043616E63656C3B53746F703B
        457869743B426172733B526962626F6E3B4C9696B2000000F549444154785EED
        D7310AC240108561B31750922BD9A44802F1081E554451B4F62AA9D6090CAC84
        98C7CC63D122C56BF7FF8A8DAC9B18E34FF79F8015F03AEE994DCF0A5EC05676
        92D51E80C61BD959B63301347E9345D960447CC6073DE3FE0D31170FAA8E3A0F
        22C5757A6601018A38243D42E0B8623AEB1DE801828863004470710C3020709C
        0060048A93008C00711A801138CE033022C547686E40B300A83300707C8AC805
        680C97B066009678B7F489D2001CC7BF132400C7ED080C40F1364509040018E2
        1C622E5EC82E20EE415C2D0F9252F670C6C7C014F19455D63B50AABA251EA5BD
        9E5179BF8290FB59BEFE335A016F69850D637E4FD7AD0000000049454E44AE42
        6082}
      TabOrder = 2
      OnClick = cxButton4Click
    end
  end
  object cxGroupBox4: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 499
    Align = alBottom
    TabOrder = 2
    Height = 71
    Width = 628
    object btnKapat: TcxButton
      AlignWithMargins = True
      Left = 481
      Top = 24
      Width = 141
      Height = 41
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
      TabOrder = 0
      OnClick = btnKapatClick
    end
    object btnKaydet: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 24
      Width = 165
      Height = 41
      Align = alLeft
      Cancel = True
      Caption = 'Kaydet'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E312220786D6C6E73
        3D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D
        6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939
        392F786C696E6B2220783D223070782220793D22307078222076696577426F78
        3D2230203020333220333222207374796C653D22656E61626C652D6261636B67
        726F756E643A6E6577203020302033322033323B2220786D6C3A73706163653D
        227072657365727665223E262331333B262331303B2623393B2623393B262339
        3B2623393B2623393B2623393B2623393B2623393B2623393B2623393B262339
        3B2623393B2623393B2623393B2623393B2623393B2623393B2623393B3C7374
        796C6520747970653D22746578742F6373732220786D6C3A73706163653D2270
        72657365727665223E2E57686974657B66696C6C3A234646464646463B7D2623
        31333B262331303B2623393B2E477265656E7B66696C6C3A233033394332333B
        7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B95F31223E0D0A
        09093C672069643D22416464223E0D0A0909093C636972636C6520636C617373
        3D22477265656E222063783D223136222063793D2231362220723D223134222F
        3E0D0A09093C2F673E0D0A093C2F673E0D0A3C672069643D22D0A1D0BBD0BED0
        B95F32223E0D0A09093C706F6C79676F6E20636C6173733D2257686974652220
        706F696E74733D22382C31382031342C32342032352C31322032322C39203134
        2C31382031312C3135202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E
        0D0A}
      TabOrder = 1
      OnClick = btnKaydetClick
    end
  end
  object dsHsGrup: TDataSource
    DataSet = qryHsGrup
    Left = 149
    Top = 93
  end
  object qryHsGrup: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from T_HSGRUP')
    Left = 85
    Top = 93
  end
  object dsHsStoklar: TDataSource
    DataSet = qryHsStoklar
    Left = 373
    Top = 149
  end
  object qryHsStoklar: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from T_HSSIRA')
    MasterSource = dsHsGrup
    MasterFields = 'ID'
    DetailFields = 'GRUPID'
    Left = 309
    Top = 149
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
  end
  object qryStok: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from STOK')
    DetailFields = 'GRUPID'
    Left = 309
    Top = 229
  end
  object dsStok: TDataSource
    AutoEdit = False
    DataSet = qryStok
    Left = 373
    Top = 229
  end
end
