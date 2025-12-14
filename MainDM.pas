unit MainDM;

interface

uses
  System.SysUtils,Vcl.Forms, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  SQLServerUniProvider, MemDS, Vcl.Dialogs, System.IniFiles;

type
  TdmMain = class(TDataModule)
    UniConn: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    qry1: TUniQuery;
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

uses Main, DbAyarlarFrm, _func;

{$R *.dfm}

procedure TdmMain.DataModuleCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
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
    finally
      Ini.Free;
    end;
  end;

  try
    UniConn.open;
  except
    on E: Exception do
    begin
      ShowMessage('Veritabanýna baðlanýlamadý:' + sLineBreak + E.Message);
      application.createform(TfrmDbAyarlar,frmDbAyarlar);
      frmDbAyarlar.showmodal;
    end;
  end;

  LoginFormAc_fn; //deneme
end;

end.
