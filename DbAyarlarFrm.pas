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
  SQLiteUniProvider;

type
  TfrmDbAyarlar = class(TForm)
    btnKaydet: TcxButton;
    UniConnTest: TUniConnection;
    qCreateDatabase: TUniQuery;
    qCreateTables: TUniQuery;
    q: TUniQuery;
    qryDropTables: TUniQuery;
    qryCreateSp: TUniQuery;
    qryCreateTrigerIslem_baslik: TUniQuery;
    qryCreateTrigerIslem_h: TUniQuery;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
    Button2: TButton;
    Button1: TButton;
    cbDbTipi: TComboBox;
    cxLabel6: TcxLabel;
    GroupBox2: TGroupBox;
    edtServer: TcxTextEdit;
    cxLabel1: TcxLabel;
    edtDatabase: TcxTextEdit;
    cxLabel2: TcxLabel;
    edtusername: TcxTextEdit;
    cxLabel3: TcxLabel;
    edtPassword: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cbAuthType: TcxComboBox;
    btnTest: TcxButton;
    SQLiteUniProvider1: TSQLiteUniProvider;
    procedure btnKaydetClick(Sender: TObject);


    function TestConnection(AShowInfo : boolean = true): boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTestClick(Sender: TObject);
    procedure cbAuthTypePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ExecuteSqlServerScript(const AScript: string);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
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
      Ini.WriteString('Database', 'AuthType', cbAuthType.Text);
      Ini.WriteString('Database', 'Username', edtusername.text);
      Ini.WriteString('Database', 'Password', EncryptStr(edtPassword.text, 123));
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

procedure TfrmDbAyarlar.Button1Click(Sender: TObject);
begin
  if not TDirectory.Exists('c:\KHPRO') then
      TDirectory.CreateDirectory('c:\KHPRO');

  if not TestConnection then exit;
  ExecuteSqlServerScript(qCreateDatabase.sql.text);
  showmessage('DB oluþturuldu');
  button2.Enabled := true;
  edtDatabase.text := 'KHPRO';
end;

procedure TfrmDbAyarlar.Button2Click(Sender: TObject);
begin
  if not TestConnection then exit;
  ExecuteSqlServerScript(qCreateTables.sql.text);
  ExecuteSqlServerScript(qryCreateSp.sql.text);
  ExecuteSqlServerScript(qryCreateTrigerIslem_baslik.sql.text);
  ExecuteSqlServerScript(qryCreateTrigerIslem_h.sql.text);
  showmessage('Tablolar oluþturuldu');
end;

procedure TfrmDbAyarlar.Button3Click(Sender: TObject);
begin
  if not TestConnection then exit;
  ExecuteSqlServerScript(qryDropTables.sql.text);
  showmessage('Tablolar oluþturuldu');
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

procedure TfrmDbAyarlar.cbAuthTypePropertiesChange(Sender: TObject);
begin
  edtusername.Visible := (cbAuthType.ItemIndex = 1);
  edtpassword.Visible := (cbAuthType.ItemIndex = 1);
  cxlabel3.Visible    := (cbAuthType.ItemIndex = 1);
  cxlabel4.Visible    := (cbAuthType.ItemIndex = 1);

end;








procedure TfrmDbAyarlar.cbDbTipiChange(Sender: TObject);
begin
  GroupBox2.Visible := cbDbTipi.ItemIndex = 1;
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
  Memo1.Text := StringReplace(Memo1.Text, 'backup_dirr\',  ExtractFilePath(ParamStr(0)), [rfReplaceAll] );
  Memo1.Text := StringReplace(Memo1.Text, 'app_dirr\',  ExtractFilePath(ParamStr(0)), [rfReplaceAll] );
  Height := 333;
  if  FileExists(ExtractFilePath(ParamStr(0)) + 'khpro.ini') then
  begin
    Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'khpro.ini');
    try
      cbDbTipi.ItemIndex := StrToIntDef(Ini.ReadString('Database', 'Db', '0'), 0);
      edtServer.text   := Ini.ReadString('Database', 'Server', '');
      edtDatabase.text := Ini.ReadString('Database', 'Database', '');

      if Ini.ReadString('Database', 'AuthType', '') = 'Windows Auth' then
        cbAuthType.itemindex := 0
      else
        cbAuthType.itemindex := 1;

      edtusername.text   := Ini.ReadString('Database', 'Username', '');
      edtPassword.text   := DecryptStr(Ini.ReadString('Database', 'Password', ''), 123);
    finally
      Ini.Free;
    end;
  end;
end;

procedure TfrmDbAyarlar.Memo1DblClick(Sender: TObject);
begin
  q.sql := memo1.lines;
  q.Execute;
  showmessage('Baþarýlý..');
end;

function TfrmDbAyarlar.TestConnection(AShowInfo : boolean = true): boolean;
begin
  if cbDbTipi.ItemIndex = 0 then
  begin
    UniConntest.ProviderName := 'SQLite';
    UniConntest.Database     := ExtractFilePath(ParamStr(0)) + 'db.db';

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

  end
  else
  begin
    if (Trim(edtServer.text) = EmptyStr)
      // or (Trim(edtDatabase.text) = EmptyStr)
    then
    begin
      ShowMessage('Veritabaný bilgileri eksik');
      exit;
    end;

    if cbAuthType.ItemIndex = 1 then
    begin
      if (Trim(edtusername.text) = EmptyStr) or
         (Trim(edtPassword.text) = EmptyStr)
      then
      begin
        ShowMessage('Veritabaný bilgileri eksik');
        exit;
      end;
    end;


    UniConntest.Connected := False;
    UniConntest.ProviderName := 'SQL Server';
    UniConntest.Server   := edtServer.text;
    UniConntest.Database := edtDatabase.text;

    if cbAuthType.ItemIndex = 0 then
    begin
      // Windows Authentication
      UniConntest.Username := '';
      UniConntest.Password := '';
      UniConntest.SpecificOptions.Values['Authentication'] := 'auWindows';
    end
    else
    begin
      // SQL Server Authentication
      UniConntest.Username := edtusername.text;
      UniConntest.Password := edtpassword.text;
      UniConntest.SpecificOptions.Values['Authentication'] := 'auServer';
    end;

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
end;

procedure TfrmDbAyarlar.ExecuteSqlServerScript(const AScript: string);
var
  SL, Batch: TStringList;
  i: Integer;
begin
  SL := TStringList.Create;
  Batch := TStringList.Create;
  try
    SL.Text := AScript;

    for i := 0 to SL.Count - 1 do
    begin
      if SameText(Trim(SL[i]), 'GO') then
      begin
        if Batch.Text.Trim <> '' then
        begin
          q.SQL.Text := Batch.Text;
          q.ExecSQL;
          Batch.Clear;
        end;
      end
      else
        Batch.Add(SL[i]);
    end;

    if Batch.Text.Trim <> '' then
    begin
      q.SQL.Text := Batch.Text;
      q.ExecSQL;
    end;

  finally
    SL.Free;
    Batch.Free;
  end;
end;


end.
