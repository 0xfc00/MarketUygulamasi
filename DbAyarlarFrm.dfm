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
    Left = 8
    Top = 223
    Width = 289
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 0
    OnClick = btnKaydetClick
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 286
    Width = 312
    Height = 262
    Align = alBottom
    TabOrder = 1
    Visible = False
    ExplicitTop = 296
    ExplicitWidth = 765
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 302
      Height = 139
      Align = alClient
      Lines.Strings = (
        'USE master;'
        ''
        'IF DB_ID('#39'KHPRO'#39') IS NOT NULL '
        'BEGIN '
        'ALTER DATABASE KHPRO SET SINGLE_USER WITH ROLLBACK IMMEDIATE;'
        'END;'
        ''
        ''
        'RESTORE DATABASE KHPRO'
        'FROM DISK = '#39'backup_dirr\khpro.bak'#39
        'WITH'
        '    MOVE '#39'KHPRO'#39' TO '#39'app_dirr\KHPRO.mdf'#39','
        '    MOVE '#39'KHPRO_log'#39' TO '#39'app_dirr\KHPRO_log.ldf'#39','
        '    REPLACE,'
        '    RECOVERY;'
        ''
        'ALTER DATABASE KHPRO SET MULTI_USER;')
      ScrollBars = ssBoth
      TabOrder = 0
      OnDblClick = Memo1DblClick
      ExplicitTop = -12
      ExplicitWidth = 755
      ExplicitHeight = 100
    end
    object Button3: TButton
      Left = 2
      Top = 235
      Width = 308
      Height = 25
      Align = alBottom
      Caption = 'Tablolar'#305' Kald'#305'r'
      TabOrder = 1
      OnClick = Button3Click
      ExplicitLeft = 0
      ExplicitTop = 329
      ExplicitWidth = 348
    end
    object Button4: TButton
      Left = 2
      Top = 210
      Width = 308
      Height = 25
      Align = alBottom
      Caption = 'Query Editor'
      TabOrder = 2
      OnClick = Button4Click
      ExplicitLeft = 1
      ExplicitTop = 203
      ExplicitWidth = 761
    end
    object Button2: TButton
      Left = 2
      Top = 185
      Width = 308
      Height = 25
      Align = alBottom
      Caption = 'Tablolar'#305' Olu'#351'tur'
      TabOrder = 3
      OnClick = Button2Click
      ExplicitLeft = -1
      ExplicitTop = 179
      ExplicitWidth = 761
    end
    object Button1: TButton
      Left = 2
      Top = 160
      Width = 308
      Height = 25
      Align = alBottom
      Caption = 'DB Olu'#351'tur'
      TabOrder = 4
      OnClick = Button1Click
      ExplicitLeft = 3
      ExplicitTop = 154
      ExplicitWidth = 761
    end
  end
  object cbDbTipi: TComboBox
    Left = 75
    Top = 8
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 2
    Text = 'SQLite'
    OnChange = cbDbTipiChange
    Items.Strings = (
      'SQLite'
      'Sql Server')
  end
  object cxLabel6: TcxLabel
    Left = 12
    Top = 9
    Caption = 'Ba'#287'lant'#305' : '
    OnClick = cxLabel1Click
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 36
    Width = 289
    Height = 181
    Caption = 'Sql Server Ayarlar'#305
    TabOrder = 4
    Visible = False
    object edtServer: TcxTextEdit
      Left = 75
      Top = 26
      TabOrder = 0
      Text = '127.0.0.1\SQLEXPRESS'
      Width = 197
    end
    object cxLabel1: TcxLabel
      Left = 12
      Top = 27
      Caption = 'Server :'
      OnClick = cxLabel1Click
    end
    object edtDatabase: TcxTextEdit
      Left = 75
      Top = 50
      TabOrder = 2
      Width = 197
    end
    object cxLabel2: TcxLabel
      Left = 12
      Top = 51
      Caption = 'Database'
    end
    object edtusername: TcxTextEdit
      Left = 75
      Top = 99
      TabOrder = 4
      Visible = False
      Width = 197
    end
    object cxLabel3: TcxLabel
      Left = 12
      Top = 100
      Caption = 'Username'
      Visible = False
    end
    object edtPassword: TcxTextEdit
      Left = 75
      Top = 123
      TabOrder = 6
      Visible = False
      Width = 197
    end
    object cxLabel4: TcxLabel
      Left = 12
      Top = 124
      Caption = 'Password'
      Visible = False
    end
    object cxLabel5: TcxLabel
      Left = 12
      Top = 78
      Caption = 'Auth Type'
    end
    object cbAuthType: TcxComboBox
      Left = 75
      Top = 77
      Properties.Items.Strings = (
        'Windows Auth'
        'SQL')
      Properties.OnChange = cbAuthTypePropertiesChange
      TabOrder = 9
      Text = 'Windows Auth'
      Width = 197
    end
    object btnTest: TcxButton
      Left = 197
      Top = 150
      Width = 75
      Height = 25
      Caption = 'Test'
      TabOrder = 10
      OnClick = btnTestClick
    end
  end
  object UniConnTest: TUniConnection
    ProviderName = 'SQL Server'
    LoginPrompt = False
    Left = 104
    Top = 248
  end
  object qCreateDatabase: TUniQuery
    Connection = UniConnTest
    SQL.Strings = (
      'USE master'
      'GO'
      ''
      ''
      'IF DB_ID('#39'KHPRO'#39') IS NULL'
      '  CREATE DATABASE KHPRO'
      '  ON PRIMARY ('
      '  NAME = N'#39'KHPRO'#39','
      '  FILENAME = N'#39'C:\KHPRO\KHPRO.mdf'#39','
      '  SIZE = 44224 KB,'
      '  MAXSIZE = UNLIMITED,'
      '  FILEGROWTH = 1024 KB'
      '  )'
      '  LOG ON ('
      '  NAME = N'#39'KHPRO_log'#39','
      '  FILENAME = N'#39'C:\KHPRO\KHPRO_log.ldf'#39','
      '  SIZE = 180992 KB,'
      '  MAXSIZE = UNLIMITED,'
      '  FILEGROWTH = 10 %'
      '  )'
      'GO'
      ''
      'ALTER DATABASE KHPRO'
      'SET'
      'ANSI_NULL_DEFAULT OFF,'
      'ANSI_NULLS OFF,'
      'ANSI_PADDING OFF,'
      'ANSI_WARNINGS OFF,'
      'ARITHABORT OFF,'
      'AUTO_CLOSE OFF,'
      'AUTO_CREATE_STATISTICS ON,'
      'AUTO_SHRINK OFF,'
      'AUTO_UPDATE_STATISTICS ON,'
      'AUTO_UPDATE_STATISTICS_ASYNC OFF,'
      'COMPATIBILITY_LEVEL = 120,'
      'CONCAT_NULL_YIELDS_NULL OFF,'
      'CURSOR_CLOSE_ON_COMMIT OFF,'
      'CURSOR_DEFAULT GLOBAL,'
      'DATE_CORRELATION_OPTIMIZATION OFF,'
      'DB_CHAINING OFF,'
      'HONOR_BROKER_PRIORITY OFF,'
      'MULTI_USER,'
      'NUMERIC_ROUNDABORT OFF,'
      'PAGE_VERIFY CHECKSUM,'
      'PARAMETERIZATION SIMPLE,'
      'QUOTED_IDENTIFIER OFF,'
      'READ_COMMITTED_SNAPSHOT OFF,'
      'RECOVERY FULL,'
      'RECURSIVE_TRIGGERS OFF,'
      'TRANSFORM_NOISE_WORDS = OFF,'
      'TRUSTWORTHY OFF'
      'WITH ROLLBACK IMMEDIATE'
      'GO'
      ''
      'ALTER DATABASE KHPRO'
      'COLLATE Turkish_CI_AS'
      'GO'
      ''
      'ALTER DATABASE KHPRO'
      'SET DISABLE_BROKER'
      'GO'
      ''
      'ALTER DATABASE KHPRO'
      'SET ALLOW_SNAPSHOT_ISOLATION OFF'
      'GO'
      ''
      'ALTER DATABASE KHPRO'
      'SET FILESTREAM (NON_TRANSACTED_ACCESS = OFF)'
      'GO'
      ''
      'EXECUTE sp_configure '#39'show advanced options'#39
      '                    ,1;'
      'GO'
      'RECONFIGURE;'
      'GO'
      'EXECUTE sp_configure '#39'nested triggers'#39
      '                    ,1;'
      'GO'
      'RECONFIGURE;'
      'GO'
      ''
      'ALTER DATABASE KHPRO'
      'SET QUERY_STORE = OFF'
      'GO'
      ''
      'USE KHPRO'
      'GO'
      ''
      'ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;'
      'GO'
      ''
      
        'ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = P' +
        'RIMARY;'
      'GO'
      ''
      
        'ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIM' +
        'ATION = OFF;'
      'GO'
      ''
      
        'ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CAR' +
        'DINALITY_ESTIMATION = PRIMARY;'
      'GO'
      ''
      'ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;'
      'GO'
      ''
      
        'ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_' +
        'SNIFFING = PRIMARY;'
      'GO'
      ''
      
        'ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES' +
        ' = OFF;'
      'GO'
      ''
      
        'ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTI' +
        'MIZER_HOTFIXES = PRIMARY;')
    Left = 248
    Top = 48
  end
  object qCreateTables: TUniQuery
    Connection = UniConnTest
    SQL.Strings = (
      'USE KHPRO'
      'GO'
      ''
      'IF DB_NAME() <> N'#39'KHPRO'#39' SET NOEXEC ON'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[USERS]'
      '--'
      'PRINT (N'#39'Create table [dbo].[USERS]'#39')'
      'GO'
      'CREATE TABLE dbo.USERS ('
      '  ID int IDENTITY,'
      '  KULLANICI nvarchar(15) NOT NULL,'
      '  YONETICI bit NULL,'
      '  SIFRE nvarchar(32) NULL,'
      '  ACIKLAMA varchar(500) NULL,'
      '  y_STOKEKLE bit NULL,'
      '  y_STOKGUNCELLE bit NULL,'
      '  y_STOKSIL bit NULL,'
      '  y_STOKHARSIL bit NULL,'
      '  y_CARIEKLE bit NULL,'
      '  y_CARIGUNCELLE bit NULL,'
      '  y_CARISIL bit NULL,'
      '  y_CARIHARSIL bit NULL,'
      '  y_KASAISLEMEKLE bit NULL,'
      '  y_KASAISLEMSIL bit NULL,'
      '  y_FATEKLE bit NULL,'
      '  y_FATGUNCELLE bit NULL,'
      '  y_FATSIL bit NULL,'
      '  y_BORCEKLE bit NULL,'
      '  y_TAHSILATGIR bit NULL,'
      '  y_HSSATIRDUZENLE bit NULL,'
      '  y_RAPORLAR bit NULL,'
      '  p_FISYAZDIRMA int NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_USERS_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_USERS_CREATEDAT ' +
        'DEFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  CONSTRAINT PK_USERS PRIMARY KEY CLUSTERED (ID),'
      '  CONSTRAINT IX_USERS UNIQUE (KULLANICI)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[TMPSATIS]'
      '--'
      'PRINT (N'#39'Create table [dbo].[TMPSATIS]'#39')'
      'GO'
      'CREATE TABLE dbo.TMPSATIS ('
      '  ID int IDENTITY,'
      '  STOKID int NULL,'
      '  KDV decimal(20, 2) NULL,'
      '  STOKKODU varchar(50) NULL,'
      '  BEKLEMEDE int NULL,'
      '  STOKADI varchar(50) NULL,'
      '  BIRIMADI varchar(50) NULL,'
      '  ADET float NULL,'
      '  FIYAT decimal(20, 2) NULL,'
      '  ISKONTO decimal(20, 2) NULL,'
      '  TOPLAM decimal(20, 2) NULL,'
      '  ALISFIYATI decimal(20, 2) NULL,'
      '  CONSTRAINT PK_tmp_Satis_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[T_STOKGRUP]'
      '--'
      'PRINT (N'#39'Create table [dbo].[T_STOKGRUP]'#39')'
      'GO'
      'CREATE TABLE dbo.T_STOKGRUP ('
      '  ID int IDENTITY,'
      '  GRUPADI varchar(50) NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_T_STOKGRUP_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_T_STOKGRUP_CREAT' +
        'EDAT DEFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  CONSTRAINT PK_T_GRUP_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[T_REYONRAF]'
      '--'
      'PRINT (N'#39'Create table [dbo].[T_REYONRAF]'#39')'
      'GO'
      'CREATE TABLE dbo.T_REYONRAF ('
      '  ID int IDENTITY,'
      '  REYONRAFADI varchar(50) NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_T_REYONRAF_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_T_REYONRAF_CREAT' +
        'EDAT DEFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  CONSTRAINT PK_T_REYONRAF_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[T_MARKA]'
      '--'
      'PRINT (N'#39'Create table [dbo].[T_MARKA]'#39')'
      'GO'
      'CREATE TABLE dbo.T_MARKA ('
      '  ID int IDENTITY,'
      '  MARKAADI varchar(50) NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_T_MARKA_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_T_MARKA_CREATEDA' +
        'T DEFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  CONSTRAINT PK_T_MARKA_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[T_HSGRUP]'
      '--'
      'PRINT (N'#39'Create table [dbo].[T_HSGRUP]'#39')'
      'GO'
      'CREATE TABLE dbo.T_HSGRUP ('
      '  ID int IDENTITY,'
      '  GRUPADI varchar(50) NOT NULL,'
      '  SIRA int NULL,'
      '  CONSTRAINT PK_T_HSGRUP_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[T_HSSIRA]'
      '--'
      'PRINT (N'#39'Create table [dbo].[T_HSSIRA]'#39')'
      'GO'
      'CREATE TABLE dbo.T_HSSIRA ('
      '  ID int IDENTITY,'
      '  GRUPID int NOT NULL,'
      '  STOKKODU varchar(50) NOT NULL,'
      '  SIRA int NULL,'
      '  CONSTRAINT PK_T_HSSIRA_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      
        '-- Create foreign key [FK_T_HSSIRA_GRUPID] on table [dbo].[T_HSS' +
        'IRA]'
      '--'
      
        'PRINT (N'#39'Create foreign key [FK_T_HSSIRA_GRUPID] on table [dbo].' +
        '[T_HSSIRA]'#39')'
      'GO'
      'ALTER TABLE dbo.T_HSSIRA'
      
        '  ADD CONSTRAINT FK_T_HSSIRA_GRUPID FOREIGN KEY (GRUPID) REFEREN' +
        'CES dbo.T_HSGRUP (ID) ON DELETE CASCADE ON UPDATE CASCADE'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[T_CARIGRUP]'
      '--'
      'PRINT (N'#39'Create table [dbo].[T_CARIGRUP]'#39')'
      'GO'
      'CREATE TABLE dbo.T_CARIGRUP ('
      '  ID int IDENTITY,'
      '  GRUPADI varchar(50) NOT NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_T_CARIGRUP_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_T_CARIGRUP_CREAT' +
        'EDAT DEFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  CONSTRAINT PK_T_CARIGRUP_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[CARI]'
      '--'
      'PRINT (N'#39'Create table [dbo].[CARI]'#39')'
      'GO'
      'CREATE TABLE dbo.CARI ('
      '  ID int IDENTITY,'
      '  CARIKODU nvarchar(80) NOT NULL,'
      '  UNVAN nvarchar(100) NOT NULL,'
      '  TARIH datetime NULL,'
      '  GROUPID int NULL,'
      '  MESLEK nvarchar(20) NULL,'
      '  ILCE nvarchar(20) NULL,'
      '  SEHIR nvarchar(20) NULL,'
      '  POSTAKODU nvarchar(10) NULL,'
      '  ULKE nvarchar(20) NULL,'
      '  VERGIDAIRESI nvarchar(20) NULL,'
      '  VERGINO nvarchar(15) NULL,'
      '  BANKA nvarchar(20) NULL,'
      '  BANKAHESAPNO nvarchar(30) NULL,'
      '  ISTELEFONU1 nvarchar(15) NULL,'
      '  ISTELEFONU2 nvarchar(15) NULL,'
      '  FAX nvarchar(15) NULL,'
      '  CEPTELEFONU nvarchar(15) NULL,'
      '  EVTELEFONU nvarchar(15) NULL,'
      '  EMAIL nvarchar(50) NULL,'
      '  ADRES1 nvarchar(50) NULL,'
      '  ADRES2 nvarchar(50) NULL,'
      '  ADRES3 nvarchar(50) NULL,'
      '  ACIKLAMA1 nvarchar(100) NULL,'
      '  ACIKLAMA2 nvarchar(100) NULL,'
      '  ACIKLAMA3 nvarchar(100) NULL,'
      '  RESIM nvarchar(150) NULL,'
      '  YETKILI nvarchar(100) NULL,'
      '  VERESIYE_LIMITI float NULL,'
      '  VERESIYE_UYAR bit NULL,'
      '  VERESIYE_SURESI int NULL,'
      '  EMAIL2 nvarchar(50) NULL,'
      '  EMAIL3 nvarchar(50) NULL,'
      '  TIPI int NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_CARI_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_CARI_CREATEDAT D' +
        'EFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      
        '  TOPLAM_GIREN decimal(18, 4) NOT NULL CONSTRAINT DF_CARI_TOPLAM' +
        '_GIREN DEFAULT (0),'
      
        '  TOPLAM_CIKAN decimal(18, 4) NOT NULL CONSTRAINT DF_CARI_TOPLAM' +
        '_CIKAN DEFAULT (0),'
      '  BAKIYE AS ([TOPLAM_GIREN]-[TOPLAM_CIKAN]) PERSISTED NOT NULL,'
      '  CONSTRAINT PK_CARI PRIMARY KEY CLUSTERED (ID),'
      '  CONSTRAINT IX_CARI UNIQUE (CARIKODU)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IX_CARI_GROUPID] on table [dbo].[CARI]'
      '--'
      'PRINT (N'#39'Create index [IX_CARI_GROUPID] on table [dbo].[CARI]'#39')'
      'GO'
      'CREATE INDEX IX_CARI_GROUPID'
      '  ON dbo.CARI (GROUPID)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create foreign key [FK_CARI_GROUPID] on table [dbo].[CARI]'
      '--'
      
        'PRINT (N'#39'Create foreign key [FK_CARI_GROUPID] on table [dbo].[CA' +
        'RI]'#39')'
      'GO'
      'ALTER TABLE dbo.CARI'
      
        '  ADD CONSTRAINT FK_CARI_GROUPID FOREIGN KEY (GROUPID) REFERENCE' +
        'S dbo.T_CARIGRUP (ID)'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[T_BIRIM]'
      '--'
      'PRINT (N'#39'Create table [dbo].[T_BIRIM]'#39')'
      'GO'
      'CREATE TABLE dbo.T_BIRIM ('
      '  ID int IDENTITY,'
      '  BIRIMADI varchar(50) NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_T_BIRIM_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_T_BIRIM_CREATEDA' +
        'T DEFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  CONSTRAINT PK_T_BIRIM_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[STOK]'
      '--'
      'PRINT (N'#39'Create table [dbo].[STOK]'#39')'
      'GO'
      'CREATE TABLE dbo.STOK ('
      '  ID int IDENTITY,'
      '  STOKKODU nvarchar(15) NOT NULL,'
      '  STOKADI nvarchar(255) NOT NULL,'
      '  BARKOD varchar(50) NULL,'
      '  TARIH datetime NULL,'
      '  ACIKLAMA nvarchar(100) NULL,'
      '  BIRIMID int NULL,'
      '  GRUPID int NULL,'
      '  MARKAID int NULL,'
      '  KDV float NULL,'
      '  RESIM varbinary(max) NULL,'
      '  SATISFIYATI float NULL,'
      '  SATISFIYATI2 float NULL,'
      '  SATISFIYATI3 float NULL,'
      '  PLU_NO int NULL,'
      '  ALISFIYATI float NULL,'
      '  KDV_ISTISNA_KODU nvarchar(10) NULL,'
      '  REYONRAFID int NULL,'
      '  TERAZITIP smallint NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_STOK_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_STOK_CREATEDAT D' +
        'EFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      
        '  TOPLAM_GIREN decimal(18, 4) NULL CONSTRAINT DF_STOK_TOPLAM_GIR' +
        'EN DEFAULT (0),'
      
        '  TOPLAM_CIKAN decimal(18, 4) NULL CONSTRAINT DF_STOK_TOPLAM_CIK' +
        'AN DEFAULT (0),'
      '  BAKIYE AS ([TOPLAM_GIREN]-[TOPLAM_CIKAN]) PERSISTED,'
      '  CONSTRAINT PK_STOKKARTI PRIMARY KEY CLUSTERED (ID),'
      '  CONSTRAINT KEY_STOK_STOKKODU UNIQUE (STOKKODU)'
      ')'
      'ON [PRIMARY]'
      'TEXTIMAGE_ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IDX_STOK_BARKOD] on table [dbo].[STOK]'
      '--'
      'PRINT (N'#39'Create index [IDX_STOK_BARKOD] on table [dbo].[STOK]'#39')'
      'GO'
      'CREATE INDEX IDX_STOK_BARKOD'
      '  ON dbo.STOK (BARKOD)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IDX_STOK_STOKADI] on table [dbo].[STOK]'
      '--'
      'PRINT (N'#39'Create index [IDX_STOK_STOKADI] on table [dbo].[STOK]'#39')'
      'GO'
      'CREATE INDEX IDX_STOK_STOKADI'
      '  ON dbo.STOK (STOKADI)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IX_STOK_BIRIMID] on table [dbo].[STOK]'
      '--'
      'PRINT (N'#39'Create index [IX_STOK_BIRIMID] on table [dbo].[STOK]'#39')'
      'GO'
      'CREATE INDEX IX_STOK_BIRIMID'
      '  ON dbo.STOK (BIRIMID)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IX_STOK_GRUPID] on table [dbo].[STOK]'
      '--'
      'PRINT (N'#39'Create index [IX_STOK_GRUPID] on table [dbo].[STOK]'#39')'
      'GO'
      'CREATE INDEX IX_STOK_GRUPID'
      '  ON dbo.STOK (GRUPID)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IX_STOK_MARKAID] on table [dbo].[STOK]'
      '--'
      'PRINT (N'#39'Create index [IX_STOK_MARKAID] on table [dbo].[STOK]'#39')'
      'GO'
      'CREATE INDEX IX_STOK_MARKAID'
      '  ON dbo.STOK (MARKAID)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IX_STOK_REYONRAFID] on table [dbo].[STOK]'
      '--'
      
        'PRINT (N'#39'Create index [IX_STOK_REYONRAFID] on table [dbo].[STOK]' +
        #39')'
      'GO'
      'CREATE INDEX IX_STOK_REYONRAFID'
      '  ON dbo.STOK (REYONRAFID)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create foreign key [FK_STOK_BIRIMID] on table [dbo].[STOK]'
      '--'
      
        'PRINT (N'#39'Create foreign key [FK_STOK_BIRIMID] on table [dbo].[ST' +
        'OK]'#39')'
      'GO'
      'ALTER TABLE dbo.STOK'
      
        '  ADD CONSTRAINT FK_STOK_BIRIMID FOREIGN KEY (BIRIMID) REFERENCE' +
        'S dbo.T_BIRIM (ID)'
      'GO'
      ''
      '--'
      '-- Create foreign key [FK_STOK_GRUPID] on table [dbo].[STOK]'
      '--'
      
        'PRINT (N'#39'Create foreign key [FK_STOK_GRUPID] on table [dbo].[STO' +
        'K]'#39')'
      'GO'
      'ALTER TABLE dbo.STOK'
      
        '  ADD CONSTRAINT FK_STOK_GRUPID FOREIGN KEY (GRUPID) REFERENCES ' +
        'dbo.T_STOKGRUP (ID)'
      'GO'
      ''
      '--'
      '-- Create foreign key [FK_STOK_MARKAID] on table [dbo].[STOK]'
      '--'
      
        'PRINT (N'#39'Create foreign key [FK_STOK_MARKAID] on table [dbo].[ST' +
        'OK]'#39')'
      'GO'
      'ALTER TABLE dbo.STOK'
      
        '  ADD CONSTRAINT FK_STOK_MARKAID FOREIGN KEY (MARKAID) REFERENCE' +
        'S dbo.T_MARKA (ID)'
      'GO'
      ''
      '--'
      '-- Create foreign key [FK_STOK_REYONRAFID] on table [dbo].[STOK]'
      '--'
      
        'PRINT (N'#39'Create foreign key [FK_STOK_REYONRAFID] on table [dbo].' +
        '[STOK]'#39')'
      'GO'
      'ALTER TABLE dbo.STOK'
      
        '  ADD CONSTRAINT FK_STOK_REYONRAFID FOREIGN KEY (REYONRAFID) REF' +
        'ERENCES dbo.T_REYONRAF (ID)'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[POS]'
      '--'
      'PRINT (N'#39'Create table [dbo].[POS]'#39')'
      'GO'
      'CREATE TABLE dbo.POS ('
      '  ID int IDENTITY,'
      '  POSADI nvarchar(30) NOT NULL,'
      '  HESAPKODU nvarchar(20) NULL,'
      '  TERMINALNO nvarchar(20) NULL,'
      '  BANKAADI nvarchar(30) NULL,'
      '  UYEISYERINO nvarchar(20) NULL,'
      '  AKTIF bit NULL CONSTRAINT DF_dbo_POS_AKTIF DEFAULT (1),'
      '  DELETED bit NULL,'
      
        '  CREATEDAT datetime2(0) NULL CONSTRAINT DF_dbo_POS_CREATEDAT DE' +
        'FAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  DELETEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  TOPLAM_GIREN decimal(18, 4) NOT NULL DEFAULT (0),'
      '  TOPLAM_CIKAN decimal(18, 4) NOT NULL DEFAULT (0),'
      '  BAKIYE AS ([TOPLAM_GIREN]-[TOPLAM_CIKAN]) PERSISTED NOT NULL,'
      '  CONSTRAINT PK_POSLAR PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [UK_POS_POSADI] on table [dbo].[POS]'
      '--'
      'PRINT (N'#39'Create index [UK_POS_POSADI] on table [dbo].[POS]'#39')'
      'GO'
      'CREATE UNIQUE INDEX UK_POS_POSADI'
      '  ON dbo.POS (POSADI)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[ISLEM_BASLIK]'
      '--'
      'PRINT (N'#39'Create table [dbo].[ISLEM_BASLIK]'#39')'
      'GO'
      'CREATE TABLE dbo.ISLEM_BASLIK ('
      '  ID int IDENTITY,'
      '  ISLEMTURU tinyint NOT NULL,'
      '  ODEMETURU varchar(50) NOT NULL,'
      '  ISLEMTARIHI datetime NOT NULL,'
      '  CARIID int NOT NULL,'
      '  POSID int NOT NULL,'
      '  EVRAKNO nvarchar(100) NULL,'
      '  GIREN decimal(18, 4) NULL DEFAULT (0),'
      '  CIKAN decimal(18, 4) NULL DEFAULT (0),'
      '  TUTAR decimal(18, 2) NULL,'
      '  KDVORANI decimal(5, 2) NULL,'
      '  KDVTUTARI decimal(18, 2) NULL,'
      '  ISKONTO_ORANI decimal(5, 2) NULL,'
      '  ISKONTO_TUTARI decimal(18, 2) NULL,'
      '  ACIKLAMA1 nvarchar(150) NULL,'
      '  ACIKLAMA2 nvarchar(150) NULL,'
      '  CREATEDAT datetime2(0) NULL DEFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      
        '-- Create index [IX_ISLEM_BASLIK_CARI] on table [dbo].[ISLEM_BAS' +
        'LIK]'
      '--'
      
        'PRINT (N'#39'Create index [IX_ISLEM_BASLIK_CARI] on table [dbo].[ISL' +
        'EM_BASLIK]'#39')'
      'GO'
      'CREATE INDEX IX_ISLEM_BASLIK_CARI'
      '  ON dbo.ISLEM_BASLIK (CARIID)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      
        '-- Create index [IX_ISLEM_BASLIK_TARIH] on table [dbo].[ISLEM_BA' +
        'SLIK]'
      '--'
      
        'PRINT (N'#39'Create index [IX_ISLEM_BASLIK_TARIH] on table [dbo].[IS' +
        'LEM_BASLIK]'#39')'
      'GO'
      'CREATE INDEX IX_ISLEM_BASLIK_TARIH'
      '  ON dbo.ISLEM_BASLIK (ISLEMTARIHI)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[ISLEM_H]'
      '--'
      'PRINT (N'#39'Create table [dbo].[ISLEM_H]'#39')'
      'GO'
      'CREATE TABLE dbo.ISLEM_H ('
      '  ID int IDENTITY,'
      '  ISLEMID int NOT NULL,'
      '  ISLEMTURU tinyint NOT NULL,'
      '  ODEMETURU tinyint NOT NULL,'
      '  ISLEMTARIHI datetime NOT NULL,'
      '  CARIID int NOT NULL,'
      '  STOKID int NOT NULL,'
      '  POSID int NOT NULL,'
      '  EVRAKNO nvarchar(100) NULL,'
      '  MIKTAR decimal(18, 4) NULL,'
      '  BIRIMFIYAT decimal(18, 4) NULL,'
      '  GIREN decimal(18, 4) NULL DEFAULT (0),'
      '  CIKAN decimal(18, 4) NULL DEFAULT (0),'
      '  TUTAR decimal(18, 2) NULL,'
      '  BIRIMID int NULL,'
      '  BIRIMADI varchar(50) NULL,'
      '  KDVORANI decimal(5, 2) NULL,'
      '  KDVTUTARI decimal(18, 2) NULL,'
      '  ISKONTO_ORANI decimal(5, 2) NULL,'
      '  ISKONTO_TUTARI decimal(18, 2) NULL,'
      '  ALISFIYATI decimal(20, 2) NULL,'
      '  ACIKLAMA1 nvarchar(150) NULL,'
      '  ACIKLAMA2 nvarchar(150) NULL,'
      '  CREATEDAT datetime2(0) NULL DEFAULT (sysdatetime()),'
      '  UPDATEDAT datetime2(0) NULL,'
      '  USERID int NULL,'
      '  USERIDUP int NULL,'
      '  PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IX_ISLEM_H_ISLEMID] on table [dbo].[ISLEM_H]'
      '--'
      
        'PRINT (N'#39'Create index [IX_ISLEM_H_ISLEMID] on table [dbo].[ISLEM' +
        '_H]'#39')'
      'GO'
      'CREATE INDEX IX_ISLEM_H_ISLEMID'
      '  ON dbo.ISLEM_H (ISLEMID)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IX_ISLEM_H_TARIH] on table [dbo].[ISLEM_H]'
      '--'
      
        'PRINT (N'#39'Create index [IX_ISLEM_H_TARIH] on table [dbo].[ISLEM_H' +
        ']'#39')'
      'GO'
      'CREATE INDEX IX_ISLEM_H_TARIH'
      '  ON dbo.ISLEM_H (ISLEMTARIHI)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      '-- Create index [IX_ISLEM_H_TIP_HESAP] on table [dbo].[ISLEM_H]'
      '--'
      
        'PRINT (N'#39'Create index [IX_ISLEM_H_TIP_HESAP] on table [dbo].[ISL' +
        'EM_H]'#39')'
      'GO'
      'CREATE INDEX IX_ISLEM_H_TIP_HESAP'
      '  ON dbo.ISLEM_H (ISLEMTURU, CARIID)'
      '  ON [PRIMARY]'
      'GO'
      ''
      '--'
      
        '-- Create foreign key [FK_ISLEM_H_ISLEMID] on table [dbo].[ISLEM' +
        '_H]'
      '--'
      
        'PRINT (N'#39'Create foreign key [FK_ISLEM_H_ISLEMID] on table [dbo].' +
        '[ISLEM_H]'#39')'
      'GO'
      'ALTER TABLE dbo.ISLEM_H'
      
        '  ADD CONSTRAINT FK_ISLEM_H_ISLEMID FOREIGN KEY (ISLEMID) REFERE' +
        'NCES dbo.ISLEM_BASLIK (ID)'
      'GO'
      ''
      '--'
      '-- Create table [dbo].[AYARLAR]'
      '--'
      'PRINT (N'#39'Create table [dbo].[AYARLAR]'#39')'
      'GO'
      'CREATE TABLE dbo.AYARLAR ('
      '  ID int IDENTITY,'
      '  FIRMAADI varchar(50) NULL,'
      '  FIRMATELEFON varchar(50) NULL,'
      '  FIRMAADRES varchar(50) NULL,'
      '  FIRMAIL varchar(50) NULL,'
      '  FIRMAILCE varchar(50) NULL,'
      '  FIRMAEPOSTA varchar(50) NULL,'
      '  LISANSKEY varchar(500) NULL,'
      '  OTO_YEDEK bit NULL,'
      '  OTO_YEDEK_DIZINI varchar(500) NULL,'
      '  CONSTRAINT PK_AYARLAR_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO')
    Left = 184
    Top = 176
  end
  object q: TUniQuery
    Connection = UniConnTest
    Left = 16
    Top = 248
  end
  object qryDropTables: TUniQuery
    Connection = UniConnTest
    SQL.Strings = (
      'USE KHPRO'
      'GO'
      ''
      'IF DB_NAME() <> N'#39'KHPRO'#39' SET NOEXEC ON'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[AYARLAR]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[AYARLAR]'#39')'
      'GO'
      'DROP TABLE dbo.AYARLAR'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[ISLEM_H]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[ISLEM_H]'#39')'
      'GO'
      'DROP TABLE dbo.ISLEM_H'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[ISLEM_BASLIK]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[ISLEM_BASLIK]'#39')'
      'GO'
      'DROP TABLE dbo.ISLEM_BASLIK'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[POS]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[POS]'#39')'
      'GO'
      'DROP TABLE dbo.POS'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[STOK]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[STOK]'#39')'
      'GO'
      'DROP TABLE dbo.STOK'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[T_BIRIM]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[T_BIRIM]'#39')'
      'GO'
      'DROP TABLE dbo.T_BIRIM'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[CARI]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[CARI]'#39')'
      'GO'
      'DROP TABLE dbo.CARI'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[T_CARIGRUP]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[T_CARIGRUP]'#39')'
      'GO'
      'DROP TABLE dbo.T_CARIGRUP'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[T_HSSIRA]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[T_HSSIRA]'#39')'
      'GO'
      'DROP TABLE dbo.T_HSSIRA'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[T_HSGRUP]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[T_HSGRUP]'#39')'
      'GO'
      'DROP TABLE dbo.T_HSGRUP'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[T_MARKA]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[T_MARKA]'#39')'
      'GO'
      'DROP TABLE dbo.T_MARKA'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[T_REYONRAF]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[T_REYONRAF]'#39')'
      'GO'
      'DROP TABLE dbo.T_REYONRAF'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[T_STOKGRUP]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[T_STOKGRUP]'#39')'
      'GO'
      'DROP TABLE dbo.T_STOKGRUP'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[TMPSATIS]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[TMPSATIS]'#39')'
      'GO'
      'DROP TABLE dbo.TMPSATIS'
      'GO'
      ''
      '--'
      '-- Drop table [dbo].[USERS]'
      '--'
      'PRINT (N'#39'Drop table [dbo].[USERS]'#39')'
      'GO'
      'DROP TABLE dbo.USERS'
      'GO')
    Left = 248
    Top = 112
  end
  object qryCreateSp: TUniQuery
    Connection = UniConnTest
    SQL.Strings = (
      'CREATE PROCEDURE dbo.SP_REBUILD_ALL_TOTALS'
      'AS'
      'BEGIN'
      '    SET NOCOUNT ON;'
      '    SET XACT_ABORT ON;'
      ''
      '    BEGIN TRAN;'
      ''
      '    /* ====================================================='
      '       1'#65039#8419' CARI TOPLAMLARINI SIFIRLA'
      '    ===================================================== */'
      '    UPDATE dbo.CARI'
      '    SET'
      '        TOPLAM_GIREN = 0,'
      '        TOPLAM_CIKAN = 0;'
      ''
      '    /* ====================================================='
      '       2'#65039#8419' POS TOPLAMLARINI SIFIRLA'
      '    ===================================================== */'
      '    UPDATE dbo.POS'
      '    SET'
      '        TOPLAM_GIREN = 0,'
      '        TOPLAM_CIKAN = 0;'
      ''
      '    /* ====================================================='
      '       3'#65039#8419' STOK TOPLAMLARINI SIFIRLA'
      '    ===================================================== */'
      '    UPDATE dbo.STOK'
      '    SET'
      '        TOPLAM_GIREN = 0,'
      '        TOPLAM_CIKAN = 0;'
      ''
      '    /* ====================================================='
      '       4'#65039#8419' CARI '#8211' ISLEM_BASLIK'#8217'TAN HESAPLA'
      '       ISLEMTURU:'
      '       1,5 = G'#304'R'#304#350
      '       6   = '#199'IKI'#350
      '    ===================================================== */'
      '    ;WITH CARI_T AS ('
      '        SELECT'
      '            CARIID,'
      '            SUM(GIREN) AS GIREN,'
      '            SUM(CIKAN) AS CIKAN'
      '        FROM dbo.ISLEM_BASLIK'
      '        WHERE ISLEMTURU IN (1,5,6)'
      '        GROUP BY CARIID'
      '    )'
      '    UPDATE C'
      '    SET'
      '        C.TOPLAM_GIREN = T.GIREN,'
      '        C.TOPLAM_CIKAN = T.CIKAN'
      '    FROM dbo.CARI C'
      '    JOIN CARI_T T ON T.CARIID = C.ID;'
      ''
      '    /* ====================================================='
      '       5'#65039#8419' POS '#8211' SADECE ODEMETURU = 2'
      '    ===================================================== */'
      '    ;WITH POS_T AS ('
      '        SELECT'
      '            POSID,'
      '            SUM(GIREN) AS GIREN,'
      '            SUM(CIKAN) AS CIKAN'
      '        FROM dbo.ISLEM_BASLIK'
      '        WHERE ODEMETURU = 2'
      '          AND ISLEMTURU IN (1,5,6)'
      '        GROUP BY POSID'
      '    )'
      '    UPDATE P'
      '    SET'
      '        P.TOPLAM_GIREN = T.GIREN,'
      '        P.TOPLAM_CIKAN = T.CIKAN'
      '    FROM dbo.POS P'
      '    JOIN POS_T T ON T.POSID = P.ID;'
      ''
      '    /* ====================================================='
      '       6'#65039#8419' STOK '#8211' ISLEM_H'#8217'TAN HESAPLA'
      '       ISLEMTURU:'
      '       1,2 = G'#304'R'#304#350
      '       3   = '#199'IKI'#350
      '    ===================================================== */'
      '    ;WITH STOK_T AS ('
      '        SELECT'
      '            STOKID,'
      '            SUM(GIREN) AS GIREN,'
      '            SUM(CIKAN) AS CIKAN'
      '        FROM dbo.ISLEM_H'
      '        WHERE ISLEMTURU IN (1,2,3)'
      '        GROUP BY STOKID'
      '    )'
      '    UPDATE S'
      '    SET'
      '        S.TOPLAM_GIREN = T.GIREN,'
      '        S.TOPLAM_CIKAN = T.CIKAN'
      '    FROM dbo.STOK S'
      '    JOIN STOK_T T ON T.STOKID = S.ID;'
      ''
      '    COMMIT TRAN;'
      'END'
      'GO')
    Left = 232
    Top = 232
  end
  object qryCreateTrigerIslem_baslik: TUniQuery
    Connection = UniConnTest
    SQL.Strings = (
      'CREATE TRIGGER dbo.TRG_ISLEM_BASLIK_GUNCELLE'
      'ON dbo.ISLEM_BASLIK'
      'AFTER INSERT, UPDATE, DELETE'
      'AS'
      'BEGIN'
      '    SET NOCOUNT ON;'
      ''
      '    /* ================================'
      '       1'#65039#8419' CARI '#8211' ESK'#304' KAYITLARI GER'#304' AL'
      '       ================================ */'
      '    UPDATE C'
      '    SET'
      '        TOPLAM_GIREN = TOPLAM_GIREN - ISNULL(D.GIREN,0),'
      '        TOPLAM_CIKAN = TOPLAM_CIKAN - ISNULL(D.CIKAN,0)'
      '    FROM dbo.CARI C'
      '    INNER JOIN deleted D ON D.CARIID = C.ID'
      '    WHERE D.ISLEMTURU IN (1,5,6);'
      ''
      '    /* ================================'
      '       2'#65039#8419' POS '#8211' ESK'#304' KAYITLARI GER'#304' AL'
      '       (SADECE ODEMETURU = 2)'
      '       ================================ */'
      '    UPDATE P'
      '    SET'
      '        TOPLAM_GIREN = TOPLAM_GIREN - ISNULL(D.GIREN,0),'
      '        TOPLAM_CIKAN = TOPLAM_CIKAN - ISNULL(D.CIKAN,0)'
      '    FROM dbo.POS P'
      '    INNER JOIN deleted D ON D.POSID = P.ID'
      '    WHERE D.ODEMETURU = 2'
      '      AND D.ISLEMTURU IN (1,5,6);'
      ''
      '    /* ================================'
      '       3'#65039#8419' CARI '#8211' YEN'#304' KAYITLARI EKLE'
      '       ================================ */'
      '    UPDATE C'
      '    SET'
      '        TOPLAM_GIREN = TOPLAM_GIREN + ISNULL(I.GIREN,0),'
      '        TOPLAM_CIKAN = TOPLAM_CIKAN + ISNULL(I.CIKAN,0)'
      '    FROM dbo.CARI C'
      '    INNER JOIN inserted I ON I.CARIID = C.ID'
      '    WHERE I.ISLEMTURU IN (1,5,6);'
      ''
      '    /* ================================'
      '       4'#65039#8419' POS '#8211' YEN'#304' KAYITLARI EKLE'
      '       (SADECE ODEMETURU = 2)'
      '       ================================ */'
      '    UPDATE P'
      '    SET'
      '        TOPLAM_GIREN = TOPLAM_GIREN + ISNULL(I.GIREN,0),'
      '        TOPLAM_CIKAN = TOPLAM_CIKAN + ISNULL(I.CIKAN,0)'
      '    FROM dbo.POS P'
      '    INNER JOIN inserted I ON I.POSID = P.ID'
      '    WHERE I.ODEMETURU = 2'
      '      AND I.ISLEMTURU IN (1,5,6);'
      ''
      'END'
      'GO')
    Left = 144
    Top = 248
  end
  object qryCreateTrigerIslem_h: TUniQuery
    Connection = UniConnTest
    SQL.Strings = (
      'CREATE TRIGGER dbo.TRG_ISLEM_H_UPDATE_TOTALS'
      'ON dbo.ISLEM_H'
      'AFTER INSERT, UPDATE, DELETE'
      'AS'
      'BEGIN'
      '    SET NOCOUNT ON;'
      ''
      '    /* ====================================================='
      '       STOK (ADET / M'#304'KTAR)'
      '    ===================================================== */'
      '    ;WITH X AS ('
      '        SELECT STOKID,'
      '               SUM(GIREN) AS GIREN,'
      '               SUM(CIKAN) AS CIKAN'
      '        FROM ('
      '            SELECT STOKID, GIREN, CIKAN'
      '            FROM inserted'
      '            WHERE ISLEMTURU IN (1,2,3)'
      ''
      '            UNION ALL'
      ''
      '            SELECT STOKID, -GIREN, -CIKAN'
      '            FROM deleted'
      '            WHERE ISLEMTURU IN (1,2,3)'
      '        ) T'
      '        GROUP BY STOKID'
      '    )'
      '    UPDATE S'
      '    SET'
      '        S.TOPLAM_GIREN += X.GIREN,'
      '        S.TOPLAM_CIKAN += X.CIKAN'
      '    FROM dbo.STOK S'
      '    JOIN X ON X.STOKID = S.ID;'
      '  '
      ''
      'END'
      ''
      'GO')
    Left = 56
    Top = 248
  end
  object SQLiteUniProvider1: TSQLiteUniProvider
    Left = 256
    Top = 16
  end
end
