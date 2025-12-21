unit StokHareketEkleFrm;

interface

uses
  Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms, KartBaseFrm, main, MainDM,

  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, dxPanel, cxContainer,
  cxDBEdit, cxTextEdit,
  _cons, _func, dxSkinsCore, dxSkinBlue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxGeometry, dxFramedControl,
  cxEdit, cxCalc, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmStokHareketEkle = class(TfrmKartBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnkaydet: TcxButton;
    dxPanel1: TdxPanel;
    qryStok: TUniQuery;
    dsStok: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    Label5: TLabel;
    Label8: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    Label6: TLabel;
    qryStokHarEkle: TUniQuery;
    dsStokHarEkle: TDataSource;
    Label7: TLabel;
    edtIslemTarihi: TcxDBDateEdit;
    Label10: TLabel;
    edtMiktar: TcxDBCalcEdit;
    Label11: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label12: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label13: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label14: TLabel;
    edtEvrakNo: TcxDBTextEdit;
    Label15: TLabel;
    edtFiyatKdvHaric: TcxDBCalcEdit;
    Label16: TLabel;
    edtTutar: TcxDBCalcEdit;
    edtFiyatKdvDahil: TcxTextEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label20: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure edtMiktarPropertiesChange(Sender: TObject);
    procedure btnkaydetClick(Sender: TObject);
    procedure qryStokHarEkleBeforePost(DataSet: TDataSet);
    procedure edtFiyatKdvDahilPropertiesChange(Sender: TObject);
    procedure edtMiktarKeyPress(Sender: TObject; var Key: Char);
    procedure edtIslemTarihiExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StokID : string;
    GCKodu : string;
  end;



var
  frmStokHareketEkle: TfrmStokHareketEkle;
  FiyatEditHesapOn : boolean = False;

implementation

{$R *.dfm}



procedure TfrmStokHareketEkle.btnKapatClick(Sender: TObject);
begin
  with qryStokHarEkle do
  begin
    if State in [dsEdit, dsInsert] then
      Cancel;
  end;
  Close;
end;

procedure TfrmStokHareketEkle.btnkaydetClick(Sender: TObject);
begin
  if qryStokHarEkle.State in [dsEdit, dsInsert] then
    qryStokHarEkle.Post;

  MesajBilgi('Kayýt baþarýlý..');
  Close;
end;

procedure TfrmStokHareketEkle.edtFiyatKdvDahilPropertiesChange(Sender: TObject);
var
  Kdv, FiyatKdvli, FiyatKdvsiz : Double;
begin
  if FiyatEditHesapOn then  Exit;
  FiyatEditHesapOn := True;

  try
    if (edtFiyatKdvDahil.Text <> '0') and (trim(edtFiyatKdvDahil.Text) <> '') and
       (qryStok.FieldByName('KDV').AsFloat >0)
    then
    begin
      Kdv                   := qryStok.FieldByName('KDV').AsFloat;
      FiyatKdvli            := StrToFloatDef(edtFiyatKdvDahil.Text, 0);
      FiyatKdvsiz           := FiyatKdvli / ( (100 + Kdv) / 100);
//      edtFiyatKdvHaric.Text := FormatFloat('0.00', FiyatKdvsiz); //FloatToStr(FiyatKdvsiz);   //
      qryStokHarEkle.FieldByName('BIRIMFIYAT').AsString := FormatFloat('0.00', FiyatKdvsiz);;
    end;
  except
    FiyatEditHesapOn := false;
  end;
  FiyatEditHesapOn := false;
end;

procedure TfrmStokHareketEkle.edtIslemTarihiExit(Sender: TObject);
begin
  inherited;
  if trim(edtIslemTarihi.Text) = EmptyStr then
    edtIslemTarihi.Text := DateToStr(Now);
end;

procedure TfrmStokHareketEkle.edtMiktarKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then  // Enter tuþuna basýldýðýnda
  begin
    // Tab tuþunun iþlevini simüle et
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmStokHareketEkle.edtMiktarPropertiesChange(Sender: TObject);
var
  Kdv, FiyatKdvli, FiyatKdvsiz : Double;
begin
  if FiyatEditHesapOn then  Exit;
  FiyatEditHesapOn := True;

  try
    if (edtMiktar.Text <> '0')        and (trim(edtMiktar.Text) <> '')        and
       (edtFiyatKdvHaric.Text <> '0') and (trim(edtFiyatKdvHaric.Text) <> '')
    then
    begin
      edtTutar.Text := FloatToStr(strtoFloatdef(edtMiktar.Text,0) * strtoFloatdef(edtFiyatKdvHaric.Text,0));
    end;
  except
    FiyatEditHesapOn := False;
  end;

  try
    if (edtFiyatKdvHaric.Text <> '0') and (trim(edtFiyatKdvHaric.Text) <> '') and
       (qryStok.FieldByName('KDV').AsFloat >0)
    then
    begin
      Kdv                   := qryStok.FieldByName('KDV').AsFloat;
      FiyatKdvsiz           := StrToFloatDef(edtFiyatKdvHaric.Text, 0);
      FiyatKdvli            := FiyatKdvsiz * ((100 + Kdv) / 100);
      edtFiyatKdvDahil.Text := FloatToStr(FiyatKdvli);
    end;
  except
    FiyatEditHesapOn := False;
  end;
  FiyatEditHesapOn := False;
end;

procedure TfrmStokHareketEkle.FormCreate(Sender: TObject);
begin
  inherited;
  qryStok.Connection        := dmMain.UniConn;
  qryStokHarEkle.Connection := dmMain.UniConn;
end;

procedure TfrmStokHareketEkle.FormShow(Sender: TObject);
begin
  if GCKodu = 'G' then
    pnlHeader.Caption := '   STOK GÝRÝÞÝ'
  ELSE
    pnlHeader.Caption := '   STOK ÇIKIÞI';

  qryStok.SQL.Add(' where ID =' + StokID);
  qAcKapa_fn(qryStok);
  qAcKapa_fn(qryStokHarEkle);
  qryStokHarEkle.Append;
  edtIslemTarihi.Text := DateToStr(Now);
  edtMiktar.SetFocus;
end;

procedure TfrmStokHareketEkle.qryStokHarEkleBeforePost(DataSet: TDataSet);
var
  HarID : string;
begin
  if trim(DataSet.FieldByName('ISLEMTARIHI').AsString) = EmptyStr then
  begin
    MesajHata('Ýþlem tarihi girilmemiþ..');
    edtIslemTarihi.SetFocus;
    Abort;
    exit;
  end;

  if trim(DataSet.FieldByName('MIKTAR').AsString) = EmptyStr then
  begin
    MesajHata('Miktar bilgisi girilmemiþ..');
    edtMiktar.SetFocus;
    Abort;
    exit;
  end;

  if trim(DataSet.FieldByName('BIRIMFIYAT').AsString) = EmptyStr then
  begin
    MesajHata('Fiyat bilgisi girilmemiþ..');
    edtFiyatKdvHaric.SetFocus;
    Abort;
    exit;
  end;

  HarID := veriCekSQL('SELECT ID FROM ISLEM_BASLIK WHERE ISLEMTURU = 0 AND ODEMETURU = 0 AND EVRAKNO = ''STOKHARSABIT''', 'ID');
  if HarID <> VERI_YOK then
    DataSet.FieldByName('ISLEMID').AsString := HarID
  else
  begin
    MesajHata('STOKHARSABIT verisi yok');
    abort;
  end;

  if GCKodu = G then
  begin
    DataSet.FieldByName('GIREN').AsString       := DataSet.FieldByName('MIKTAR').AsString;
    DataSet.FieldByName('ISLEMTURU').AsInteger  := Ord(HIT_STOK_GIRIS);
    if trim(DataSet.FieldByName('EVRAKNO').AsString) = EmptyStr then DataSet.FieldByName('EVRAKNO').AsString     := EVRAKNO_STOKGIRIS;
  end
  else
  begin
    DataSet.FieldByName('GIREN').AsString      := DataSet.FieldByName('MIKTAR').AsString;
    DataSet.FieldByName('ISLEMTURU').AsInteger := Ord(HIT_STOK_CIKIS);
    if trim(DataSet.FieldByName('EVRAKNO').AsString) = EmptyStr then DataSet.FieldByName('EVRAKNO').AsString    := EVRAKNO_STOKCIKIS;
  end;


  DataSet.FieldByName('ODEMETURU').AsInteger  := Ord(HOT_YOK);

  DataSet.FieldByName('STOKID').AsString      := qryStok.FieldByName('ID').AsString;
  DataSet.FieldByName('BIRIMID').AsString     := qryStok.FieldByName('BIRIMID').AsString;
  DataSet.FieldByName('BIRIMADI').AsString    := qryStok.FieldByName('BIRIMADI').AsString;
  DataSet.FieldByName('KDVORANI').AsString    := qryStok.FieldByName('KDV').AsString;
  DataSet.FieldByName('KDVTUTARI').AsFloat    := StrToFloatDef(edtFiyatKdvDahil.Text,0) - StrToFloatDef(edtFiyatKdvHaric.Text,0);
  DataSet.FieldByName('CARIID').AsString      := '0';
  DataSet.FieldByName('POSID').AsString       := '0';


  if DataSet.FieldByName('KDVTUTARI').AsFloat <= 0 then
    DataSet.FieldByName('KDVTUTARI').AsFloat := 0;
end;

end.
