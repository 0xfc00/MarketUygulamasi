unit DbAyarlarFrm;

interface

uses
  System.SysUtils, System.Classes,  windows,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  FireDAC.Comp.Client, cxButtons,
  cxLabel, cxTextEdit,
  System.IniFiles,

















  frmSqlSorguF,



  cxPC,
  Vcl.ExtCtrls, FireDAC.Phys.MSSQL, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Phys.ODBCBase, Data.DB;

type
  TfrmDbAyarlar = class(TForm)
    GroupBox1: TGroupBox;
    btnTablolariKaldir: TButton;
    btnQryEditor: TButton;
    btnTablolariOlustur: TButton;
    btnDbOlustur: TButton;
    UniConnTest: TFDConnection;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    mmDbOlustur: TMemo;
    cxTabSheet2: TcxTabSheet;
    mmTablolariOlustur: TMemo;
    cxTabSheet3: TcxTabSheet;
    mmtablolariKaldir: TMemo;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    edtServer: TcxTextEdit;
    cxLabel1: TcxLabel;
    edtDatabase: TcxTextEdit;
    cxLabel2: TcxLabel;
    edtusername: TcxTextEdit;
    cxLabel3: TcxLabel;
    edtPassword: TcxTextEdit;
    cxLabel4: TcxLabel;
    btnTest: TcxButton;
    btnKaydet: TcxButton;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    q: TFDCommand;
    cxTabSheet4: TcxTabSheet;
    mmRestoreDb: TMemo;
    btnRestoreDb: TButton;
    procedure btnKaydetClick(Sender: TObject);


    function TestConnection(): boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
    procedure btnDbOlusturClick(Sender: TObject);
    procedure btnTablolariOlusturClick(Sender: TObject);
    procedure ExecuteSqlServerScript(const AScript: string);
    procedure btnTablolariKaldirClick(Sender: TObject);
    procedure btnQryEditorClick(Sender: TObject);
    procedure btnRestoreDbClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDbAyarlar: TfrmDbAyarlar;

implementation

{$R *.dfm}

uses _func, MainDM, _cons;

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
  if TestConnection then showmessage('Baðlantý baþarýlý..');
end;



procedure TfrmDbAyarlar.btnDbOlusturClick(Sender: TObject);
begin
//  if not TDirectory.Exists('c:\KHPRO') then
//      TDirectory.CreateDirectory('c:\KHPRO');

  if not TestConnection then exit;
  ExecuteSqlServerScript(mmDbOlustur.lines.text);
  showmessage('DB oluþturuldu');
  edtDatabase.text := 'KHPRO';
end;

procedure TfrmDbAyarlar.btnTablolariOlusturClick(Sender: TObject);
begin
  if not TestConnection then exit;
  ExecuteSqlServerScript(mmTablolariOlustur.lines.text);

  showmessage('Tablolar oluþturuldu');
end;

procedure TfrmDbAyarlar.btnTablolariKaldirClick(Sender: TObject);
begin
  if not TestConnection then exit;
  ExecuteSqlServerScript(mmtablolariKaldir.lines.text);
  showmessage('Tablolar kaldýrýldý..');
end;

procedure TfrmDbAyarlar.btnQryEditorClick(Sender: TObject);
begin
  if TestConnection then
    with TfrmSqlSorgu.create(nil) do
    begin
      q.Connection := UniConnTest;
      showmodal;
      free;
    end;
end;

procedure TfrmDbAyarlar.btnRestoreDbClick(Sender: TObject);
begin
  if not TestConnection then exit;
  ExecuteSqlServerScript(mmRestoreDb.lines.text);
  showmessage('Yedekten geri yükleme yapýldý..');
end;

procedure TfrmDbAyarlar.cxLabel1Click(Sender: TObject);
begin
  if dbOlusturSayac >3 then
  begin
    GroupBox1.Visible := true;
    edtDatabase.text := 'master';
    Height := 600;
    Width := 1000;
  end;
  inc(dbOlusturSayac);
end;

procedure TfrmDbAyarlar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  ExitProcess(0);
end;

procedure TfrmDbAyarlar.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  FDPhysMSSQLDriverLink1.VendorLib := '';

  mmDbOlustur.Text := StringReplace(mmDbOlustur.Text, 'dbdb_dirr\',  DBDIR, [rfReplaceAll] );
  mmRestoreDb.Text := StringReplace(mmRestoreDb.Text, 'C:\Backup\yedek.bak',  ExtractFilePath(ParamStr(0)) + 'yedek.bak', [rfReplaceAll] );



  if  FileExists(ExtractFilePath(ParamStr(0)) + 'khpro.ini') then
  begin
    Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'khpro.ini');
    try
      edtServer.text   := Ini.ReadString('Database', 'Server', '');
      edtDatabase.text := Ini.ReadString('Database', 'Database', '');
      edtusername.text   := Ini.ReadString('Database', 'Username', '');
      edtPassword.text   := DecryptStr(Ini.ReadString('Database', 'Password', ''), 123);
    finally
      Ini.Free;
    end;
  end;
end;

function TfrmDbAyarlar.TestConnection(): boolean;
begin
  if (Trim(edtDatabase.text) = EmptyStr) then
    edtDatabase.text := 'master';

  result := SetupMSSQLConnection(
                      UniConntest,
                      edtServer.text,
                      edtDatabase.text,
                      edtusername.text,
                      edtpassword.text,
                      ( (trim(edtusername.text) = EmptyStr) and (trim(edtpassword.text) = EmptyStr) )
                       );
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
          q.CommandText.text := Batch.Text;
          q.OpenOrExecute;
          Batch.Clear;
        end;
      end
      else
        Batch.Add(SL[i]);
    end;

    if Batch.Text.Trim <> '' then
    begin
      q.CommandText.text := Batch.Text;
      q.OpenOrExecute;
    end;

  finally
    SL.Free;
    Batch.Free;
  end;
end;


end.
