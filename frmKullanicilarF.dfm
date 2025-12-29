object frmKullanicilar: TfrmKullanicilar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Kullan'#305'c'#305' Y'#246'netimi'
  ClientHeight = 583
  ClientWidth = 1094
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
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Align = alLeft
    Caption = 'Kullan'#305'c'#305'lar'
    TabOrder = 0
    Height = 498
    Width = 230
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 6
      Top = 18
      Width = 218
      Height = 386
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsKullanicilar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object cxGrid1DBTableView1user: TcxGridDBColumn
          DataBinding.FieldName = 'KULLANICI'
          DataBinding.IsNullValueType = True
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = 'cxGrid1Level1'
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 410
      Width = 218
      Height = 35
      Align = alBottom
      Caption = 'Ekle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
        464646463B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
        233033394332333B7D3C2F7374796C653E0D0A3C672069643D22416464223E0D
        0A09093C636972636C6520636C6173733D22477265656E222063783D22313622
        2063793D2231362220723D223134222F3E0D0A09093C706F6C79676F6E20636C
        6173733D2257686974652220706F696E74733D2232342C31342031382C313420
        31382C382031342C382031342C313420382C313420382C31382031342C313820
        31342C32342031382C32342031382C31382032342C3138202623393B222F3E0D
        0A093C2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 451
      Width = 218
      Height = 35
      Align = alBottom
      Caption = 'Sil'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F637373223E2E526564
        7B66696C6C3A234431314331433B7D3C2F7374796C653E0D0A3C706F6C79676F
        6E2069643D2244656C6574652220636C6173733D225265642220706F696E7473
        3D2232382C362032362C342031362C313420362C3420342C362031342C313620
        342C323620362C32382031362C31382032362C32382032382C32362031382C31
        3620222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 2
      OnClick = cxButton2Click
    end
  end
  object cxGroupBox2: TcxGroupBox
    AlignWithMargins = True
    Left = 239
    Top = 3
    Align = alClient
    Caption = 'Yetkiler'
    TabOrder = 1
    Height = 498
    Width = 852
    object cxGroupBox24: TcxGroupBox
      AlignWithMargins = True
      Left = 276
      Top = 180
      Align = alLeft
      PanelStyle.Active = True
      TabOrder = 0
      Height = 306
      Width = 264
      object cxGroupBox23: TcxGroupBox
        Left = 3
        Top = 3
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 0
        Height = 33
        Width = 258
        object cxLabel20: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Kasa '#304#351'lem Giri'#351
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox20: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_KASAISLEMEKLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox22: TcxGroupBox
        Left = 3
        Top = 36
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 1
        Height = 33
        Width = 258
        object cxLabel19: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Kasa '#304#351'lem Silme'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox19: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_KASAISLEMSIL'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox21: TcxGroupBox
        Left = 3
        Top = 168
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 2
        Height = 33
        Width = 258
        object cxLabel18: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Cari Bor'#231' Ekle'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox18: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_BORCEKLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox20: TcxGroupBox
        Left = 3
        Top = 201
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 3
        Height = 33
        Width = 258
        object cxLabel17: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Cari Tahsilat Gir'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox17: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_TAHSILATGIR'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox18: TcxGroupBox
        Left = 3
        Top = 234
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 4
        Height = 33
        Width = 258
        object cxLabel15: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'H'#305'zl'#305' Sat'#305#351' Sat'#305'r D'#252'zenleme'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox15: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_HSSATIRDUZENLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox17: TcxGroupBox
        Left = 3
        Top = 69
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 5
        Height = 33
        Width = 258
        object cxLabel13: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Fatura Ekle'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox13: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_FATEKLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox16: TcxGroupBox
        Left = 3
        Top = 102
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 6
        Height = 33
        Width = 258
        object cxLabel12: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Fatura D'#252'zeltme'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox12: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_FATGUNCELLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox15: TcxGroupBox
        Left = 3
        Top = 135
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 7
        Height = 33
        Width = 258
        object cxLabel11: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Fatura Sil'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox11: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_FATSIL'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
    end
    object cxGroupBox8: TcxGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 180
      Align = alLeft
      PanelStyle.Active = True
      TabOrder = 1
      Height = 306
      Width = 264
      object cxGroupBox9: TcxGroupBox
        Left = 3
        Top = 3
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 0
        Height = 33
        Width = 258
        object cxLabel5: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Stok Kart'#305' Ekle'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox5: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_STOKEKLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox10: TcxGroupBox
        Left = 3
        Top = 36
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 1
        Height = 33
        Width = 258
        object cxLabel6: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Stok Kart'#305' G'#252'ncelle'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox6: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_STOKGUNCELLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox11: TcxGroupBox
        Left = 3
        Top = 69
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 2
        Height = 33
        Width = 258
        object cxLabel7: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Stok Kart'#305' Sil'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox7: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_STOKSIL'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox12: TcxGroupBox
        Left = 3
        Top = 135
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 3
        Height = 33
        Width = 258
        object cxLabel8: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Cari Kart'#305' Ekle'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox8: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_CARIEKLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox14: TcxGroupBox
        Left = 3
        Top = 168
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 4
        Height = 33
        Width = 258
        object cxLabel10: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Cari Kart'#305' G'#252'ncelle'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox10: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_CARIGUNCELLE'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox25: TcxGroupBox
        Left = 3
        Top = 201
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 5
        Height = 33
        Width = 258
        object cxLabel14: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Cari Kart'#305' Sil'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox14: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_CARISIL'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox7: TcxGroupBox
        Left = 3
        Top = 102
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 6
        Height = 33
        Width = 258
        object cxLabel4: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Stok Hareket Sil'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox4: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_STOKHARSIL'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 3
        Top = 234
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 7
        Height = 33
        Width = 258
        object cxLabel3: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Cari Hareket Sil'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox3: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_CARIHARSIL'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
    end
    object cxGroupBox26: TcxGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 18
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 2
      Height = 156
      Width = 840
      object cxGroupBox27: TcxGroupBox
        Left = 3
        Top = 69
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 2
        Height = 33
        Width = 834
        object cxLabel21: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alLeft
          Caption = 'A'#231#305'klama :'
          Properties.Alignment.Vert = taVCenter
          AnchorY = 17
        end
        object cxDBTextEdit1: TcxDBTextEdit
          AlignWithMargins = True
          Left = 378
          Top = 6
          Align = alRight
          DataBinding.DataSource = dsKullanicilar
          TabOrder = 1
          Width = 450
        end
      end
      object cxGroupBox28: TcxGroupBox
        Left = 3
        Top = 36
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 0
        Height = 33
        Width = 834
        object cxLabel22: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alLeft
          Caption = #350'ifre :'
          Properties.Alignment.Vert = taVCenter
          AnchorY = 17
        end
        object cxDBTextEdit2: TcxDBTextEdit
          AlignWithMargins = True
          Left = 378
          Top = 6
          Align = alRight
          DataBinding.DataField = 'SIFRE'
          DataBinding.DataSource = dsKullanicilar
          TabOrder = 1
          Width = 450
        end
      end
      object cxGroupBox29: TcxGroupBox
        Left = 3
        Top = 3
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 1
        Height = 33
        Width = 834
        object cxLabel23: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alLeft
          Caption = 'Kullan'#305'c'#305' Ad'#305' : '
          Properties.Alignment.Vert = taVCenter
          OnClick = cxLabel23Click
          AnchorY = 17
        end
        object cxDBTextEdit3: TcxDBTextEdit
          AlignWithMargins = True
          Left = 378
          Top = 6
          Align = alRight
          DataBinding.DataField = 'KULLANICI'
          DataBinding.DataSource = dsKullanicilar
          TabOrder = 1
          Width = 450
        end
      end
      object cxGroupBox30: TcxGroupBox
        Left = 3
        Top = 102
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 3
        Height = 33
        Width = 834
        object cxLabel24: TcxLabel
          AlignWithMargins = True
          Left = 106
          Top = 6
          Margins.Left = 50
          Align = alLeft
          Caption = 'Admin'
          Properties.Alignment.Vert = taVCenter
          ExplicitLeft = 212
          AnchorY = 17
        end
        object cxDBCheckBox21: TcxDBCheckBox
          AlignWithMargins = True
          Left = 145
          Top = 6
          Align = alLeft
          DataBinding.DataField = 'YONETICI'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = '0'
          Properties.ValueUnchecked = 'False'
          TabOrder = 1
          ExplicitLeft = 251
        end
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alLeft
          Caption = 'Aktif'
          Properties.Alignment.Vert = taVCenter
          AnchorY = 17
        end
        object cxDBCheckBox1: TcxDBCheckBox
          AlignWithMargins = True
          Left = 38
          Top = 6
          Align = alLeft
          DataBinding.DataField = 'AKTIF'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          Style.TransparentBorder = False
          TabOrder = 3
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
      AlignWithMargins = True
      Left = 546
      Top = 180
      Align = alLeft
      PanelStyle.Active = True
      TabOrder = 3
      Height = 306
      Width = 264
      object cxGroupBox5: TcxGroupBox
        Left = 3
        Top = 3
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 0
        Height = 33
        Width = 258
        object cxLabel2: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Raporlar'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox2: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_RAPORLAR'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          Style.TransparentBorder = False
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
      object cxGroupBox13: TcxGroupBox
        Left = 3
        Top = 36
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 1
        Height = 33
        Width = 258
        object cxLabel9: TcxLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alClient
          Caption = 'Kasa '#304#351'lem Silme'
          Properties.Alignment.Vert = taVCenter
          ExplicitWidth = 119
          AnchorY = 17
        end
        object cxDBCheckBox9: TcxDBCheckBox
          AlignWithMargins = True
          Left = 237
          Top = 6
          Align = alRight
          DataBinding.DataField = 'y_KASAISLEMSIL'
          DataBinding.DataSource = dsKullanicilar
          Properties.DisplayGrayed = 'False'
          Properties.ValueChecked = 'True'
          Properties.ValueGrayed = 'False'
          Properties.ValueUnchecked = '0'
          Style.TransparentBorder = False
          TabOrder = 1
          ExplicitLeft = 131
        end
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 507
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 2
    Height = 73
    Width = 1088
    object btnKapat: TcxButton
      AlignWithMargins = True
      Left = 941
      Top = 6
      Width = 141
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
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnKapatClick
    end
    object btnKaydet: TcxButton
      AlignWithMargins = True
      Left = 818
      Top = 6
      Width = 117
      Height = 61
      Align = alRight
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnKaydetClick
    end
  end
  object qryKullanicilar: TFDQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from USERS')
    Left = 131
    Top = 107
  end
  object dsKullanicilar: TDataSource
    DataSet = qryKullanicilar
    Left = 131
    Top = 171
  end
end
