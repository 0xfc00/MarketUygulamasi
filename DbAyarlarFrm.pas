unit DbAyarlarFrm;

interface

uses
  System.SysUtils, System.Classes,  windows,  System.IOUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Registry,
  DBAccess, Uni, cxButtons,
  cxDropDownEdit, cxLabel, cxTextEdit,
  System.IniFiles, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  Vcl.Menus, Data.DB, MemDS, cxMaskEdit, dxSkinBasic, dxSkinBlack,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, frmSqlSorguF, UniProvider,
  SQLiteUniProvider, Vcl.ExtCtrls, InterBaseUniProvider, _cons;

type
  TfrmDbAyarlar = class(TForm)
    btnKaydet: TcxButton;
    UniConnTest: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    btnTest: TcxButton;
    Panel1: TPanel;
    cxLabel6: TcxLabel;
    cbDbTipi: TComboBox;
    gbServer: TGroupBox;
    edtServer: TcxTextEdit;
    cxLabel7: TcxLabel;
    edtUser: TcxTextEdit;
    cxLabel9: TcxLabel;
    edtPass: TcxTextEdit;
    cxLabel10: TcxLabel;
    GroupBox1: TGroupBox;
    cxLabel2: TcxLabel;
    edtDatabase: TcxTextEdit;
    procedure btnKaydetClick(Sender: TObject);


    function TestConnection(AShowInfo : boolean = true): boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cbDbTipiChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDbAyarlar: TfrmDbAyarlar;

implementation

{$R *.dfm}

uses _func;

var
  dbOlusturSayac : integer = 0;

procedure TfrmDbAyarlar.btnKaydetClick(Sender: TObject);
var
  Ini: TIniFile;
begin
  if TestConnection then
  begin
    Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'khpro.ini');
    try
      Ini.WriteString('Database', 'Db', cbDbTipi.ItemIndex.ToString);
      Ini.WriteString('Database', 'Server', edtServer.text);
      Ini.WriteString('Database', 'Database', edtdatabase.text);
      Ini.WriteString('Database', 'Username', edtuser.text);
      Ini.WriteString('Database', 'Password', edtPass.text);
    finally
      Ini.Free;
    end;
    close;
  end;
end;

procedure TfrmDbAyarlar.btnTestClick(Sender: TObject);
begin
  TestConnection;
end;

procedure TfrmDbAyarlar.Button4Click(Sender: TObject);
begin
  if TestConnection then
    with TfrmSqlSorgu.create(nil) do
    begin
      q.Connection := UniConnTest;
      showmodal;
      free;
    end;
end;

procedure TfrmDbAyarlar.cbDbTipiChange(Sender: TObject);
begin
  gbServer.visible := cbDbTipi.itemindex = 1;
end;

procedure TfrmDbAyarlar.cxLabel1Click(Sender: TObject);
begin
  if dbOlusturSayac >3 then
  begin
    height := 800;
    GroupBox1.Visible := true;
    edtDatabase.text := 'master';
  end;
  inc(dbOlusturSayac);
end;

procedure TfrmDbAyarlar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmDbAyarlar.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  if  FileExists(ExtractFilePath(ParamStr(0)) + 'khpro.ini') then
  begin
    Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'khpro.ini');
    try
      cbDbTipi.ItemIndex := StrToIntDef(Ini.ReadString('Database', 'Db', '0'), 0);
      edtServer.text   := Ini.ReadString('Database', 'Server', '');
      edtDatabase.text := Ini.ReadString('Database', 'Database', '');
      edtUser.text   := Ini.ReadString('Database', 'Username', '');
      edtPass.text   := Ini.ReadString('Database', 'Password', '');
    finally
      Ini.Free;
    end;
    gbServer.visible := cbDbTipi.itemindex = 1;
  end;
end;

function TfrmDbAyarlar.TestConnection(AShowInfo : boolean = true): boolean;
begin
  UniConntest.ProviderName := 'InterBase';
  UniConntest.Database     := DBFILE;

  if cbDbTipi.ItemIndex = 0 then
  begin
    try showmessage('Yok daha sonra'); exit;  //deneme
      UniConntest.Connect;
      if AShowInfo then ShowMessage('Baðlantý baþarýlý');
      Result := True;
    except
      on E: Exception do
      begin
        if AShowInfo then ShowMessage('Veritabanýna baðlanýlamadý:' + sLineBreak + E.Message);
        Result := false;
      end;
    end;

  end
  else
  begin
    if (Trim(edtServer.text) = EmptyStr) or
       (Trim(edtuser.text) = EmptyStr)   or
       (Trim(edtPass.text) = EmptyStr)
    then
    begin
      ShowMessage('Veritabaný bilgileri eksik');
      exit;
    end;

    UniConntest.Username := edtUser.text;
    UniConntest.Password := edtpass.text;
  end;

  UniConntest.Connected := False;
  UniConntest.Server    := edtServer.text;

  UniConntest.LoginPrompt := False;

  try
    UniConntest.Connect;
    if AShowInfo then ShowMessage('Baðlantý baþarýlý');
    Result := True;
  except
    on E: Exception do
    begin
      if AShowInfo then ShowMessage('Veritabanýna baðlanýlamadý:' + sLineBreak + E.Message);
      Result := false;
    end;

  end;
end;

end.
