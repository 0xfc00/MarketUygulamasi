unit YeniCariKartFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, dxSkinsCore, dxSkinBlue,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, Data.DB, MemDS,
  DBAccess, Uni, cxGroupBox, MainDM, cxLabel, cxMemo, cxDBEdit, cxSpinEdit,
  cxCheckBox, cxCalc, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, STRUTils, Main,
  _func, _cons;

type
  TfrmYeniCariKart = class(TfrmKartBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnKaydet: TcxButton;
    btnKaydetVeYeni: TcxButton;
    btnSil: TcxButton;
    cxGroupBox1: TcxGroupBox;
    qryCari: TUniQuery;
    dsCari: TDataSource;
    cxLabel1: TcxLabel;
    edtCariKodu: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    edtCariAdi: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cbMusteriTedarikci: TcxRadioButton;
    cbTedarikci: TcxRadioButton;
    cbMusteri: TcxRadioButton;
    cxGroupBox5: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGroupBox6: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGroupBox8: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxGroupBox9: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxGroupBox10: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxGroupBox11: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxGroupBox12: TcxGroupBox;
    cxLabel11: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxGroupBox13: TcxGroupBox;
    cxLabel12: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxGroupBox14: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxGroupBox15: TcxGroupBox;
    cxLabel14: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxGroupBox16: TcxGroupBox;
    cxLabel15: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxGroupBox18: TcxGroupBox;
    cxLabel17: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxGroupBox19: TcxGroupBox;
    cxLabel18: TcxLabel;
    cxDBTextEdit33: TcxDBTextEdit;
    cxGroupBox20: TcxGroupBox;
    cxLabel19: TcxLabel;
    cxDBTextEdit38: TcxDBTextEdit;
    cxGroupBox21: TcxGroupBox;
    cxLabel20: TcxLabel;
    cxDBTextEdit39: TcxDBTextEdit;
    cxGroupBox17: TcxGroupBox;
    cxLabel16: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxGroupBox22: TcxGroupBox;
    cxLabel21: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxGroupBox23: TcxGroupBox;
    cxLabel22: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxGroupBox24: TcxGroupBox;
    cxLabel23: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxGroupBox25: TcxGroupBox;
    cxLabel24: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxGroupBox26: TcxGroupBox;
    cxLabel25: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxGroupBox7: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    qryCariGrupLook: TUniQuery;
    dsCariGrupLook: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    btnYeniCariGrup: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure YeniKayitIcinHazirla();
    procedure CariKartiGetir();
    procedure btnKaydetClick(Sender: TObject);
    procedure btnKaydetVeYeniClick(Sender: TObject);
    procedure btnSilClick(Sender: TObject);
    procedure qryCariBeforePost(DataSet: TDataSet);
    procedure btnYeniCariGrupClick(Sender: TObject);
  private
    { Private declarations }
  public
    CariID : string;
    { Public declarations }

  end;

var
  frmYeniCariKart: TfrmYeniCariKart;


implementation

{$R *.dfm}

uses TanimlarFrm;


procedure TfrmYeniCariKart.YeniKayitIcinHazirla();
begin
  if not ContainsText(qryCari.SQL.Text, 'where 1=0') then
    qryCari.SQL.add(' where 1=0');

  btnSil.visible          := False;
  btnKaydetVeYeni.visible := true;
  qAcKapa_fn(qryCari);
  qryCari.Append;
  edtCariAdi.SetFocus;
end;

procedure TfrmYeniCariKart.btnKaydetClick(Sender: TObject);
begin
  inherited;
  if not (qryCari.State in [dsEdit,dsInsert]) then
    qryCari.edit;

  qryCari.Post;
  MesajBilgi('Kayýt baþarýlý..');
  if Sender = btnKaydet then
    Close;
end;

procedure TfrmYeniCariKart.btnKaydetVeYeniClick(Sender: TObject);
begin
  inherited;
  btnKaydetClick(Self);
  YeniKayitIcinHazirla;
end;

procedure TfrmYeniCariKart.btnSilClick(Sender: TObject);
begin
  inherited;
  if CariIdKartiSil_fn(qryCari.FieldByName('ID').AsString) then
    close;
end;

procedure TfrmYeniCariKart.btnYeniCariGrupClick(Sender: TObject);
var
  mForm : TfrmTanimlar;
begin
  inherited;
  Application.CreateForm(TfrmTanimlar, mForm);
  mForm.pc.ActivePageIndex := 4;
  mForm.ShowModal;
  qAcKapa_fn(qryCariGrupLook);
end;

procedure TfrmYeniCariKart.CariKartiGetir();
begin
  qryCari.SQL.Text := 'select * from CARI where ID = :id';
  qryCari.ParamByName('ID').AsString := CariID;

  edtCariKodu.Enabled     := False;
  btnSil.visible          := true;
  btnKaydetVeYeni.visible := False;
  qAcKapa_fn(qryCari);

  case qryCari.FieldByName('TIPI').AsInteger of
    Ord(CT_MUSTERI)            : cbMusteri.Checked           := True;
    Ord(CT_TEDARIKCI)          : cbTedarikci.Checked         := True;
    Ord(CT_MUSTERITEDARIKCI)   : cbMusteriTedarikci.Checked  := True;
  end;
end;

procedure TfrmYeniCariKart.btnKapatClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmYeniCariKart.FormCreate(Sender: TObject);
begin
  inherited;
  qryCari.Connection          := dmMain.UniConn;
  qryCariGrupLook.Connection := dmMain.UniConn;

  if qryCariGrupLook.Active = False then
    qryCariGrupLook.Open;
  end;

procedure TfrmYeniCariKart.FormShow(Sender: TObject);
begin
inherited;
  pnlHeader.color :=clGreen;
  if CariID = EmptyStr then
  begin
    YeniKayitIcinHazirla;
    pnlHeader.Caption := '   CARÝ KART  -  Yeni kayýt';
  end
  else
  begin
    CariKartiGetir;
    pnlHeader.Caption := '   CARÝ KART  -  Düzenle';
  end;
end;

procedure TfrmYeniCariKart.qryCariBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(edtCariAdi.Text) = EmptyStr then
  begin
    MesajHata('Cari adý girilmedi..');
    edtCariAdi.SetFocus;
    Abort;
    Exit;
  end;

  if CariID = EmptyStr then
  begin
    if CariKoduVarmi_fn(trim(edtCariKodu.Text)) then
    begin
      MesajHata('Bu cari kodu zaten kayýtlý..');
      edtCariKodu.SetFocus;
      edtCariKodu.SelectAll;
      Abort;
      Exit;
    end;

    if CariAdiVarmi_fn(trim(edtCariAdi.Text)) then
    begin
      MesajHata('Bu cari adý zaten kayýtlý..');
      edtCariAdi.SetFocus;
      edtCariAdi.SelectAll;
      Abort;
      Exit;
    end;

    if trim(edtCariKodu.Text) = EmptyStr then
      DataSet.FieldByName('CARIKODU').AsString := 'CR' + GenerateRandomNumbers(6);
  end;

  if cbMusteri.Checked          then DataSet.FieldByName('TIPI').AsInteger := Ord(CT_MUSTERI);
  if cbTedarikci.Checked        then DataSet.FieldByName('TIPI').AsInteger := Ord(CT_TEDARIKCI);
  if cbMusteriTedarikci.Checked then DataSet.FieldByName('TIPI').AsInteger := Ord(CT_MUSTERITEDARIKCI);

  ekleyenDegistiren(DataSet);
end;

end.
