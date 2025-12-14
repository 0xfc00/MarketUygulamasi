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
    cbUserName: TcxDBComboBox;
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnkaydetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses _vars, Main;

procedure TfrmLogin.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLogin.btnkaydetClick(Sender: TObject);
begin
  if edtPassword.text = UniQuery.FieldByName('SIFRE').AsString then
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
  UniQuery.Connection := dmMain.UniConn;
  UniQuery.open;
end;

end.
