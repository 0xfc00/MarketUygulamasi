object frmDbAyarlar: TfrmDbAyarlar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Veritaban'#305' Ayarlar'#305
  ClientHeight = 469
  ClientWidth = 317
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
  object edtServer: TcxTextEdit
    Left = 75
    Top = 10
    TabOrder = 0
    Text = '127.0.0.1\SQLEXPRESS'
    Width = 197
  end
  object cxLabel1: TcxLabel
    Left = 12
    Top = 11
    Caption = 'Server :'
    OnClick = cxLabel1Click
  end
  object edtDatabase: TcxTextEdit
    Left = 75
    Top = 34
    TabOrder = 2
    Width = 197
  end
  object cxLabel2: TcxLabel
    Left = 12
    Top = 35
    Caption = 'Database'
  end
  object edtusername: TcxTextEdit
    Left = 75
    Top = 83
    TabOrder = 4
    Visible = False
    Width = 197
  end
  object cxLabel3: TcxLabel
    Left = 12
    Top = 84
    Caption = 'Username'
    Visible = False
  end
  object edtPassword: TcxTextEdit
    Left = 75
    Top = 107
    TabOrder = 6
    Visible = False
    Width = 197
  end
  object cxLabel4: TcxLabel
    Left = 12
    Top = 108
    Caption = 'Password'
    Visible = False
  end
  object cxLabel5: TcxLabel
    Left = 12
    Top = 62
    Caption = 'Auth Type'
  end
  object cbAuthType: TcxComboBox
    Left = 75
    Top = 61
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
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Test'
    TabOrder = 10
    OnClick = btnTestClick
  end
  object btnKaydet: TcxButton
    Left = 197
    Top = 165
    Width = 75
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 11
    OnClick = btnKaydetClick
  end
  object Button2: TButton
    Left = 0
    Top = 444
    Width = 317
    Height = 25
    Align = alBottom
    Caption = 'Tablolar'#305' Olu'#351'tur'
    Enabled = False
    TabOrder = 12
    Visible = False
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 0
    Top = 419
    Width = 317
    Height = 25
    Align = alBottom
    Caption = 'DB Olu'#351'tur'
    TabOrder = 13
    Visible = False
    OnClick = Button1Click
  end
  object UniConnTest: TUniConnection
    ProviderName = 'SQL Server'
    LoginPrompt = False
    Left = 48
    Top = 136
  end
  object qCreateDatabase: TUniQuery
    Connection = UniConnTest
    SQL.Strings = (
      'USE master'
      'GO'
      ''
      'CREATE DATABASE KHPRO'
      'ON PRIMARY ('
      'NAME = N'#39'KHPRO'#39','
      
        'FILENAME = N'#39'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEX' +
        'PRESS\MSSQL\DATA\KHPRO.mdf'#39','
      'SIZE = 44224 KB,'
      'MAXSIZE = UNLIMITED,'
      'FILEGROWTH = 1024 KB'
      ')'
      'LOG ON ('
      'NAME = N'#39'KHPRO_log'#39','
      
        'FILENAME = N'#39'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEX' +
        'PRESS\MSSQL\DATA\KHPRO_log.ldf'#39','
      'SIZE = 180992 KB,'
      'MAXSIZE = UNLIMITED,'
      'FILEGROWTH = 10 %'
      ')'
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
        'MIZER_HOTFIXES = PRIMARY;'
      'GO')
    Left = 64
    Top = 200
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
      
        '  TOPLAM_GIREN decimal(18, 4) NOT NULL CONSTRAINT DF_STOK_TOPLAM' +
        '_GIREN DEFAULT (0),'
      
        '  TOPLAM_CIKAN decimal(18, 4) NOT NULL CONSTRAINT DF_STOK_TOPLAM' +
        '_CIKAN DEFAULT (0),'
      '  BAKIYE AS ([TOPLAM_GIREN]-[TOPLAM_CIKAN]) PERSISTED NOT NULL,'
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
      '  CONSTRAINT PK_AYARLAR_ID PRIMARY KEY CLUSTERED (ID)'
      ')'
      'ON [PRIMARY]'
      'GO')
    Left = 144
    Top = 136
  end
  object q: TUniQuery
    Connection = UniConnTest
    Left = 8
    Top = 136
  end
end
