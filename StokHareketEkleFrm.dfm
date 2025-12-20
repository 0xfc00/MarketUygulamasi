object frmStokHareketEkle: TfrmStokHareketEkle
  Left = 0
  Top = 0
  Caption = 'frmStokHareketEkle'
  ClientHeight = 390
  ClientWidth = 457
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
    Left = 47
    Top = 152
    Width = 54
    Height = 13
    Caption = #304#351'lem Tarihi'
    FocusControl = edtIslemTarihi
  end
  object Label10: TLabel
    Left = 47
    Top = 174
    Width = 29
    Height = 13
    Caption = 'Miktar'
    FocusControl = edtMiktar
  end
  object Label11: TLabel
    Left = 38
    Top = 303
    Width = 31
    Height = 13
    Caption = 'GIREN'
    FocusControl = cxDBCalcEdit2
    Visible = False
  end
  object Label12: TLabel
    Left = 286
    Top = 303
    Width = 31
    Height = 13
    Caption = 'CIKAN'
    FocusControl = cxDBCalcEdit3
    Visible = False
  end
  object Label13: TLabel
    Left = 47
    Top = 284
    Width = 41
    Height = 13
    Caption = 'A'#231#305'klama'
    FocusControl = cxDBTextEdit8
  end
  object Label14: TLabel
    Left = 47
    Top = 262
    Width = 43
    Height = 13
    Caption = 'Evrak No'
    FocusControl = edtEvrakNo
  end
  object Label15: TLabel
    Left = 47
    Top = 196
    Width = 24
    Height = 13
    Caption = 'Fiyat'
    FocusControl = edtFiyatKdvHaric
  end
  object Label16: TLabel
    Left = 47
    Top = 240
    Width = 26
    Height = 13
    Caption = 'Tutar'
    FocusControl = edtTutar
  end
  object Label17: TLabel
    Left = 47
    Top = 218
    Width = 24
    Height = 13
    Caption = 'Fiyat'
    FocusControl = edtFiyatKdvHaric
  end
  object Label18: TLabel
    Left = 234
    Top = 198
    Width = 51
    Height = 11
    Caption = 'KDV Hari'#231
    FocusControl = edtTutar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 234
    Top = 220
    Width = 49
    Height = 11
    Caption = 'KDV Dahil'
    FocusControl = edtTutar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlAlt: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 351
    Width = 451
    Height = 36
    Align = alBottom
    TabOrder = 0
    object btnKapat: TcxButton
      AlignWithMargins = True
      Left = 347
      Top = 4
      Width = 100
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
      OnClick = btnKapatClick
    end
    object btnkaydet: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 28
      Align = alLeft
      Caption = 'Kaydet'
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      TabOrder = 1
      OnClick = btnkaydetClick
    end
  end
  object dxPanel1: TdxPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 451
    Height = 102
    Align = alTop
    Enabled = False
    TabOrder = 8
    object Label1: TLabel
      Left = 9
      Top = 30
      Width = 48
      Height = 13
      Caption = 'Stok Kodu'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 9
      Top = 8
      Width = 41
      Height = 13
      Caption = #220'r'#252'n Ad'#305
      FocusControl = cxDBTextEdit2
    end
    object Label3: TLabel
      Left = 9
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Barkod'
      FocusControl = cxDBTextEdit3
    end
    object Label4: TLabel
      Left = 224
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Sat'#305#351' Fiyat'#305
    end
    object Label5: TLabel
      Left = 224
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Al'#305#351' Fiyat'#305
    end
    object Label8: TLabel
      Left = 224
      Top = 52
      Width = 22
      Height = 13
      Caption = 'Birim'
    end
    object Label6: TLabel
      Left = 9
      Top = 74
      Width = 19
      Height = 13
      Caption = 'KDV'
    end
    object Label20: TLabel
      Left = 224
      Top = 74
      Width = 31
      Height = 13
      Caption = 'Bakiye'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 63
      Top = 27
      DataBinding.DataField = 'STOKKODU'
      DataBinding.DataSource = dsStok
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 63
      Top = 5
      DataBinding.DataField = 'STOKADI'
      DataBinding.DataSource = dsStok
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 63
      Top = 49
      DataBinding.DataField = 'BARKOD'
      DataBinding.DataSource = dsStok
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 292
      Top = 5
      DataBinding.DataField = 'SATISFIYATI'
      DataBinding.DataSource = dsStok
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 292
      Top = 27
      DataBinding.DataField = 'ALISFIYATI'
      DataBinding.DataSource = dsStok
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
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 292
      Top = 49
      DataBinding.DataField = 'BIRIMADI'
      DataBinding.DataSource = dsStok
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
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 63
      Top = 71
      DataBinding.DataField = 'KDV'
      DataBinding.DataSource = dsStok
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 56
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 292
      Top = 71
      DataBinding.DataField = 'BAKIYE'
      DataBinding.DataSource = dsStok
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 121
    end
  end
  object edtIslemTarihi: TcxDBDateEdit
    Left = 107
    Top = 149
    DataBinding.DataField = 'ISLEMTARIHI'
    DataBinding.DataSource = dsStokHarEkle
    TabOrder = 1
    OnExit = edtIslemTarihiExit
    OnKeyPress = edtMiktarKeyPress
    Width = 121
  end
  object edtMiktar: TcxDBCalcEdit
    Left = 107
    Top = 171
    DataBinding.DataField = 'MIKTAR'
    DataBinding.DataSource = dsStokHarEkle
    Properties.OnChange = edtMiktarPropertiesChange
    TabOrder = 2
    OnKeyPress = edtMiktarKeyPress
    Width = 121
  end
  object cxDBCalcEdit2: TcxDBCalcEdit
    Left = 38
    Top = 319
    DataBinding.DataField = 'GIREN'
    DataBinding.DataSource = dsStokHarEkle
    TabOrder = 9
    Visible = False
    Width = 121
  end
  object cxDBCalcEdit3: TcxDBCalcEdit
    Left = 286
    Top = 319
    DataBinding.DataField = 'CIKAN'
    DataBinding.DataSource = dsStokHarEkle
    TabOrder = 10
    Visible = False
    Width = 121
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 107
    Top = 281
    DataBinding.DataField = 'ACIKLAMA1'
    DataBinding.DataSource = dsStokHarEkle
    TabOrder = 7
    OnKeyPress = edtMiktarKeyPress
    Width = 310
  end
  object edtEvrakNo: TcxDBTextEdit
    Left = 107
    Top = 259
    DataBinding.DataField = 'EVRAKNO'
    DataBinding.DataSource = dsStokHarEkle
    TabOrder = 6
    OnKeyPress = edtMiktarKeyPress
    Width = 121
  end
  object edtFiyatKdvHaric: TcxDBCalcEdit
    Left = 107
    Top = 193
    DataBinding.DataField = 'BIRIMFIYAT'
    DataBinding.DataSource = dsStokHarEkle
    Properties.OnChange = edtMiktarPropertiesChange
    TabOrder = 3
    OnKeyPress = edtMiktarKeyPress
    Width = 121
  end
  object edtTutar: TcxDBCalcEdit
    Left = 107
    Top = 237
    DataBinding.DataField = 'TUTAR'
    DataBinding.DataSource = dsStokHarEkle
    Properties.ReadOnly = True
    TabOrder = 5
    OnKeyPress = edtMiktarKeyPress
    Width = 121
  end
  object edtFiyatKdvDahil: TcxTextEdit
    Left = 107
    Top = 215
    Properties.OnChange = edtFiyatKdvDahilPropertiesChange
    TabOrder = 4
    OnKeyPress = edtMiktarKeyPress
    Width = 121
  end
  object qryStok: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select'
      
        '(SELECT TOP 1 BIRIMADI FROM T_BIRIM WHERE ID= stok.BIRIMID) AS B' +
        'IRIMADI,'
      ' * from stok')
    ReadOnly = True
    Left = 144
    Top = 8
  end
  object dsStok: TDataSource
    AutoEdit = False
    DataSet = qryStok
    Left = 200
    Top = 8
  end
  object qryStokHarEkle: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'select * from ISLEM_H where 1=0')
    BeforePost = qryStokHarEkleBeforePost
    Left = 168
    Top = 104
  end
  object dsStokHarEkle: TDataSource
    DataSet = qryStokHarEkle
    Left = 280
    Top = 128
  end
end
