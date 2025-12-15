unit DbAyarlarFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlue, Vcl.Menus, Data.DB, DBAccess, Uni, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxTextEdit,
  System.IniFiles, MemDS;

type
  TfrmDbAyarlar = class(TForm)
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
    btnKaydet: TcxButton;
    UniConnTest: TUniConnection;
    Button2: TButton;
    Button1: TButton;
    qCreateDatabase: TUniQuery;
    qCreateTables: TUniQuery;
    q: TUniQuery;
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
  showmessage('Tablolar oluþturuldu');
end;

procedure TfrmDbAyarlar.cbAuthTypePropertiesChange(Sender: TObject);
begin
  edtusername.Visible := (cbAuthType.ItemIndex = 1);
  edtpassword.Visible := (cbAuthType.ItemIndex = 1);
  cxlabel3.Visible    := (cbAuthType.ItemIndex = 1);
  cxlabel4.Visible    := (cbAuthType.ItemIndex = 1);

end;

procedure TfrmDbAyarlar.cxLabel1Click(Sender: TObject);
begin
  if dbOlusturSayac >5 then
  begin
    button1.Visible := true;
    button2.Visible := true;
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

function TfrmDbAyarlar.TestConnection(AShowInfo : boolean = true): boolean;
begin
  if (Trim(edtServer.text) = EmptyStr) or
     (Trim(edtDatabase.text) = EmptyStr)
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
