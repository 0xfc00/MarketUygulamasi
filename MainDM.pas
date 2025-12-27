unit MainDM;

interface

uses
  System.SysUtils,Vcl.Forms, System.Classes, Data.DB, DBAccess, Uni,
  SQLServerUniProvider, Vcl.Dialogs, System.IniFiles, _cons, _vars, MemDS,
  UniProvider, Winapi.Windows, SQLiteUniProvider;

type
  TdmMain = class(TDataModule)
    UniConn: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    qry1: TUniQuery;
    SQLiteUniProvider1: TSQLiteUniProvider;
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

procedure TdmMain.SabitSatirlarKontrol();
var
  q : TUniQuery;
begin
  q := yeniQuery('',false);

  q.sql.text := 'select * from CARI where ID = 0 AND CARIKODU = ''CARISABIT'' and UNVAN = ''CARISABIT''';
  qAcKapa_fn(q);
  if q.IsEmpty then
  begin
    q.append;
    q.FieldByName('ID').asstring        := '0';
    q.FieldByName('CARIKODU').asstring  := 'CARISABIT';
    q.FieldByName('UNVAN').asstring     := 'CARISABIT';
    q.post;
  end;

  q.SQL.text := 'select * from POS where ID = 0 AND POSADI = ''POSSABIT'' ';
  qAcKapa_fn(q);
  if q.IsEmpty then
  begin
    q.append;
    q.FieldByName('ID').asstring     := '0';
    q.FieldByName('POSADI').asstring := 'POSSABIT';
    q.post;
  end;

  q.sql.text := 'select * from CARI where CARIKODU = ' + QuotedStr('PERAKENDE') + ' AND  UNVAN = ' + QuotedStr('PERAKENDE');
  qAcKapa_fn(q);
  if q.IsEmpty then
  begin
    q.append;
    q.FieldByName('CARIKODU').asstring := 'PERAKENDE';
    q.FieldByName('UNVAN').asstring    := 'PERAKENDE';
    q.post;
  end;

  q.SQL.text := 'SELECT * FROM ISLEM_BASLIK WHERE ISLEMTURU = 0 AND ODEMETURU = 0 AND EVRAKNO = ''STOKHARSABIT''';
  qAcKapa_fn(q);
  if q.IsEmpty then
  begin
    q.append;
    q.FieldByName('ISLEMTURU').asstring   := '0';
    q.FieldByName('ODEMETURU').asstring   := '0';
    q.FieldByName('ISLEMTARIHI').asstring := tarihForSqlite(now);
    q.FieldByName('CARIID').asstring      := '0';
    q.FieldByName('POSID').asstring       := '0';
    q.FieldByName('EVRAKNO').asstring     := 'STOKHARSABIT';
    q.post;
  end;



  freeandnil(q);
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
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
      if Ini.ReadString('Database', 'Db', '0') = '0' then
      begin
        if FileExists(ExtractFilePath(ParamStr(0)) + 'db.db') then
        begin
          UniConn.Database := ExtractFilePath(ParamStr(0)) + 'db.db';
          UniConn.ProviderName := 'SQLite';
          a.DB_TIPI := 0;
        end
        else
        begin
          raise Exception.Create('db.db dosyasý yok.');
        end;
      end
      else
      if Ini.ReadString('Database', 'Db', '0') = '1' then
      begin
        UniConn.Server   := Ini.ReadString('Database', 'Server', '');
        UniConn.Database := Ini.ReadString('Database', 'Database', '');

        if Ini.ReadString('Database', 'AuthType', '') = 'Windows Auth' then
        begin
          UniConn.SpecificOptions.Values['Authentication'] := 'auWindows';
        end
        else
        if Ini.ReadString('Database', 'AuthType', '') = 'SQL' then
        begin
          UniConn.SpecificOptions.Values['Authentication'] := 'auServer';
          UniConn.Username := Ini.ReadString('Database', 'Username', '');
          UniConn.Password := DecryptStr(Ini.ReadString('Database', 'Password', ''), 123);
        end;

        UniConn.ProviderName := 'SQL Server';

        a.DB_TIPI := 1;
      end;
    finally
      Ini.Free;
    end;
  end;

  try
    if (Trim(UniConn.Server) = EmptyStr) or (Trim(UniConn.Database) = EmptyStr) then
      raise Exception.Create('Server yada Database bilgisi yok.');
    UniConn.open;

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

  LoginFormAc_fn; //deneme
  //loginUserID := 1; //deneme


  SabitSatirlarKontrol;
  ayarlariYukle;

end;

end.
