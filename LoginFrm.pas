unit LoginFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxTextEdit, dxGDIPlusClasses, cxImage, MainDM, dxBevel, Data.DB,
  MemDS, DBAccess, Uni, cxDBEdit, Vcl.DBCtrls;

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

  with yeniQuery('select * from USERS')do
  begin
    if IsEmpty then
    begin
      sqlCalistir('INSERT INTO dbo.USERS (KULLANICI, YONETICI, SIFRE) VALUES (''ADMIN'', 1, 1)');
      close;
      open;
    end;
    First;
    while not eof  do
    begin
      cbUserName.Properties.Items.Add(FieldByName('KULLANICI').AsString);
      Next;
    end;
    Free;
  end;
  cbUserName.ItemIndex := 0;
end;

end.
