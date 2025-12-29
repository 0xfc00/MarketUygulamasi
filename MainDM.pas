unit MainDM;

interface



uses
  System.SysUtils,Vcl.Forms, System.Classes, Data.DB, FireDAC.Comp.Client,System.IOUtils,
  Vcl.Dialogs, System.IniFiles, _cons, _vars,
  Winapi.Windows, FireDAC.Stan.Intf,




  FireDAC.Phys.MSSQL, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.ODBCBase;

  function SetupMSSQLConnection(AConn: TFDConnection; const AServer, ADatabase, AUser, APassword: string; AUseWindowsAuth: Boolean ): boolean;

type
  TdmMain = class(TDataModule)
    UniConn: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    qry1: TFDQuery;
    procedure SabitSatirlarKontrol();
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DbAyarlarFrm, _func, Main;

{$R *.dfm}

function SetupMSSQLConnection(
  AConn: TFDConnection;
  const AServer, ADatabase, AUser, APassword: string;
  AUseWindowsAuth: Boolean
) : boolean;
begin
  result := false;
  AConn.Close;
  AConn.Params.Clear;

  AConn.Params.DriverID := 'MSSQL';
  AConn.Params.Add('Server=' + AServer);
  AConn.Params.Add('Database=' + ADatabase);
//  AConn.Params.Add('AttachDbFileName=' + DBFILE);

  if AUseWindowsAuth then
    AConn.Params.Add('OSAuthent=Yes')
  else
  begin
    AConn.Params.Add('User_Name=' + AUser);
    AConn.Params.Add('Password=' + APassword);
  end;

  AConn.LoginPrompt := False;

  try
    AConn.Connected := True;
    result := true;
  except
    on E: Exception do
      ShowMessage('DB Baðlantý Hatasý: ' + E.Message);
  end;
end;

procedure TdmMain.SabitSatirlarKontrol();
var
  q : TFDQuery;
  HataList : string;
begin
  HataList := '';
  q := yeniQuery('',false);
                        
  try
    q.sql.text := 'select * from USERS where  KULLANICI = ''ADMIN'' ';
    qAcKapa_fn(q);
    if q.IsEmpty then q.append else q.edit;

    q.FieldByName('KULLANICI').asstring  := 'ADMIN';
    q.FieldByName('YONETICI').asboolean  := true;
    q.post;
  except
    on E: Exception do
    HataList := HataList + sLineBreak + e.Message;
  end;


  try
    q.sql.text := 'select * from CARI where CARIKODU = ''CARISABIT'' and UNVAN = ''CARISABIT''';
    qAcKapa_fn(q);
    if q.IsEmpty then
    begin
      q.append;
      q.FieldByName('CARIKODU').asstring  := 'CARISABIT';
      q.FieldByName('UNVAN').asstring     := 'CARISABIT';
      q.post;
    end;
    a.SABITCARIID := q.FieldByName('ID').asstring;
  except
    on E: Exception do
    HataList := HataList + sLineBreak + e.Message;
  end;

  try
    q.SQL.text := 'select * from POS where POSADI = ''POSSABIT'' ';
    qAcKapa_fn(q);
    if q.IsEmpty then
    begin
      q.append;
      q.FieldByName('POSADI').asstring := 'POSSABIT';
      q.post;
    end;
    a.SABITPOSID := q.FieldByName('ID').asstring;
  except
    on E: Exception do
    HataList := HataList + sLineBreak + e.Message;
  end;

  try
    q.sql.text := 'select * from CARI where CARIKODU = ' + QuotedStr('PERAKENDE') + ' AND  UNVAN = ' + QuotedStr('PERAKENDE');
    qAcKapa_fn(q);
    if q.IsEmpty then
    begin
      q.append;
      q.FieldByName('CARIKODU').asstring := 'PERAKENDE';
      q.FieldByName('UNVAN').asstring    := 'PERAKENDE';
      q.post;
    end;
  except
    on E: Exception do
    HataList := HataList + sLineBreak + e.Message;

  end;

  try
    q.SQL.text := 'SELECT * FROM ISLEM_BASLIK WHERE ISLEMTURU = 0 AND ODEMETURU = 0 AND EVRAKNO = ''STOKHARSABIT''';
    qAcKapa_fn(q);
    if q.IsEmpty then
    begin
      q.append;
      q.FieldByName('ISLEMTURU').asstring   := '0';
      q.FieldByName('ODEMETURU').asstring   := '0';
      q.FieldByName('ISLEMTARIHI').AsDateTime := (now);
      q.FieldByName('CARIID').asstring      := a.SABITCARIID;
      q.FieldByName('POSID').asstring       := a.SABITPOSID;
      q.FieldByName('EVRAKNO').asstring     := 'STOKHARSABIT';
      q.post;
    end;
  except
    on E: Exception do
    HataList := HataList + sLineBreak + e.Message;
  end;

  if HataList <> EmptyStr then
    MesajHata('Yükleme hatalarý : ' + sLineBreak + HataList);

  freeandnil(q);
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
var
  Ini: TIniFile;
  Server,Database,Username,Password : string;
begin
  FDPhysMSSQLDriverLink1.VendorLib := '';

  DBDIR := ExtractFilePath(ParamStr(0)) + 'data\';
  DBFILE := ExtractFilePath(ParamStr(0)) + 'data\KHPRO.mdf';

  if not TDirectory.Exists(DBDIR) then
    TDirectory.CreateDirectory(DBDIR);


  if UniConn.Connected then
    showmessage('UniConn açýk');  //deneme
  UniConn.close;

  if not FileExists(ExtractFilePath(ParamStr(0)) + 'khpro.ini') then
  begin
    application.createform(TfrmDbAyarlar,frmDbAyarlar);
    frmDbAyarlar.showmodal;
  end
  else
  begin
    Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'khpro.ini');
    try
      Server   := Ini.ReadString('Database', 'Server', '');
      Database := Ini.ReadString('Database', 'Database', '');
      Username := Ini.ReadString('Database', 'Username', '');
      Password := DecryptStr(Ini.ReadString('Database', 'Password', ''), 123);
    finally
      Ini.Free;
    end;
  end;

  try
    if (Trim(Server) = EmptyStr) or (trim(Database) = EmptyStr) then
      raise Exception.Create('Server yada Database bilgisi yok.');

    if not SetupMSSQLConnection(
                      UniConn,
                      Server,
                      Database,
                      Username,
                      Password,
                      ( (trim(Username) = EmptyStr) and (trim(Password) = EmptyStr) )
                       )
    then
      raise Exception.Create('');

    with  yeniQuery('select ID from AYARLAR',TRUE) DO
    begin
      if FieldByName('ID').AsString = '' then
        FREE;
    end;

  except
    on E: Exception do
    begin
      ShowMessage('Veritabanýna baðlanýlamadý:' + sLineBreak + E.Message);
      application.createform(TfrmDbAyarlar,frmDbAyarlar);
      frmDbAyarlar.showmodal;
      ExitProcess(0);
    end;
  end;

  SabitSatirlarKontrol;
  ayarlariYukle;

  LoginFormAc_fn; //deneme
  //loginUserID := 1; //deneme





end;

end.
