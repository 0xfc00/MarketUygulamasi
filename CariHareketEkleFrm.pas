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
    Label7: TLabel;
    lblIslemTuru: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    edtIslemTarihi: TcxDBDateEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    qryCari: TUniQuery;
    dsCari: TDataSource;
    qryCariHarEkle: TUniQuery;
    dsCariHarEkle: TDataSource;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    edtTutar: TcxCalcEdit;
    cbxIslemTuru: TcxComboBox;
    lblPosHesabi: TLabel;
    cbxPosHesabi: TcxDBLookupComboBox;
    qryPos: TUniQuery;
    dsPos: TDataSource;
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnkaydetClick(Sender: TObject);
    procedure qryCariHarEkleBeforePost(DataSet: TDataSet);
    procedure cbxIslemTuruPropertiesChange(Sender: TObject);
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
  qryCari.Connection        := dmMain.UniConn;
  qryCariHarEkle.Connection := dmMain.UniConn;
  qryPos.Connection         := dmMain.UniConn;
end;

procedure TfrmCariHareketEkle.FormShow(Sender: TObject);
begin
  cbxIslemTuru.Properties.Items.Clear;

  if GCKodu = O then    // Cariye yapýlan ödeme
    begin
      pnlHeader.Caption := '   CARÝ ÖDEME';
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
  qAcKapa_fn(qryCari);
  qAcKapa_fn(qryCariHarEkle);
  qAcKapa_fn(qryPos);
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
end;

end.
