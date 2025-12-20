unit CariHareketEkleFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, main, MainDM, dxSkinsCore,
  dxSkinBlue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni,
  cxControls, cxContainer, cxEdit, cxCalc, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCariHareketEkle = class(TfrmKartBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnkaydet: TcxButton;
    qryCari: TUniQuery;
    dsCari: TDataSource;
    qryCariHarEkle: TUniQuery;
    dsCariHarEkle: TDataSource;
    qryPos: TUniQuery;
    dsPos: TDataSource;
    Label7: TLabel;
    lblIslemTuru: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblPosHesabi: TLabel;
    edtIslemTarihi: TcxDBDateEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    edtTutar: TcxCalcEdit;
    cbxIslemTuru: TcxComboBox;
    cbxPosHesabi: TcxDBLookupComboBox;
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnkaydetClick(Sender: TObject);
    procedure qryCariHarEkleBeforePost(DataSet: TDataSet);
    procedure cbxIslemTuruPropertiesChange(Sender: TObject);
    procedure qryPosHarEkleBeforePost(DataSet: TDataSet);
    procedure qryKasaHarEkleBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    CariID : string;
    GCKodu : integer;
  end;

var
  frmCariHareketEkle: TfrmCariHareketEkle;

implementation

{$R *.dfm}

uses _cons, _func;

procedure TfrmCariHareketEkle.btnKapatClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCariHareketEkle.btnkaydetClick(Sender: TObject);
begin
  if qryCariHarEkle.State in [dsEdit, dsInsert] then
    qryCariHarEkle.Post;

  MesajBilgi('Kayýt baþarýlý..');
  Close;
end;

procedure TfrmCariHareketEkle.cbxIslemTuruPropertiesChange(Sender: TObject);
begin
  inherited;
  if GCKodu = ord(HIT_CARIDEN_TAHSILAT) then
  begin
    lblPosHesabi.Visible := cbxIslemTuru.ItemIndex = 1;
    cbxPosHesabi.Visible := cbxIslemTuru.ItemIndex = 1;
  end;
end;

procedure TfrmCariHareketEkle.FormCreate(Sender: TObject);
begin
  inherited;
  TumQuerylereConnectionAta(self);
end;

procedure TfrmCariHareketEkle.FormShow(Sender: TObject);
begin
  cbxIslemTuru.Properties.Items.Clear;

  if GCKodu = ord(HIT_CARIYE_ODEME) then    // Cariye yapýlan ödeme
    begin
      pnlHeader.Caption := '   CARÝ ÖDEME';
      pnlHeader.Color := clRed;
      with cbxIslemTuru.Properties.Items do
      begin
        Add('Nakit Ödeme');
        Add('Kredi Kartý Ödeme');
      end;
    end
  ELSE
  if GCKodu = ord(HIT_CARIDEN_TAHSILAT) then    // cariden YAPILAN tahsilat
  begin
    pnlHeader.Caption := '   CARÝ TAHSÝLAT';
    with cbxIslemTuru.Properties.Items do
      begin
        Add('Nakit Tahsilat');
        Add('Kredi Kartý Tahsilat');
      end;
  end;

  cbxIslemTuru.ItemIndex := 0;

  

  qryCari.SQL.Add(' where ID =' + CariID);
  TumQueryleriAc(self, true);

  qryCariHarEkle.Append;
  edtIslemTarihi.Text := DateToStr(Now);




  edtTutar.SetFocus;
end;

procedure TfrmCariHareketEkle.qryCariHarEkleBeforePost(DataSet: TDataSet);
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

  if (cbxIslemTuru.ItemIndex = 1) and (Trim(DataSet.FieldByName('POSID').AsString) = EmptyStr) and (GCKodu = ord(HIT_CARIDEN_TAHSILAT)) then
  begin
    MesajHata('Lütfen Pos hesabý seçiniz..');
    cbxPosHesabi.SetFocus;
    Abort;
    exit;
  end;

  DataSet.FieldByName('ISLEMTURU').AsInteger  := Ord(GCKodu);
  case cbxIslemTuru.ItemIndex  of
    0 : DataSet.FieldByName('ODEMETURU').AsInteger := ord(HOT_NAKIT);
    1 : DataSet.FieldByName('ODEMETURU').AsInteger := ord(HOT_KREDIKARTI);
  end;

  if GCKodu = ord(HIT_CARIYE_ODEME) then       //cariye yapýlan ödeme
  begin
    DataSet.FieldByName('CIKAN').AsString   := edtTutar.Text;
    if trim(DataSet.FieldByName('EVRAKNO').AsString) = EmptyStr then DataSet.FieldByName('EVRAKNO').AsString := EVRAKNO_CARIYEODEME;
  end
  else
  if GCKodu = ord(HIT_CARIDEN_TAHSILAT) then            //cariden yapýlan tahsilat
  begin
    DataSet.FieldByName('GIREN').AsString   := edtTutar.Text;
    if trim(DataSet.FieldByName('EVRAKNO').AsString) = EmptyStr then DataSet.FieldByName('EVRAKNO').AsString := EVRAKNO_CARIDENTAHSILAT;
  end
  else
  if GCKodu = 0 then
  begin
    //deneme
  end;

  DataSet.FieldByName('TUTAR').AsString      := edtTutar.Text;



  EkleyenDegistiren(DataSet);

end;

procedure TfrmCariHareketEkle.qryKasaHarEkleBeforePost(DataSet: TDataSet);
begin
  inherited;
  EkleyenDegistiren(DataSet);
end;

procedure TfrmCariHareketEkle.qryPosHarEkleBeforePost(DataSet: TDataSet);
begin
  inherited;
  EkleyenDegistiren(DataSet);
end;

end.
