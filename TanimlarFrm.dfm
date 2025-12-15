object frmTanimlar: TfrmTanimlar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmTanimlar'
  ClientHeight = 395
  ClientWidth = 466
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
  object pc: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 460
    Height = 278
    Align = alTop
    TabOrder = 0
    Properties.ActivePage = shBirimler
    Properties.CustomButtons.Buttons = <>
    OnChange = pcChange
    ClientRectBottom = 273
    ClientRectLeft = 2
    ClientRectRight = 455
    ClientRectTop = 25
    object shBirimler: TcxTabSheet
      Caption = 'Birimler'
      ImageIndex = 0
      object grdBirimler: TcxGrid
        Left = 0
        Top = 0
        Width = 453
        Height = 207
        Align = alClient
        TabOrder = 0
        object viewBrimler: TcxGridDBTableView
          PopupMenu = pmGrid
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsBrim
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object viewBrimlerBIRIMADI: TcxGridDBColumn
            DataBinding.FieldName = 'BIRIMADI'
            DataBinding.IsNullValueType = True
          end
        end
        object grdBirimlerLevel1: TcxGridLevel
          GridView = viewBrimler
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 207
        Width = 453
        Height = 41
        Align = alBottom
        TabOrder = 1
        object edtBirimEkle: TcxTextEdit
          AlignWithMargins = True
          Left = 4
          Top = 4
          Align = alClient
          TabOrder = 0
          Width = 399
        end
        object btnBirimEkle: TcxButton
          AlignWithMargins = True
          Left = 409
          Top = 4
          Width = 40
          Height = 33
          Align = alRight
          Caption = '+'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnBirimEkleClick
        end
      end
    end
    object shGruplar: TcxTabSheet
      Caption = 'Stok Gruplar'#305
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdStokGrup: TcxGrid
        Left = 0
        Top = 0
        Width = 453
        Height = 207
        Align = alClient
        TabOrder = 0
        object viewStokGrup: TcxGridDBTableView
          PopupMenu = pmGrid
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsStokGrup
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'GRUPADI'
            DataBinding.IsNullValueType = True
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = viewStokGrup
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 207
        Width = 453
        Height = 41
        Align = alBottom
        TabOrder = 1
        object edtGrupEkle: TcxTextEdit
          AlignWithMargins = True
          Left = 4
          Top = 4
          Align = alClient
          TabOrder = 0
          Width = 399
        end
        object btnGrupEkle: TcxButton
          AlignWithMargins = True
          Left = 409
          Top = 4
          Width = 40
          Height = 33
          Align = alRight
          Caption = '+'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnBirimEkleClick
        end
      end
    end
    object shMarkalar: TcxTabSheet
      Caption = 'Markalar'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdMarkalar: TcxGrid
        Left = 0
        Top = 0
        Width = 453
        Height = 207
        Align = alClient
        TabOrder = 0
        object ViewMarkalar: TcxGridDBTableView
          PopupMenu = pmGrid
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsMarka
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'MARKAADI'
            DataBinding.IsNullValueType = True
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = ViewMarkalar
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 207
        Width = 453
        Height = 41
        Align = alBottom
        TabOrder = 1
        object edtMarkaEkle: TcxTextEdit
          AlignWithMargins = True
          Left = 4
          Top = 4
          Align = alClient
          TabOrder = 0
          Width = 399
        end
        object btnMarkaEkle: TcxButton
          AlignWithMargins = True
          Left = 409
          Top = 4
          Width = 40
          Height = 33
          Align = alRight
          Caption = '+'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnBirimEkleClick
        end
      end
    end
    object shReyonRaf: TcxTabSheet
      Caption = 'Reyon - Raf'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdReyonRaf: TcxGrid
        Left = 0
        Top = 0
        Width = 453
        Height = 207
        Align = alClient
        TabOrder = 0
        object viewReyonRaf: TcxGridDBTableView
          PopupMenu = pmGrid
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsReyonRaf
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          Styles.StyleSheet = frmMain.GridTableViewStyleSheetDevExpress
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'REYONRAFADI'
            DataBinding.IsNullValueType = True
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = viewReyonRaf
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 207
        Width = 453
        Height = 41
        Align = alBottom
        TabOrder = 1
        object edtReyonRafEkle: TcxTextEdit
          AlignWithMargins = True
          Left = 4
          Top = 4
          Align = alClient
          TabOrder = 0
          Width = 399
        end
        object btnReyonRafEkle: TcxButton
          AlignWithMargins = True
          Left = 409
          Top = 4
          Width = 40
          Height = 33
          Align = alRight
          Caption = '+'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnBirimEkleClick
        end
      end
    end
    object shCariGruplar: TcxTabSheet
      Caption = 'Cari Gruplar'#305
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 453
        Height = 207
        Align = alClient
        TabOrder = 0
        object viewCariGrup: TcxGridDBTableView
          PopupMenu = pmGrid
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCariGrup
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          Styles.StyleSheet = frmMain.GridTableViewStyleSheetDevExpress
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'GRUPADI'
            DataBinding.IsNullValueType = True
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = viewCariGrup
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 207
        Width = 453
        Height = 41
        Align = alBottom
        TabOrder = 1
        object edtCariGrupEkle: TcxTextEdit
          AlignWithMargins = True
          Left = 4
          Top = 4
          Align = alClient
          TabOrder = 0
          Width = 399
        end
        object btnCariGrupEkle: TcxButton
          AlignWithMargins = True
          Left = 409
          Top = 4
          Width = 40
          Height = 33
          Align = alRight
          Caption = '+'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnBirimEkleClick
        end
      end
    end
  end
  object pnlAlt: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 356
    Width = 460
    Height = 36
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 370
      Top = 4
      Width = 86
      Height = 28
      Align = alRight
      Cancel = True
      Caption = 'Kapat'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000023744558745469746C650043616E63656C3B53746F703B457869743B
        426172733B526962626F6E3B4C9696B2000009AA49444154785E8D96097054D7
        9946CF7DBD6869ADAD1648AC025B8AC35694C106EC84C910E2B552C626768D17
        927126953126D86106B298941D3B4E4219882B95C2E5D8659C541687C5186C27
        98D8C090106C30036637C8C6420809099044AB97F7FADD25AF6EF54B75854A25
        57F5EBEB5BAA7AE7FB37BD165D2B9E020460E5CA63C00840DB0BA3BFFBB8E01F
        1F3A9E586E0C06A30D020255F633068CD14198E25DD3B6FAA744D186E6871610
        3A305C79A2C996102A4AE34AABD0F2E40F0D60C3EF395E2483556D306830868F
        57BD0440545B57DAC229C50B1180C785100710FB962D995253563E2FE2389F17
        980A4730C56883D2EA089ABC2BFD1D17B3D9CD739E7BE130A063CD13B435D27D
        D4A035C69AB181560A6BC028EBE8CAAC1BC68759460E7D67E99D8978FCE9584D
        756BA2ED2ACAC78EC089C5890F6B000C5EEFC5A9DAF3C87774CDAA3AD1BEFCF8
        D225ED97F3F92767AD797E23A0622326E942D7618D36802D3F4A692C474985D1
        BAA4C286D8B03601383B163DD432B2AEEE378991CD33EA6E9846D9F006E4E020
        EAF265D4904FA6F323301AA722018E43D55523A9BB6E326EEFA5D6F23FEDFDF5
        A1C58B1E3D70AEFBCB0F6E7AED747CD4140918AF63BFB11590B2D802A5213400
        C49AAEB159BFF7E8E27F4F5627D6A566CFAC4FB4B550E83E47F683330060DB66
        15B4467A0356FDBEF3D650A4A696E6DBFE8DC4C933D74D7BE7CF7BB6DCFB1F0F
        DCF1CAEFB6037E59CB74BCF6778D94AA68404A821B08417CE4440BDFFDF0C239
        C9DA9A379ABE38371E118ADCD143608A6C0CA258CA709AB193AD8350A034FE85
        3E0AE7CF53317A0CA3EFB9BD5EADFFFDE64D5F9A3FEFAE8DAF5A135A29A38B06
        C489258F32FE9B0F523676AA2DFBE6FF5CD0DA3A7CF8EED1F36F6D3099016450
        EED2F10C81188A6A570BAC81623B95C2DE038DD62711A966DA7FB5A57F5F67E7
        E716BFFDF64940EEB9F73E7DC32BBF255AB89C06290907AEA5BA766DEAC6E90D
        7AE042001FF8BBD5B4E0A2DA08E1816A9BBD3514A8D1D2DEBDA01231AFC08839
        B392535ECFBD08CC057400B72938856C9EB2ABA6DBEC777DEDAB775734266755
        D49653B8D887F16510BE0D7730CDBEF56FF187956B39F8C6FF21F36EF837A4EB
        72F0CD3FF1FAAA5FB267C31F71D343185FA17D89917ED08E6E2A130E95C31B66
        BC72CB6D7703514060B74029C2EC134EF489E4B409E43B3B402A8C1000F83997
        FD01544D9A49E382A50CFE7E3DFB376FE7DADB3E0BC6F0FE9BBB709BAE66C4D3
        4BC8ECDCCABB9B7670FDED3752561643DB762872A73E64C48CC9F4779C5B0EBC
        0A48C08810BEE1E65BE7B64D6CDB3A6AF654BCDE1E848563F5E05B7BF0DAA691
        BAEB7E9A5235F852717CF50AE2E74E5903B9003EFCBFBEC1F0C65A9C489413CF
        FD0C3ED8CDB573A75938520722291F398A8F769FE0E0F153772C7EFFDD6D801F
        05009C84706E8E2562648E7C40A4B61E1171084B933E7F91D9CFFE377911A3BE
        B60A84C159F65D8EAEFC315269863DB888A6A624A9861A6B68F6D247D93C770B
        F805B432D8E194926C7B3B895435754EE426603B209D22C38918737D141FB7E3
        1332C70E2107FA318502DAF71976750BA75F584373633560D01A1A1AEB98B8EC
        31C62E5C4273006FA8AFB66B99288B7078D533345D3D06E54BB45F406632B83D
        3D76AEE2514D0C311D8800FCAD0228FD29BC1CD22F8067C89CFC9068A28A6843
        8AB6191338B6F3001FACF81153BFF318195701D010649C0C02C000D5017CFF53
        DF277DF400533E772D7E4F376A68085570ED7A8220EA7B08655A8B0644388D42
        6A5D433E87F61438B6F7F84369FCCC106E572757B58EE1E4FB7BD8F7E4F7B9E6
        5BCB01A7F41D82569AF77EFC14E9FD7B98785D1BD96347304A85AB6A0D0442D4
        CBA095AA0EB9610584F25500CBDA61C1080402843562F73ADB711AE3BAF4F70F
        71E14286C692CC35964376286FFB9E3DD381830583213460CDF8D92C526ACB2C
        6D014AC9B497F71A1C5DFCC7220442601504672FE429B44DA7E6FE8731029431
        166EF106C061F423DFE6D4CA1FF0F1F1BD8C1B596D096883C15805819BF19052
        0E855C073080710BEA9497F7D15A61DF904AA203D552D2D3EFE15F731DD50F2C
        64585392645D0263347595116A2B6318FB7C4D32594DEBFF2EC74C9C41674F06
        2D354A29B4AFB0AA35D94C81BC941F87850B2BA0B385C2FE4C363A2B562940FA
        48276C8320EFC3E4FF5946D644B17008E0B1600D7F64E193826DE8CFF800D427
        6B98F9F813ECBAF3566BDE846F4E6D6CC3D3699F21AF700050941AE875F3EFD4
        A5A38B6BE2805416AE1D70105426AA70B7BF4ECB82AF9175253515514EAC5E41
        FF5F76D9FE1E133061E963A4733E5515713E59BB96EA9A4A942C20B4C1983060
        60C0A5CF7377961A30805A7EEAC8AEB59F9E763A1D33E3AB2B44F125031A8761
        C3CAE97C6D0300E3EF9CCFB155CF7369CF2E4635558380AEDD3B396E0C931E5A
        48FBCB1BE8D8B88E31236BF12EF4DACC2DD97118E8CF3230A43A56F77EB21390
        80717E71CDB47090FDEE7C7E45DFA0414A85B2FD0F5449DCBEF334A712F4BCB1
        8977EEBD9BF4FBBB696AA820DBDD4DEE5C37231A135CDEBB9BADF3EFA27BCB46
        468F08E07D7D685F15E748E37B92AE8B8AB36E6E15E002B2F832D2E136F9DFEB
        38BE61CDF8C95FAFECD7D31BAA852D3F8E00A9C805B0D4B01491541299CB920F
        C0DA1800B2E77A48A5523407215D975C4F8F5D6761849D01AD0D3DFD3E035973
        68F5C5331B008F70089552EC9833DDCCD9B15F01DEFFA707160B5DFB878828D4
        D7C4238888C0FE488FA1B3DD200CE28A6FE5866C770F082C102300835D55A519
        C848BA07C5E0DE5CFA112017660F209E1B3B91D66601C017DE3B1A05CA97348E
        BDB9B5BCF295E15585586D854324E2E0005A08AB06AC6A4A8F097F833156A52F
        83AC15E70622FE312FF7959786CE6F05B2805C59DF62960D7410B5BBEAC9F061
        B60ACF5E38F3F6A2E4E8FB0B7EC58BAE57A8ADAB8078DCC1118E3541291C1366
        5C1461E7C79392FE0C9CCF88F4875E66E1CBD9BE6D61F69B278D33273BC3AFE5
        5A53F02518C22381FC9AFEB36FCDAB4ADD34D3AFF9F9E5BC999A2CF7A98C1B9C
        88433C0810441C0703282DC1807D9654643DB8948D30503087F714D20BB7B983
        C78B701F40157C947100103F69BC9AF1F52E1A8363605EFBB9B0B911A00CA85C
        5C33E29EE648FC5B15113326115354C634424059545BB02705DA0872BE20E339
        E42567BB7461E5F3D9DE0D40B674EAD78F6B366068EF8BB13C7B16B1AA613C2D
        355944883530FF93DEF0E600D1A2918AFB2A1BAF1F1589DD5249E4330EA23C26
        68C340C1E853DAE0668CFA4B00DEB6CEBDB40FC8978015C0BA318D619DF9E852
        5960A00BF14CFDB87068AC2208BF72F3ED7467A99108102B8948D120802E865F
        12AA18FC3031CA70E5C11AE05F3BA2449DA28601604A421715ABFFE4FC153983
        B3D2BAD003AD0000000049454E44AE426082}
      TabOrder = 0
      OnClick = cxButton1Click
    end
  end
  object qryBirim: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from T_BIRIM')
    Left = 16
    Top = 288
  end
  object dsBrim: TDataSource
    AutoEdit = False
    DataSet = qryBirim
    Left = 56
    Top = 288
  end
  object qryStokGrup: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from T_STOKGRUP')
    Left = 112
    Top = 288
  end
  object dsStokGrup: TDataSource
    AutoEdit = False
    DataSet = qryStokGrup
    Left = 152
    Top = 288
  end
  object qryMarka: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from T_MARKA')
    Left = 200
    Top = 288
  end
  object dsMarka: TDataSource
    AutoEdit = False
    DataSet = qryMarka
    Left = 240
    Top = 288
  end
  object qryReyonRaf: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from T_REYONRAF')
    Left = 296
    Top = 288
  end
  object dsReyonRaf: TDataSource
    AutoEdit = False
    DataSet = qryReyonRaf
    Left = 336
    Top = 288
  end
  object pmGrid: TPopupMenu
    Left = 384
    Top = 288
    object Sil1: TMenuItem
      Caption = 'Sil'
      OnClick = Sil1Click
    end
  end
  object qryCariGrup: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from T_CARIGRUP')
    Left = 304
    Top = 88
  end
  object dsCariGrup: TDataSource
    AutoEdit = False
    DataSet = qryCariGrup
    Left = 344
    Top = 88
  end
end
