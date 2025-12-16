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
    qryPosHarEkle: TUniQuery;
    Label7: TLabel;
    lblIslemTuru: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblPosHesabi: TLabel;
    edtIslemTarihi: TcxDBDateEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    edtTutar: TcxCalcEdit;
    cbxIslemTuru: TcxComboBox;
    cbxPosHesabi: TcxDBLookupComboBox;
    qryKasaHarEkle: TUniQuery;
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
    GCKodu : string;
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
  lblPosHesabi.Visible := cbxIslemTuru.ItemIndex = 1;
  cbxPosHesabi.Visible := cbxIslemTuru.ItemIndex = 1;
end;

procedure TfrmCariHareketEkle.FormCreate(Sender: TObject);
begin
  inherited;
  TumQuerylereConnectionAta(self);
end;

procedure TfrmCariHareketEkle.FormShow(Sender: TObject);
begin
  cbxIslemTuru.Properties.Items.Clear;

  if GCKodu = O then    // Cariye yapýlan ödeme
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
  if GCKodu = T then    // cariden YAPILAN tahsilat
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

  if (cbxIslemTuru.ItemIndex = 1) and (Trim(DataSet.FieldByName('POSID').AsString) = EmptyStr) then
  begin
    MesajHata('Lütfen Pos hesabý seçiniz..');
    cbxPosHesabi.SetFocus;
    Abort;
    exit;
  end;

  if GCKodu = O then       //cariye yapýlan ödeme
  begin
    DataSet.FieldByName('BORC').AsString        := edtTutar.Text;
    case cbxIslemTuru.ItemIndex of
      0 : DataSet.FieldByName('ISLEMTIPI').AsInteger  := Ord(CH_ODEME_NAKIT);
      1 : DataSet.FieldByName('ISLEMTIPI').AsInteger  := Ord(CH_ODEME_KK);
    end;
  end
  else
  if GCKodu = T then            //cariden yapýlan tahsilat
  begin
    DataSet.FieldByName('ALACAK').AsString      := edtTutar.Text;
    case cbxIslemTuru.ItemIndex of
      0 : DataSet.FieldByName('ISLEMTIPI').AsInteger  := Ord(CH_TAHSILAT_NAKIT);
      1 : DataSet.FieldByName('ISLEMTIPI').AsInteger  := Ord(CH_TAHSILAT_KK);
    end;
  end
  else
  if GCKodu = EmptyStr then
  begin
    //deneme
  end;

  DataSet.FieldByName('CARIID').AsString      := qryCari.FieldByName('ID').AsString;

  EkleyenDegistiren(DataSet);


  if cbxIslemTuru.ItemIndex = 0 then   // nakit ise  kasa harekete ekle
  with qryKasaHarEkle do
  begin
    open;
    append;

    fieldbyname('ISLEMTARIHI').asdatetime     := now;
    fieldbyname('CIKAN').AsString       := DataSet.FieldByName('BORC').AsString;
    fieldbyname('GIREN').AsString       := DataSet.FieldByName('ALACAK').AsString;
    fieldbyname('CARIID').AsString      := qryCari.FieldByName('ID').AsString;

    post;
  end;

  if cbxIslemTuru.ItemIndex = 1 then   // kredi kartý ise pos harekete ekle
  with qryPosHarEkle do
  begin
    open;
    append;

    fieldbyname('POSID').AsString       := qrypos.fieldbyname('ID').asstring;
    fieldbyname('ISLEMTARIHI').asdatetime     := now;
    fieldbyname('BORC').AsString        := DataSet.FieldByName('BORC').AsString;
    fieldbyname('ALACAK').AsString      := DataSet.FieldByName('ALACAK').AsString;
    fieldbyname('CARIID').AsString      := qryCari.FieldByName('ID').AsString;

    post;
  end;
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
