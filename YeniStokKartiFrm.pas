unit YeniStokKartiFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni,
  cxContainer,
  cxDBEdit,
  cxDropDownEdit, cxTextEdit, Vcl.ComCtrls,
  cxDBLookupComboBox, dxBevel, Vcl.Menus, cxButtons, StrUtils,
  dxShellDialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxEdit, dxSkinsCore, dxSkinBlue, cxImage, cxLookupEdit, cxDBLookupEdit,
  cxMaskEdit, cxCalendar;

type
  TfrmYeniStokKarti = class(TfrmKartBase)
    qryStok: TUniQuery;
    dsStok: TDataSource;
    pc: TPageControl;
    shStok: TTabSheet;
    Label1: TLabel;
    edtStokKodu: TcxDBTextEdit;
    Label3: TLabel;
    edtBarkod: TcxDBTextEdit;
    Label2: TLabel;
    edtStokAdi: TcxDBTextEdit;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label7: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label8: TLabel;
    imgStokResim: TcxDBImage;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    dxBevel1: TdxBevel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    btnKaydet: TcxButton;
    btnKaydetVeYeni: TcxButton;
    btnSil: TcxButton;
    Label9: TLabel;
    dsMarkaLook: TDataSource;
    qryMarkaLook: TUniQuery;
    dsBirimLook: TDataSource;
    qryBirimLook: TUniQuery;
    dsGrupLook: TDataSource;
    qryGrupLook: TUniQuery;
    dsRafLook: TDataSource;
    qryRafLook: TUniQuery;
    cbxTeraziTip: TcxComboBox;
    opFileDlg: TdxOpenFileDialog;
    pmResimSil: TPopupMenu;
    Sil1: TMenuItem;
    btnYeniMarka: TcxButton;
    btnYeniBirim: TcxButton;
    btnYeniGrup: TcxButton;
    btnYeniRafTanim: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure imgStokResimDblClick(Sender: TObject);
    procedure Sil1Click(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure YeniKayitIcinHazirla();
    procedure StokKartiGetir();
    procedure FormShow(Sender: TObject);
    procedure btnKaydetVeYeniClick(Sender: TObject);
    procedure qryStokBeforePost(DataSet: TDataSet);
    procedure btnSilClick(Sender: TObject);
    procedure btnYeniMarkaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StokID : string;
  end;

var
  frmYeniStokKarti: TfrmYeniStokKarti;

implementation

{$R *.dfm}

uses
  MainDM,Main, TanimlarFrm;

procedure TfrmYeniStokKarti.YeniKayitIcinHazirla();
begin
  if not ContainsText(qryStok.SQL.Text, 'where 1=0') then
    qryStok.SQL.add(' where 1=0');

  btnSil.visible          := False;
  btnKaydetVeYeni.visible := true;
  qAcKapa_fn(qryStok);
  qryStok.Append;
  cbxTeraziTip.ItemIndex := 0;
  edtStokAdi.SetFocus;
end;

procedure TfrmYeniStokKarti.StokKartiGetir();
begin
  qryStok.SQL.Text := 'select * from STOK where ID = :id';
  qryStok.ParamByName('id').AsString := StokID;

  edtStokKodu.Enabled     := False;
  btnSil.visible          := true;
  btnKaydetVeYeni.visible := False;
  qAcKapa_fn(qryStok);

  cbxTeraziTip.ItemIndex := qryStok.FieldByName('TERAZITIP').AsInteger;
end;

procedure TfrmYeniStokKarti.btnKapatClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmYeniStokKarti.imgStokResimDblClick(Sender: TObject);
begin
  inherited;
  if not (qryStok.State in [dsedit,dsinsert]) then exit;

  if opFileDlg.Execute then
  begin
    try
      (qryStok.FieldByName('RESIM') as TBlobField).LoadFromFile(opFileDlg.FileName);
      except on E: Exception do
      MesajHata('Seçilen resim uygun formatta deðil..');
    end;
  end;
end;

procedure TfrmYeniStokKarti.qryStokBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(edtStokAdi.Text) = EmptyStr then
  begin
    MesajHata('Ürün adý girilmedi..');
    edtStokAdi.SetFocus;
    Abort;
    Exit;
  end;

  if StokID = EmptyStr then
  begin
    if trim(edtStokKodu.Text) = EmptyStr then
      if trim(edtBarkod.Text) <> EmptyStr then
        DataSet.FieldByName('STOKKODU').AsString := edtBarkod.Text
      else
      begin
        DataSet.FieldByName('BARKOD').AsString   := GenerateRandomNumbers(11);
        DataSet.FieldByName('STOKKODU').AsString := 'ST' + DataSet.FieldByName('BARKOD').AsString;
      end;

    if StokKoduVarmi_fn(trim(edtStokKodu.Text)) then
    begin
      MesajHata('Bu stok kodu zaten kayýtlý..');
      edtStokKodu.SetFocus;
      edtStokKodu.SelectAll;
      Abort;
      Exit;
    end;

    if StokAdiVarmi_fn(trim(edtStokAdi.Text)) then
    begin
      MesajHata('Bu ürün adý zaten kayýtlý..');
      edtStokAdi.SetFocus;
      edtStokadi.SelectAll;
      Abort;
      Exit;
    end;

    if StokBarkodVarmi_fn(trim(edtBarkod.Text)) then
    begin
      MesajHata('Bu barkod no zaten kayýtlý..');
      edtBarkod.SetFocus;
      edtBarkod.SelectAll;
      Abort;
      Exit;
    end;

  end;



  DataSet.FieldByName('TERAZITIP').AsInteger := cbxTeraziTip.ItemIndex;
end;

procedure TfrmYeniStokKarti.Sil1Click(Sender: TObject);
begin
  inherited;
  if not (qryStok.State in [dsedit,dsinsert]) then exit;
  TBlobField(qryStok.FieldByName('RESIM')).Clear;
end;

procedure TfrmYeniStokKarti.btnKaydetClick(Sender: TObject);
begin
  inherited;
  if not (qryStok.State in [dsEdit,dsInsert]) then
    qryStok.edit;

  qryStok.Post;
  MesajBilgi('Kayýt baþarýlý..');
  if Sender = btnKaydet then
    Close;
end;

procedure TfrmYeniStokKarti.btnKaydetVeYeniClick(Sender: TObject);
begin
  inherited;
  btnKaydetClick(Self);
  YeniKayitIcinHazirla;
end;

procedure TfrmYeniStokKarti.btnSilClick(Sender: TObject);
begin
  inherited;
  if StokIdKartiSil_fn(qryStok.FieldByName('ID').AsString) then
    close;
end;

procedure TfrmYeniStokKarti.btnYeniMarkaClick(Sender: TObject);
var
  mForm : TfrmTanimlar;
begin
  inherited;
  Application.CreateForm(TfrmTanimlar, mForm);

  mForm.pc.tag := 1;

       if Sender = btnYeniBirim    then  mForm.pc.ActivePageIndex := 0
  else if Sender = btnYeniGrup     then  mForm.pc.ActivePageIndex := 1
  else if Sender = btnYeniMarka    then  mForm.pc.ActivePageIndex := 2
  else if Sender = btnYeniRafTanim then  mForm.pc.ActivePageIndex := 3;

  mForm.ShowModal;

       if Sender = btnYeniBirim    then  qAcKapa_fn(qryBirimLook)
  else if Sender = btnYeniGrup     then  qAcKapa_fn(qryGrupLook)
  else if Sender = btnYeniMarka    then  qAcKapa_fn(qryMarkaLook)
  else if Sender = btnYeniRafTanim then  qAcKapa_fn(qryRafLook);
end;

procedure TfrmYeniStokKarti.FormCreate(Sender: TObject);
var
  i : integer;
begin
  inherited;


  for I := 0 to ComponentCount-1 do
    if Components[i] is TUniQuery then
    begin
      TUniQuery(Components[i]).Connection := dmMain.UniConn;

      if Components[i].Tag = 0 then
        TUniQuery(Components[i]).Open;
    end;

end;

procedure TfrmYeniStokKarti.FormShow(Sender: TObject);
begin
  inherited;
  pnlHeader.color :=clGreen;

  if StokID = EmptyStr then
  begin
    YeniKayitIcinHazirla;
    pnlHeader.Caption := '   STOK KARTI  -  Yeni kayýt';
  end
  else
  begin
    StokKartiGetir;
    pnlHeader.Caption := '   STOK KARTI  -  Düzenle';
  end;
end;

end.
