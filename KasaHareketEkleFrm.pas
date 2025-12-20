unit KasaHareketEkleFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess,
  Uni, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxCalc,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar, KartBaseFrm, cxGroupBox,
  dxCheckGroupBox, cxCheckBox,  _cons, _func;

type
  TfrmKasaHareketEkle = class(TfrmKartBase)
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    edtTutar: TcxCalcEdit;
    qryKasaHarEkle: TUniQuery;
    dsKasaHarEkle: TDataSource;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnkaydet: TcxButton;
    edtIslemTarihi: TcxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnkaydetClick(Sender: TObject);
    procedure qryKasaHarEkleBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    GCKodu : integer;
    { Public declarations }
  end;

var
  frmKasaHareketEkle: TfrmKasaHareketEkle;

implementation

{$R *.dfm}

uses Main;



procedure TfrmKasaHareketEkle.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmKasaHareketEkle.btnkaydetClick(Sender: TObject);
begin
  if qryKasaHarEkle.State in [dsEdit, dsInsert] then
  qryKasaHarEkle.Post;

  MesajBilgi('Kayýt baþarýlý..');
  Close;
end;

procedure TfrmKasaHareketEkle.FormCreate(Sender: TObject);
begin
  TumQuerylereConnectionAta(self);
end;

procedure TfrmKasaHareketEkle.FormShow(Sender: TObject);
begin
  if GCKodu = ord(HIT_KASA_GIRIS)  then
  begin
    pnlHeader.Caption := '   KASA GÝRÝÞ';
  end
  ELSE
  begin
  if GCKodu = ord(HIT_KASA_CIKIS)  then
    pnlHeader.Caption := '   KASA ÇIKIÞ';
    pnlHeader.Color := clRed;
  end;

  TumQueryleriAc(self, true);
  qryKasaHarEkle.Append;

  edtIslemTarihi.Text := DateToStr(Now);
  edtTutar.SetFocus;
end;

procedure TfrmKasaHareketEkle.qryKasaHarEkleBeforePost(DataSet: TDataSet);
begin
  if trim(DataSet.FieldByName('ISLEMTARIHI').AsString) = EmptyStr then
  begin
    MesajHata('Ýþlem tarihi girilmemiþ..');
    edtIslemTarihi.SetFocus;
    Abort;
    exit;
  end;

  if (trim(edtTutar.Text) = EmptyStr) or (StrToFloatdef(edtTutar.Text, 0)  = 0) then
  begin
    MesajHata('Tutar girilmemiþ..');
    edtTutar.SetFocus;
    Abort;
    exit;
  end;

  if GCKodu = ord(HIT_KASA_GIRIS) then       //kasaya giren
  begin
    DataSet.FieldByName('ISLEMTURU').asinteger := ord(HIT_KASA_GIRIS);
    DataSet.FieldByName('GIREN').AsString      := edtTutar.Text;
    if trim(DataSet.FieldByName('EVRAKNO').AsString) = EmptyStr then DataSet.FieldByName('EVRAKNO').AsString    := EVRAKNO_KASAGIRIS;
  end
  else
  if GCKodu = ord(HIT_KASA_CIKIS) then            //kasadan çýkan
  begin
    DataSet.FieldByName('ISLEMTURU').asinteger := ord(HIT_KASA_CIKIS);
    DataSet.FieldByName('CIKAN').AsString      := edtTutar.Text;
    if trim(DataSet.FieldByName('EVRAKNO').AsString) = EmptyStr then DataSet.FieldByName('EVRAKNO').AsString    := EVRAKNO_KASACIKIS;
  end
  else
  if GCKodu = 0 then
  begin
    abort;
  end;

  DataSet.FieldByName('ODEMETURU').asinteger := ord(HOT_NAKIT);
  DataSet.FieldByName('TUTAR').AsString      := edtTutar.Text;

  EkleyenDegistiren(DataSet);
end;

end.
