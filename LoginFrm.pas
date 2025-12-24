unit LoginFrm;

interface

uses
  System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxContainer,
  cxButtons, Vcl.ExtCtrls, cxDropDownEdit,
  cxLabel, cxTextEdit, cxImage, MainDM, dxBevel, Data.DB,
  DBAccess, Uni, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxEdit, dxSkinsCore, dxSkinBlue, Vcl.Menus, MemDS, cxMaskEdit, Vcl.StdCtrls,
  dxGDIPlusClasses, dxSkinBasic, dxSkinBlack, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmLogin = class(TForm)
    cxImage1: TcxImage;
    edtPassword: TcxTextEdit;
    cxLabel1: TcxLabel;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnkaydet: TcxButton;
    DataSource: TDataSource;
    UniQuery: TUniQuery;
    cxLabel2: TcxLabel;
    dxBevel1: TdxBevel;
    cbUserName: TcxComboBox;
    btnDbAyar: TcxButton;
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnkaydetClick(Sender: TObject);
    Function LoginKontrol(AKullaniciAdi, ASifre : string) : boolean;
    procedure btnDbAyarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses _vars, Main, _func, DbAyarlarFrm;

procedure TfrmLogin.btnDbAyarClick(Sender: TObject);
begin
  application.createform(TfrmDbAyarlar,frmDbAyarlar);
  frmDbAyarlar.showmodal;
end;

procedure TfrmLogin.btnKapatClick(Sender: TObject);
begin
  close;
end;

Function TfrmLogin.LoginKontrol(AKullaniciAdi, ASifre : string) : boolean;
begin
  UniQuery.ParamByName('KULLANICI').AsString := AKullaniciAdi;
  UniQuery.ParamByName('SIFRE').AsString := ASifre;
  qAcKapa_fn(UniQuery);

  Result := UniQuery.RecordCount >0;
end;

procedure TfrmLogin.btnkaydetClick(Sender: TObject);
begin
  if LoginKontrol(cbUserName.text, edtPassword.text) then
  begin
    loginSuccess := True;
    loginUserID  := UniQuery.FieldByName('ID').asinteger;
    loginUserAdi := UniQuery.FieldByName('KULLANICI').AsString;
    Close;
  end
  else
  begin
    MesajHata('Þifre Hatalý..');
    edtPassword.SetFocus;
    edtPassword.SelectAll;
  end;

end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  if dmMain.UniConn.Connected = false then
    halt;

  UniQuery.Connection := dmMain.UniConn;

  cbUserName.Properties.Items.Clear;

  try
    with yeniQuery('select * from USERS')do
    begin
      if IsEmpty then
      begin
        sqlCalistir('INSERT INTO dbo.USERS (KULLANICI, YONETICI, SIFRE) VALUES (''ADMIN'', 1, '''')');
        close;
        open;
      end;

      First;
      while not eof  do
      begin
        cbUserName.Properties.Items.Add(FieldByName('KULLANICI').AsString);
        Next;
      end;

      close;
      sql.text := 'select * from USERS where  KULLANICI = ''ADMIN'' ';
      open;
      edit;
      FieldByName('YONETICI').asboolean := true;
      post;

      Free;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Veritabanýna baðlanýlamadý:' + sLineBreak + E.Message);
      halt;
    end;
  end;
  cbUserName.ItemIndex := 0;
end;

end.
