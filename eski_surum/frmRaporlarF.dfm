object frmRaporlar: TfrmRaporlar
  Left = 0
  Top = 0
  Caption = 'Raporlar'
  ClientHeight = 626
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox11: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 33
    Width = 960
    object Label9: TLabel
      AlignWithMargins = True
      Left = 32
      Top = 6
      Width = 27
      Height = 21
      Align = alLeft
      Caption = 'Tarih'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 152
      ExplicitHeight = 14
    end
    object Label11: TLabel
      AlignWithMargins = True
      Left = 290
      Top = 6
      Width = 16
      Height = 21
      Align = alLeft
      Caption = '  /  '
      Layout = tlCenter
      ExplicitLeft = 410
      ExplicitHeight = 13
    end
    object cxImage9: TcxImage
      AlignWithMargins = True
      Left = 6
      Top = 6
      Align = alLeft
      AutoSize = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
        0000001008060000001FF3FF610000001974455874536F667477617265004164
        6F626520496D616765526561647971C9653C00000014744558745469746C6500
        446174653B43616C656E6461723BDF38D8A6000001D149444154785E8553316E
        5341107D9B7C5120C325C0465434544E1C51240484284002F9021C818A2E4A68
        728470015A448111343608104D2863B80305C2B2FEDFDDC9BC99FD76EC26238F
        DF9BD99DB733BBFA1580A0BEA9BE81A505ACDA7A5ED4B37AAC583C7EF6F8B32A
        ECE49C91B38028EA89313D391762F23D758C93E1F79FBB265005ECDC7EF21010
        2FD60A20298F1192C813525454CF91EB11DFDE7D1AB0D646C822B671FEE7CC05
        929FCA9C903B2EF866E71ACFA2858A206CBBAE917862B4F61553C1568CF9926B
        14252F04C2AFA787E80FEFE06A9DFD9AD89112515C31F17969EFDF9E023FEEBA
        40E4A95E4737A384FF4A24C130247F8BA621412B10EDB4AC3EFAFADBAAF6B6BA
        F8A89CF9FDED2E3E8CA7B6FEE85E0FB42280CA83B603E17D14CED98DF9D3724D
        C8DB0E2EDC41533AE0FEDD7E17C222F2AD1BB63B59473729AC5C108402F18240
        9D7CFE2CF8FBEA858D70FDF50946638E23B83FE861349982B6AF3C6CAC0930A0
        401984291FC554513ACA248ABCC8B07A07B5065C4819E81C9C9402C1DE36C761
        11B48B5B2EA04108405CDE8107FE8462B834293D052E4281CCC49BB8EC20CE66
        FF262F8F46038817F85F21C29265BEE5F5FCFF170205E66F8E9F3F50BCB2F619
        874B3EE79AB5E71DE48B346034A2F10000000049454E44AE426082}
      Properties.FitMode = ifmProportionalStretch
      Style.BorderStyle = ebsNone
      TabOrder = 0
    end
    object dtTarih2: TcxDateEdit
      AlignWithMargins = True
      Left = 312
      Top = 6
      Align = alLeft
      EditValue = 43466d
      Properties.DateOnError = deToday
      Properties.View = cavModern
      TabOrder = 1
      Width = 201
    end
    object btnListele: TcxButton
      Left = 516
      Top = 3
      Width = 133
      Height = 27
      Align = alLeft
      Caption = 'Listele'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000026744558745469746C650046696E643B426172733B5269
        62626F6E3B5374616E646172643B536561726368BB659C080000009549444154
        785EA592C10DC3200C459B7598815118A21324ED0E6C81D299B8C01AAE5DFD5C
        ACDA4AE2C3932CFDAF27C03C8828C46FC8390B0B5398C64C017341660B507831
        6420D9E2090A8A83D99824601EC88A2768286DBA201264CD134C94D21F414236
        C382F015EE3E22811DEB3E30D6E8B31A02F7237DB4440B5C507E6BC9158125A9
        6705D649BA21B04F012AD399E72108F1057CFE2C0C2A4306D60000000049454E
        44AE426082}
      TabOrder = 2
      OnClick = btnListeleClick
    end
    object dtTarih1: TcxDateEdit
      AlignWithMargins = True
      Left = 65
      Top = 6
      Align = alLeft
      EditValue = 43466d
      Properties.DateOnError = deToday
      Properties.View = cavModern
      TabOrder = 3
      Width = 219
    end
  end
  object cxGroupBox2: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 577
    Align = alBottom
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Height = 46
    Width = 960
    object btnKapat: TcxButton
      AlignWithMargins = True
      Left = 813
      Top = 6
      Width = 141
      Height = 34
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
    object btnYazdir: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 141
      Height = 34
      Align = alLeft
      Caption = 'Yazd'#305'r'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000C744558745469746C65005072696E743BC83632EA0000060E494441
        54785EA5575D885655177EF63967DEF9719A19474B25132C8B4253340AEBD31C
        6FA22ECAFA2C2F0A2A90BAC8E0B32E02454292309A1B2914FAA5FAAE0215ED2A
        A48B52502B27C902514C4AC2149CE6CF99F7ECFF662DF739FBBC338C32B45F16
        FBBCFBACB39F673D6B9DF5EE5778EF511D42089E0024FFFFEAE43789487A00A0
        F4F23EDCF6FC2987033C2F476F7235D61CDEF8F4038F00D0E435112FC3D423F1
        1E3DCF3EBE14FF667CB2EFC4C301C7C4D51B136005AC7130E3A6ADE77062EC31
        C24ABCE142A08832CB048C62DC946E4C83009BD0C6C23AC0398702CA5614F425
        8B08EA4B221E894B417B503000307D02DAC27B22C1092E01194408A002CA9785
        22E42380D479286510A39F660A9431701EB01CB60F51062270013F824E54C50A
        571048A64C8110626A05A481731ED64559F9D3081C5411D55A60BF3401A45255
        05C4F8F0D753403428A00D835BEB0248008D05588245E048D0A6099434054E1A
        1E7561F65502822D4AD504A04549CDE0C63A5E74938B0E40883EBEFFC5353F27
        39059811FA800260825972CA0AE0B7777DB960DEFC85BD499A3E74B2EFE8BC2C
        4D906B4D05185210A078765172462B6A44444504F8592935FEB775D739E53C96
        2C79E09256F90FA7FA8E6CF974F7F6F3442A23F077DEDFBF78E1ED771CBE7FE9
        6D9D7366B5E3E8B1EFB072CDA3F8B5EF34AC454841D1E97CB80E33A222824994
        3A700AB4D6B877E51A7CFFED213CFFE47D73FFBA32F24447477B4FEB8C8EC776
        BFFB7A1FE7A6AB7BCE5BF72DB9B573F6CC36B4B664503287CCC748BE52010672
        00A7A290BF943E10E49548D4596E64BC5F2EEB68AE659879532BFEB37C61C7E5
        CBFD6F02788609382FD6D69A520C8DD4D1DED60C994B68A970FEF471BCF4CA31
        DE3144DC303C1AAA718ACE082C5BB108B22E916529864773348DCF495A5B0DA0
        C629D0D677E4B96686843238308081FE2B58D9B3B652A395DD85C06436C14F54
        FDC063A0BF1F4383039C26671C7265A08D6BA3E0B908294FCA58A469C28D4778
        87F3674E23A3DB2241ADB9B944C9B20C69C68F4594CA30C6C01A53DE564A722A
        ACD19C3A6D1D943665836205B46646686AF2ECB46CF19D3871F22CB2A65A0CB4
        6CBFF1BBE0B28B5D398AC5BE10A1414955C78A65F7502DB129E3A075242094B6
        30E3A633CB15FFC273EB70E2A79DA88F198E5888099D34961BE2989416EEA25A
        4B24C260E30BEBB9204B2C6523015A90E39666AC04E6CC9D8B8FF7ECC07B7BBE
        C0A95FCEA2FFEF01C0314678DD62C40DFDB1580BBD607677D778E47763F3AB2F
        A2B3AB93D24CF23396368659730AE80B31CBB2849C98694BDB0C6CDBB2096992
        909AD31C9188751435171EAF694D249840AC01564019A444403928BE09D46514
        55548B7D8A122C1510D552684C9854960B90300B0584739E19266982BAD2CC10
        55A0384F7F343E4B386CCEFB58032453AE2D92D420CF0DA4B131E2881CC98809
        D106867E821F8212A8DCCF35EF0FEF7CAC0147795296F35D57865F93DD1F1CC4
        D9737FDE30F2C9E9996C772D9A8F4D2FAF2347C2E1343BEFA2028E9B033722D4
        254B84EEEE0E2C5FBA18BB766CC087C7FBD1DE928640A85780BB9A711E170715
        45C692F26F86A319181ED1E8FDEF02BCBAE5337475B66234B462C221730EA502
        CCC6180B651202E782DCF0D42AEC3DF02388A8B216D288B2B01CCF1E57256D14
        081138EF4514F9C3EBAD2D2D58BFEE418C49CD7EFC96595B1C747D0250973443
        63B9E64621B56532172E0FD2CC9129EDB8854AE383919FC7685E9C9A598140C6
        C3B385C0ACC3854B833C33B8F1A8E70ACE99E1E23C90FFF1DB2FAF8DD5EBBD02
        C92C78C038032973B4B6B5C107023273C50184A264F9A58E6B0CD8609ED51B1A
        18C6A71F1D44ADB90D2211EC6BAD19B872F1CC3600578940FDD0FEDEFD00BE06
        500BC7325A6FDDBC7DEFCF14A1A4E8875579D47200A474C8397CC20F469F4010
        81C8CDB7CCC281CF37AF0230128E62FC387D27CBC2E25522523917A6005AB4E1
        1CE38D35F318189573A1AD9C4C7DE517C9230E1FD202E0F780618940304B4604
        7C5C2C0693704AE547B6EEDCB7BAE10F072AC064AE7218291DCB53228C564703
        F868C068E078BD7FC744AE2958FC399C304FBD560AA601E4D3FD77EC2BF95211
        609209DC78B818F9E4F10F4824A6D94EC853CD0000000049454E44AE426082}
      PopupMenu = pmRaporTasarim
      TabOrder = 1
      OnClick = btnYazdirClick
    end
  end
  object pg: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 42
    Width = 960
    Height = 529
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 524
    ClientRectLeft = 2
    ClientRectRight = 955
    ClientRectTop = 25
    object cxTabSheet1: TcxTabSheet
      Caption = 'G'#252'n Sonu Raporu'
      ImageIndex = 0
      object cxGroupBox3: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 95
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 86
        Width = 947
        object cxGroupBox1: TcxGroupBox
          AlignWithMargins = True
          Left = 462
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 0
          Height = 74
          Width = 222
          object cxLabel2: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Maliyet'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblMaliyet: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 50
          end
        end
        object cxGroupBox4: TcxGroupBox
          AlignWithMargins = True
          Left = 234
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 1
          Height = 74
          Width = 222
          object cxLabel3: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Kasa '#199#305'k'#305#351
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblKasaCikis: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 50
          end
        end
        object cxGroupBox5: TcxGroupBox
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 2
          Height = 74
          Width = 222
          object cxLabel5: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Kasa Giri'#351
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblKasaGiris: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 50
          end
        end
        object cxGroupBox6: TcxGroupBox
          AlignWithMargins = True
          Left = 690
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 3
          Height = 74
          Width = 222
          object cxLabel7: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Kar'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblKar: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 50
          end
        end
      end
      object cxGroupBox7: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Height = 86
        Width = 947
        object cxGroupBox8: TcxGroupBox
          AlignWithMargins = True
          Left = 462
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 0
          Height = 74
          Width = 222
          object cxLabel9: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Kredi Kart'#305' Sat'#305#351
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblKKsatis: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 50
          end
        end
        object cxGroupBox9: TcxGroupBox
          AlignWithMargins = True
          Left = 234
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 1
          Height = 74
          Width = 222
          object cxLabel11: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Nakit Sat'#305#351
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblNakitSatis: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 50
          end
        end
        object cxGroupBox10: TcxGroupBox
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 2
          Height = 74
          Width = 222
          object cxLabel13: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Toplam Sat'#305#351
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblToplamSatis: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 50
          end
        end
        object cxGroupBox12: TcxGroupBox
          AlignWithMargins = True
          Left = 690
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 3
          Height = 74
          Width = 222
          object cxLabel15: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Veresiye Sat'#305#351
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblVeresiyeSatis: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 50
          end
        end
      end
      object cxGroupBox13: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 187
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 2
        Height = 118
        Width = 947
        object cxGroupBox17: TcxGroupBox
          AlignWithMargins = True
          Left = 6
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clYellow
          TabOrder = 0
          Height = 106
          Width = 222
          object cxLabel23: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Kasa Nakit'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblKasaNakit: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 66
          end
        end
        object cxGroupBox14: TcxGroupBox
          AlignWithMargins = True
          Left = 462
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 1
          Height = 106
          Width = 222
          object cxLabel17: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Cari Bor'#231'lanma'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lblCariBorclanma: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 66
          end
        end
        object cxGroupBox15: TcxGroupBox
          AlignWithMargins = True
          Left = 234
          Top = 6
          Align = alLeft
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clGreen
          TabOrder = 2
          Height = 106
          Width = 222
          object cxLabel19: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Align = alTop
            Caption = 'Tahsilatlar'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 16
          end
          object lbltahsilatlar: TcxLabel
            AlignWithMargins = True
            Left = 6
            Top = 32
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            AnchorX = 111
            AnchorY = 66
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'H'#305'zl'#305' Sat'#305#351' Raporu'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 947
        Height = 493
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = pmGrdHsRapor
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
          DataController.DataSource = dsHsRapor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGrid1DBTableView1kayit_tarihi: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'kayit_tarihi'
            DataBinding.IsNullValueType = True
            Width = 51
          end
          object cxGrid1DBTableView1carisim: TcxGridDBColumn
            Caption = 'Cari '#304'sim'
            DataBinding.FieldName = 'carisim'
            DataBinding.IsNullValueType = True
            Width = 414
          end
          object cxGrid1DBTableView1tutar: TcxGridDBColumn
            Caption = 'Tutar'
            DataBinding.FieldName = 'tutar'
            DataBinding.IsNullValueType = True
            Width = 49
          end
          object cxGrid1DBTableView1aciklama: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 101
          end
          object cxGrid1DBTableView1kaydeden: TcxGridDBColumn
            Caption = 'Kaydeden'
            DataBinding.FieldName = 'kaydeden'
            DataBinding.IsNullValueType = True
            Width = 48
          end
        end
        object cxGrid1DBTableView3: TcxGridDBTableView
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
          DataController.DataSource = dsHsRaporDet
          DataController.DetailKeyFieldNames = 'har_id'
          DataController.MasterKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGrid1DBTableView3stok_kodu: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 100
          end
          object cxGrid1DBTableView3stok_adi: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 405
          end
          object cxGrid1DBTableView3adet: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGrid1DBTableView3sfiyat: TcxGridDBColumn
            Caption = 'Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 89
          end
          object cxGrid1DBTableView3iskonto: TcxGridDBColumn
            Caption = #304'skonto'
            DataBinding.FieldName = 'iskonto'
            DataBinding.IsNullValueType = True
            Width = 97
          end
          object cxGrid1DBTableView3toplam: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 149
          end
        end
        object cxGrid1Level1: TcxGridLevel
          Caption = 'cxGrid1Level1'
          GridView = cxGrid1DBTableView1
          object cxGrid1Level2: TcxGridLevel
            GridView = cxGrid1DBTableView3
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Stok Hareket Raporu'
      ImageIndex = 2
      object cxGrid2: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 947
        Height = 493
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = pmGrdHsRapor
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
          DataController.DataSource = dsHsRapor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'kayit_tarihi'
            DataBinding.IsNullValueType = True
            Width = 51
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Cari '#304'sim'
            DataBinding.FieldName = 'carisim'
            DataBinding.IsNullValueType = True
            Width = 414
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Tutar'
            DataBinding.FieldName = 'tutar'
            DataBinding.IsNullValueType = True
            Width = 49
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 101
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Kaydeden'
            DataBinding.FieldName = 'kaydeden'
            DataBinding.IsNullValueType = True
            Width = 48
          end
        end
        object cxGridDBTableView2: TcxGridDBTableView
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
          DataController.DataSource = dsHsRaporDet
          DataController.DetailKeyFieldNames = 'har_id'
          DataController.MasterKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 100
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 405
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 89
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = #304'skonto'
            DataBinding.FieldName = 'iskonto'
            DataBinding.IsNullValueType = True
            Width = 97
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 149
          end
        end
        object cxGrid2DBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dsRaporStok
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGrid2DBTableView1girisCikis: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'girisCikis'
            DataBinding.IsNullValueType = True
            Width = 59
          end
          object cxGrid2DBTableView1stok_kodu: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 127
          end
          object cxGrid2DBTableView1stok_adi: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 205
          end
          object cxGrid2DBTableView1adet: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGrid2DBTableView1tarih: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            DataBinding.IsNullValueType = True
            Width = 128
          end
          object cxGrid2DBTableView1afiyat: TcxGridDBColumn
            Caption = 'A.Fiyat'
            DataBinding.FieldName = 'afiyat'
            DataBinding.IsNullValueType = True
            Width = 86
          end
          object cxGrid2DBTableView1sfiyat: TcxGridDBColumn
            Caption = 'S.Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 88
          end
          object cxGrid2DBTableView1toplam: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 91
          end
          object cxGrid2DBTableView1aciklama: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 85
          end
        end
        object cxGrid2Level1: TcxGridLevel
          Caption = 'cxGrid2Level1'
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Cari Hareket Raporu'
      ImageIndex = 3
      object cxGrid3: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 947
        Height = 493
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          PopupMenu = pmGrdHsRapor
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
          DataController.DataSource = dsHsRapor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'kayit_tarihi'
            DataBinding.IsNullValueType = True
            Width = 51
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Cari '#304'sim'
            DataBinding.FieldName = 'carisim'
            DataBinding.IsNullValueType = True
            Width = 414
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Tutar'
            DataBinding.FieldName = 'tutar'
            DataBinding.IsNullValueType = True
            Width = 49
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 101
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Kaydeden'
            DataBinding.FieldName = 'kaydeden'
            DataBinding.IsNullValueType = True
            Width = 48
          end
        end
        object cxGridDBTableView4: TcxGridDBTableView
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
          DataController.DataSource = dsHsRaporDet
          DataController.DetailKeyFieldNames = 'har_id'
          DataController.MasterKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 100
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 405
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 89
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = #304'skonto'
            DataBinding.FieldName = 'iskonto'
            DataBinding.IsNullValueType = True
            Width = 97
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 149
          end
        end
        object cxGridDBTableView5: TcxGridDBTableView
          PopupMenu = pmGrdHsRapor
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
          DataController.DataSource = dsRaporStok
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'girisCikis'
            DataBinding.IsNullValueType = True
            Width = 59
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 127
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 205
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            DataBinding.IsNullValueType = True
            Width = 128
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = 'A.Fiyat'
            DataBinding.FieldName = 'afiyat'
            DataBinding.IsNullValueType = True
            Width = 86
          end
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = 'S.Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 88
          end
          object cxGridDBColumn30: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 91
          end
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 85
          end
        end
        object cxGrid3DBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dsRaporCari
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGrid3DBTableView1girisCikis: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'girisCikis'
            DataBinding.IsNullValueType = True
            Width = 67
          end
          object cxGrid3DBTableView1cari_kodu: TcxGridDBColumn
            Caption = 'Cari Kodu'
            DataBinding.FieldName = 'cari_kodu'
            DataBinding.IsNullValueType = True
            Width = 92
          end
          object cxGrid3DBTableView1Cari_isim: TcxGridDBColumn
            Caption = 'Cari '#304'sim'
            DataBinding.FieldName = 'Cari_isim'
            DataBinding.IsNullValueType = True
            Width = 298
          end
          object cxGrid3DBTableView1tarih: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            DataBinding.IsNullValueType = True
            Width = 124
          end
          object cxGrid3DBTableView1tutar: TcxGridDBColumn
            Caption = 'Tutar'
            DataBinding.FieldName = 'tutar'
            DataBinding.IsNullValueType = True
            Width = 76
          end
          object cxGrid3DBTableView1odeme_nakit: TcxGridDBColumn
            Caption = #214'.Nakit'
            DataBinding.FieldName = 'odeme_nakit'
            DataBinding.IsNullValueType = True
            Width = 68
          end
          object cxGrid3DBTableView1odeme_kk: TcxGridDBColumn
            Caption = #214'.K.Kart'#305
            DataBinding.FieldName = 'odeme_kk'
            DataBinding.IsNullValueType = True
            Width = 73
          end
          object cxGrid3DBTableView1odeme_cari: TcxGridDBColumn
            Caption = 'Cari Bor'#231
            DataBinding.FieldName = 'odeme_cari'
            DataBinding.IsNullValueType = True
            Width = 72
          end
          object cxGrid3DBTableView1aciklama: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 74
          end
        end
        object cxGrid3Level1: TcxGridLevel
          Caption = 'cxGrid3Level1'
          GridView = cxGrid3DBTableView1
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Gruplara G'#246're H'#305'zl'#305' Sat'#305#351
      ImageIndex = 4
      object cxGrid4: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 947
        Height = 493
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView6: TcxGridDBTableView
          PopupMenu = pmGrdHsRapor
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
          DataController.DataSource = dsHsRapor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn32: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'kayit_tarihi'
            DataBinding.IsNullValueType = True
            Width = 51
          end
          object cxGridDBColumn33: TcxGridDBColumn
            Caption = 'Cari '#304'sim'
            DataBinding.FieldName = 'carisim'
            DataBinding.IsNullValueType = True
            Width = 414
          end
          object cxGridDBColumn34: TcxGridDBColumn
            Caption = 'Tutar'
            DataBinding.FieldName = 'tutar'
            DataBinding.IsNullValueType = True
            Width = 49
          end
          object cxGridDBColumn35: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 101
          end
          object cxGridDBColumn36: TcxGridDBColumn
            Caption = 'Kaydeden'
            DataBinding.FieldName = 'kaydeden'
            DataBinding.IsNullValueType = True
            Width = 48
          end
        end
        object cxGridDBTableView7: TcxGridDBTableView
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
          DataController.DataSource = dsHsRaporDet
          DataController.DetailKeyFieldNames = 'har_id'
          DataController.MasterKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn37: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 100
          end
          object cxGridDBColumn38: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 405
          end
          object cxGridDBColumn39: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGridDBColumn40: TcxGridDBColumn
            Caption = 'Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 89
          end
          object cxGridDBColumn41: TcxGridDBColumn
            Caption = #304'skonto'
            DataBinding.FieldName = 'iskonto'
            DataBinding.IsNullValueType = True
            Width = 97
          end
          object cxGridDBColumn42: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 149
          end
        end
        object cxGridDBTableView8: TcxGridDBTableView
          PopupMenu = pmGrdHsRapor
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
          DataController.DataSource = dsRaporStok
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn43: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'girisCikis'
            DataBinding.IsNullValueType = True
            Width = 59
          end
          object cxGridDBColumn44: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 127
          end
          object cxGridDBColumn45: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 205
          end
          object cxGridDBColumn46: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGridDBColumn47: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            DataBinding.IsNullValueType = True
            Width = 128
          end
          object cxGridDBColumn48: TcxGridDBColumn
            Caption = 'A.Fiyat'
            DataBinding.FieldName = 'afiyat'
            DataBinding.IsNullValueType = True
            Width = 86
          end
          object cxGridDBColumn49: TcxGridDBColumn
            Caption = 'S.Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 88
          end
          object cxGridDBColumn50: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 91
          end
          object cxGridDBColumn51: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 85
          end
        end
        object cxGrid4DBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dsHsRaporStokGrup
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGrid4DBTableView1grup_: TcxGridDBColumn
            Caption = 'Stok Grubu'
            DataBinding.FieldName = 'grup_'
            DataBinding.IsNullValueType = True
            Width = 409
          end
          object cxGrid4DBTableView1toplam: TcxGridDBColumn
            Caption = 'Toplam Sat'#305#351
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            FooterAlignmentHorz = taRightJustify
            GroupSummaryAlignment = taRightJustify
            Width = 535
          end
        end
        object cxGrid4Level1: TcxGridLevel
          Caption = 'cxGrid4Level1'
          GridView = cxGrid4DBTableView1
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Markalara G'#246're H'#305'zl'#305' Sat'#305#351
      ImageIndex = 5
      object cxGrid5: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 947
        Height = 493
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView9: TcxGridDBTableView
          PopupMenu = pmGrdHsRapor
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
          DataController.DataSource = dsHsRapor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn52: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'kayit_tarihi'
            DataBinding.IsNullValueType = True
            Width = 51
          end
          object cxGridDBColumn53: TcxGridDBColumn
            Caption = 'Cari '#304'sim'
            DataBinding.FieldName = 'carisim'
            DataBinding.IsNullValueType = True
            Width = 414
          end
          object cxGridDBColumn54: TcxGridDBColumn
            Caption = 'Tutar'
            DataBinding.FieldName = 'tutar'
            DataBinding.IsNullValueType = True
            Width = 49
          end
          object cxGridDBColumn55: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 101
          end
          object cxGridDBColumn56: TcxGridDBColumn
            Caption = 'Kaydeden'
            DataBinding.FieldName = 'kaydeden'
            DataBinding.IsNullValueType = True
            Width = 48
          end
        end
        object cxGridDBTableView10: TcxGridDBTableView
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
          DataController.DataSource = dsHsRaporDet
          DataController.DetailKeyFieldNames = 'har_id'
          DataController.MasterKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn57: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 100
          end
          object cxGridDBColumn58: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 405
          end
          object cxGridDBColumn59: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGridDBColumn60: TcxGridDBColumn
            Caption = 'Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 89
          end
          object cxGridDBColumn61: TcxGridDBColumn
            Caption = #304'skonto'
            DataBinding.FieldName = 'iskonto'
            DataBinding.IsNullValueType = True
            Width = 97
          end
          object cxGridDBColumn62: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 149
          end
        end
        object cxGridDBTableView11: TcxGridDBTableView
          PopupMenu = pmGrdHsRapor
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
          DataController.DataSource = dsRaporStok
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn63: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'girisCikis'
            DataBinding.IsNullValueType = True
            Width = 59
          end
          object cxGridDBColumn64: TcxGridDBColumn
            Caption = 'Stok Kodu'
            DataBinding.FieldName = 'stok_kodu'
            DataBinding.IsNullValueType = True
            Width = 127
          end
          object cxGridDBColumn65: TcxGridDBColumn
            Caption = 'Stok Ad'#305
            DataBinding.FieldName = 'stok_adi'
            DataBinding.IsNullValueType = True
            Width = 205
          end
          object cxGridDBColumn66: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            DataBinding.IsNullValueType = True
            Width = 75
          end
          object cxGridDBColumn67: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            DataBinding.IsNullValueType = True
            Width = 128
          end
          object cxGridDBColumn68: TcxGridDBColumn
            Caption = 'A.Fiyat'
            DataBinding.FieldName = 'afiyat'
            DataBinding.IsNullValueType = True
            Width = 86
          end
          object cxGridDBColumn69: TcxGridDBColumn
            Caption = 'S.Fiyat'
            DataBinding.FieldName = 'sfiyat'
            DataBinding.IsNullValueType = True
            Width = 88
          end
          object cxGridDBColumn70: TcxGridDBColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 91
          end
          object cxGridDBColumn71: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            DataBinding.IsNullValueType = True
            Width = 85
          end
        end
        object cxGridDBTableView12: TcxGridDBTableView
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
          DataController.DataSource = dsHsRaporStokMarka
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object cxGridDBColumn72: TcxGridDBColumn
            Caption = 'Marka'
            DataBinding.FieldName = 'marka_'
            DataBinding.IsNullValueType = True
            Width = 409
          end
          object cxGridDBColumn73: TcxGridDBColumn
            Caption = 'Toplam Sat'#305#351
            DataBinding.FieldName = 'toplam'
            DataBinding.IsNullValueType = True
            Width = 535
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'cxGrid4Level1'
          GridView = cxGridDBTableView12
        end
      end
    end
  end
  object qryHsRapor: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'SELECT'
      '  *'
      ' ,CASE'
      '    WHEN cari_kodu <> '#39'PERAKENDE'#39' THEN (SELECT'
      '          cari_isim'
      '        FROM t_cari'
      '        WHERE cari_kodu = h.cari_kodu)'
      '    ELSE '#39'PERAKENDE'#39
      '  END AS carisim'
      ''
      'FROM t_har h'
      'WHERE tipi IN ('#39'HS'#39', '#39'HSV'#39', '#39'HSKK'#39')'
      'and CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2')
    Left = 24
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tar1'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'tar2'
        Value = Null
      end>
  end
  object dsHsRapor: TDataSource
    AutoEdit = False
    DataSet = qryHsRapor
    Left = 16
    Top = 488
  end
  object qryHsRaporDet: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'SELECT * FROM t_har_det')
    Left = 104
    Top = 432
  end
  object dsHsRaporDet: TDataSource
    AutoEdit = False
    DataSet = qryHsRaporDet
    Left = 112
    Top = 488
  end
  object pmGrdHsRapor: TPopupMenu
    Left = 307
    Top = 242
    object SatleminiSil1: TMenuItem
      Caption = 'Sat'#305#351' '#304#351'lemini Sil'
      ImageIndex = 9
      OnClick = SatleminiSil1Click
    end
  end
  object pmGrdHsRaporDet: TPopupMenu
    Left = 403
    Top = 266
  end
  object qryRaporStok: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'SELECT'
      '  *'
      ' ,CASE'
      '    WHEN gckodu = '#39'1'#39' THEN '#39'Giri'#351#39
      '    ELSE '#39#199#305'k'#305#351#39
      '  END AS '#39'girisCikis'#39
      'FROM t_har_det'
      'WHERE stok_kodu <> '#39#39
      'AND stok_kodu IS NOT NULL'
      'and CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2')
    Left = 248
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tar1'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'tar2'
        Value = Null
      end>
  end
  object dsRaporStok: TDataSource
    AutoEdit = False
    DataSet = qryRaporStok
    Left = 240
    Top = 488
  end
  object qryRaporCari: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'SELECT *,'
      
        '(SELECT cari_isim FROM t_cari c WHERE c.cari_kodu=t_har.cari_kod' +
        'u) AS '#39'Cari_isim'#39','
      'CASE'
      '    WHEN gckodu = '#39'1'#39' THEN '#39'Giri'#351#39
      '    ELSE '#39#199#305'k'#305#351#39
      '  END AS '#39'girisCikis'#39
      ' FROM t_har WHERE cari_kodu<>'#39#39' AND cari_kodu IS not null'
      'and CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2')
    Left = 328
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tar1'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'tar2'
        Value = Null
      end>
  end
  object dsRaporCari: TDataSource
    AutoEdit = False
    DataSet = qryRaporCari
    Left = 320
    Top = 496
  end
  object qryHsRaporStokGrup: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'SELECT'
      '  SUM(tutar) AS toplam,ISNULL(g.grup_adi,'#39'Grup Yok'#39') as grup_'
      '  FROM t_har h'
      '  LEFT JOIN t_stok s ON s.stok_kodu=s.stok_kodu'
      '  LEFT JOIN t_stok_grup g ON g.id=s.grup'
      'WHERE tipi IN ('#39'HS'#39', '#39'HSV'#39', '#39'HSKK'#39')'
      'and CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2'
      '  GROUP BY g.grup_adi'
      '')
    Left = 408
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tar1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tar2'
        Value = nil
      end>
  end
  object dsHsRaporStokGrup: TDataSource
    AutoEdit = False
    DataSet = qryHsRaporStokGrup
    Left = 408
    Top = 488
  end
  object qryHsRaporStokMarka: TUniQuery
    Connection = dmMain.UniConn
    SQL.Strings = (
      'SELECT'
      '  SUM(tutar) AS toplam,ISNULL(m.marka_adi,'#39'Marka Yok'#39') as marka_'
      '  FROM t_har h'
      '  left JOIN t_stok s ON s.stok_kodu=s.stok_kodu'
      '  left JOIN t_stok_marka m ON m.id=s.marka'
      'WHERE tipi IN ('#39'HS'#39', '#39'HSV'#39', '#39'HSKK'#39')'
      'and CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2'
      '  GROUP BY m.marka_adi')
    Left = 504
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tar1'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'tar2'
        Value = Null
      end>
  end
  object dsHsRaporStokMarka: TDataSource
    AutoEdit = False
    DataSet = qryHsRaporStokMarka
    Left = 504
    Top = 488
  end
  object rprHizliSatis: TfrxReport
    Version = '6.6.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Varsay'#305'lan'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44091.995410150500000000
    ReportOptions.LastChange = 44484.006429201390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 776
    Top = 184
    Datasets = <
      item
        DataSet = rprDBhizlisatis
        DataSetName = 'rprDBhizlisatis'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Sat'#305#351' Raporlar'#305)
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 235.770630350000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CARIADI')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 254.668280350000000000
          Width = 85.242313540000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tarih')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 357.855553890000000000
          Width = 202.763505540000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #304#351'lem T'#252'r'#252)
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 632.619059420000000000
          Width = 54.491176800000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tutar')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = rprDBhizlisatis
        DataSetName = 'rprDBhizlisatis'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 235.770630350000000000
          Height = 18.897650000000000000
          DataField = 'cari_kodu'
          DataSet = rprDBhizlisatis
          DataSetName = 'rprDBhizlisatis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[rprDBhizlisatis."cari_kodu"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 254.668280350000000000
          Width = 85.242313540000000000
          Height = 18.897650000000000000
          DataField = 'tarih'
          DataSet = rprDBhizlisatis
          DataSetName = 'rprDBhizlisatis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[rprDBhizlisatis."tarih"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 357.855553890000000000
          Width = 202.763505540000000000
          Height = 18.897650000000000000
          DataField = 'tipi'
          DataSet = rprDBhizlisatis
          DataSetName = 'rprDBhizlisatis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[rprDBhizlisatis."tipi"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 632.619059420000000000
          Width = 54.491176800000000000
          Height = 18.897650000000000000
          DataField = 'tutar'
          DataSet = rprDBhizlisatis
          DataSetName = 'rprDBhizlisatis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[rprDBhizlisatis."tutar"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 188.976500000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 7.559060000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<rprDBhizlisatis."tutar">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 41.574830000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<rprDBhizlisatis."odeme_nakit">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 71.811070000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<rprDBhizlisatis."odeme_kk">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 102.047310000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<rprDBhizlisatis."odeme_cari">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object rprDBhizlisatis: TfrxDBDataset
    UserName = 'rprDBhizlisatis'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'tipi=tipi'
      'gckodu=gckodu'
      'fatura_no=fatura_no'
      'cari_kodu=cari_kodu'
      'tarih=tarih'
      'tutar=tutar'
      'odeme_nakit=odeme_nakit'
      'odeme_kk=odeme_kk'
      'odeme_cari=odeme_cari'
      'aciklama=aciklama'
      'kayit_tarihi=kayit_tarihi'
      'guncellenme_tarihi=guncellenme_tarihi'
      'kaydeden=kaydeden'
      'guncelleyen=guncelleyen'
      'carisim=carisim')
    DataSet = qryHsRapor
    BCDToCurrency = False
    Left = 784
    Top = 264
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 706
    Top = 176
  end
  object pmRaporTasarim: TPopupMenu
    Left = 536
    Top = 184
    object RaporTasarm1: TMenuItem
      Caption = 'Rapor Tasar'#305'm'
      OnClick = RaporTasarm1Click
    end
  end
end
