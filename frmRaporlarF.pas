unit frmRaporlarF;

interface

uses
  System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCalendar, cxGroupBox, cxPC,
  cxLabel, Vcl.ExtCtrls, Data.DB,

  cxGridDBTableView,
  cxGridLevel, cxGrid, frxClass, frxDBSet, frxDesgn,
  Uni, ListBaseFrm, Main,
  dateutils, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlue, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils, MemDS,
  DBAccess, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView;

type
  TfrmRaporlar = class(TfrmListBase)
    cxGroupBox2: TcxGroupBox;
    btnKapat: TcxButton;
    pg: TcxPageControl;
    shOzet: TcxTabSheet;
    shHs: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox13: TcxGroupBox;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    qryHsRapor: TUniQuery;
    dsHsRapor: TDataSource;
    cxGrid1: TcxGrid;
    vwHsrapor: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    vwHsraporkayit_tarihi: TcxGridDBColumn;
    vwHsraporcarisim: TcxGridDBColumn;
    vwHsraportutar: TcxGridDBColumn;
    vwHsraporaciklama: TcxGridDBColumn;
    vwHsraporkaydeden: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    vwHsraporDetay: TcxGridDBTableView;
    qryHsRaporDet: TUniQuery;
    dsHsRaporDet: TDataSource;
    vwHsraporDetaystok_kodu: TcxGridDBColumn;
    vwHsraporDetaystok_adi: TcxGridDBColumn;
    vwHsraporDetayadet: TcxGridDBColumn;
    vwHsraporDetaysfiyat: TcxGridDBColumn;
    vwHsraporDetayiskonto: TcxGridDBColumn;
    vwHsraporDetaytoplam: TcxGridDBColumn;
    pmGrdHsRapor: TPopupMenu;
    pmGrdHsRaporDet: TPopupMenu;
    SatleminiSil1: TMenuItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    qryRaporStok: TUniQuery;
    dsRaporStok: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1girisCikis: TcxGridDBColumn;
    cxGrid2DBTableView1stok_kodu: TcxGridDBColumn;
    cxGrid2DBTableView1stok_adi: TcxGridDBColumn;
    cxGrid2DBTableView1adet: TcxGridDBColumn;
    cxGrid2DBTableView1tarih: TcxGridDBColumn;
    cxGrid2DBTableView1afiyat: TcxGridDBColumn;
    cxGrid2DBTableView1sfiyat: TcxGridDBColumn;
    cxGrid2DBTableView1toplam: TcxGridDBColumn;
    cxGrid2DBTableView1aciklama: TcxGridDBColumn;
    btnYazdir: TcxButton;
    qryRaporCari: TUniQuery;
    dsRaporCari: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBTableView1girisCikis: TcxGridDBColumn;
    cxGrid3DBTableView1cari_kodu: TcxGridDBColumn;
    cxGrid3DBTableView1Cari_isim: TcxGridDBColumn;
    cxGrid3DBTableView1tarih: TcxGridDBColumn;
    cxGrid3DBTableView1tutar: TcxGridDBColumn;
    cxGrid3DBTableView1odeme_nakit: TcxGridDBColumn;
    cxGrid3DBTableView1odeme_kk: TcxGridDBColumn;
    cxGrid3DBTableView1odeme_cari: TcxGridDBColumn;
    cxGrid3DBTableView1aciklama: TcxGridDBColumn;
    cxTabSheet5: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    qryHsRaporStokGrup: TUniQuery;
    dsHsRaporStokGrup: TDataSource;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4DBTableView1toplam: TcxGridDBColumn;
    cxGrid4DBTableView1grup_: TcxGridDBColumn;
    qryHsRaporStokMarka: TUniQuery;
    dsHsRaporStokMarka: TDataSource;
    cxTabSheet6: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    rprHizliSatis: TfrxReport;
    rprDBhizlisatis: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    pmRaporTasarim: TPopupMenu;
    RaporTasarm1: TMenuItem;
    Panel1: TPanel;
    btnSonHafta: TcxButton;
    btnDun: TcxButton;
    btnBugun: TcxButton;
    btnSonAy: TcxButton;
    Panel2: TPanel;
    btnFiltrele: TcxButton;
    dtTarih2: TcxDateEdit;
    dtTarih1: TcxDateEdit;
    Panel3: TPanel;
    cxLabel13: TcxLabel;
    lblToplamSatis: TcxLabel;
    cxGroupBox8: TPanel;
    cxLabel9: TcxLabel;
    lblKKsatis: TcxLabel;
    cxGroupBox9: TPanel;
    cxLabel11: TcxLabel;
    lblNakitSatis: TcxLabel;
    cxGroupBox12: TPanel;
    cxLabel15: TcxLabel;
    lblVeresiyeSatis: TcxLabel;
    qryRapor: TUniQuery;
    cxGroupBox4: TPanel;
    cxLabel3: TcxLabel;
    lblKasaCikis: TcxLabel;
    cxGroupBox5: TPanel;
    cxLabel5: TcxLabel;
    lblKasaGiris: TcxLabel;
    cxGroupBox15: TPanel;
    cxLabel19: TcxLabel;
    lbltahsilatlar: TcxLabel;
    cxGroupBox17: TPanel;
    cxLabel23: TcxLabel;
    lblKasaNakit: TcxLabel;
    cxGroupBox14: TPanel;
    cxLabel17: TcxLabel;
    lblOdemeler: TcxLabel;
    vwHsraporColumn1: TcxGridDBColumn;
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SatleminiSil1Click(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure RaporTasarm1Click(Sender: TObject);
    procedure btnBugunClick(Sender: TObject);
    procedure btnDunClick(Sender: TObject);
    procedure btnSonHaftaClick(Sender: TObject);
    procedure btnSonAyClick(Sender: TObject);
    procedure btnFiltreleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRaporlar: TfrmRaporlar;

implementation

{$R *.dfm}

uses _cons, _vars;

procedure TfrmRaporlar.btnBugunClick(Sender: TObject);
begin
  inherited;
  dtTarih1.date := now;
  dtTarih2.date := now;
  btnFiltreleClick(sender);
end;

procedure TfrmRaporlar.btnDunClick(Sender: TObject);
begin
  inherited;
  dtTarih1.date := IncDay(now, -1);
  dtTarih2.date := now;
  btnFiltreleClick(sender);
end;

procedure TfrmRaporlar.btnFiltreleClick(Sender: TObject);
  procedure IncFloat(var AValue: Currency; const AStep: Currency);
  begin
    AValue := AValue + AStep;
  end;

var
  toplamSatis,nakitSatis, kkSatis,veresiyeSatis, kasaGiris, kasaCikis,
  tahsilatlarNakit, tahsilatlarKk, odemelerNakit, odemelerKk : Currency;
  fs: TFormatSettings;
begin
  {$REGION 'Gün Sonu'}
  toplamSatis		   := 0;
  nakitSatis		   := 0;
  kkSatis			     := 0;
  veresiyeSatis	   := 0;
  kasaGiris		     := 0;
  kasaCikis		     := 0;
  tahsilatlarNakit := 0;
  tahsilatlarKk    := 0;
  odemelerNakit		 := 0;
  odemelerKk       := 0;

  if pg.ActivePage = shOzet then
  begin
    with qryRapor do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
      if IsEmpty then exit;
    end;

    while not qryRapor.Eof  do
    begin
      if qryRapor.FieldByName('tutar').AsFloat <> 0 then
      begin
        if qryRapor.FieldByName('ISLEMTURU').AsInteger = ord(HIT_KASIYER_SATIS) then
        begin
          IncFloat(toplamSatis,qryRapor.FieldByName('tutar').AsFloat);

          if qryRapor.FieldByName('ODEMETURU').AsInteger = ord(HOT_NAKIT)      then IncFloat(nakitSatis,    qryRapor.FieldByName('tutar').AsFloat);
          if qryRapor.FieldByName('ODEMETURU').AsInteger = ord(HOT_KREDIKARTI) then IncFloat(kkSatis,       qryRapor.FieldByName('tutar').AsFloat);
          if qryRapor.FieldByName('ODEMETURU').AsInteger = ord(HOT_CARI)       then IncFloat(veresiyeSatis, qryRapor.FieldByName('tutar').AsFloat);
        end;

        if qryRapor.FieldByName('ISLEMTURU').AsInteger = ord(HIT_CARIDEN_TAHSILAT) then
        begin
          if qryRapor.FieldByName('ODEMETURU').AsInteger = ord(HOT_NAKIT)      then IncFloat(tahsilatlarNakit, qryRapor.FieldByName('tutar').AsFloat);
          if qryRapor.FieldByName('ODEMETURU').AsInteger = ord(HOT_KREDIKARTI) then IncFloat(tahsilatlarKk,    qryRapor.FieldByName('tutar').AsFloat);
        end;

        if qryRapor.FieldByName('ISLEMTURU').AsInteger = ord(HIT_CARIYE_ODEME) then
        begin
          if qryRapor.FieldByName('ODEMETURU').AsInteger = ord(HOT_NAKIT)      then IncFloat(odemelerNakit, qryRapor.FieldByName('tutar').AsFloat);
          if qryRapor.FieldByName('ODEMETURU').AsInteger = ord(HOT_KREDIKARTI) then IncFloat(odemelerKk,    qryRapor.FieldByName('tutar').AsFloat);
        end;

        if qryRapor.FieldByName('ISLEMTURU').AsInteger = ord(HIT_KASA_GIRIS) then
        begin
          IncFloat(kasaGiris, qryRapor.FieldByName('tutar').AsFloat);
        end;

        if qryRapor.FieldByName('ISLEMTURU').AsInteger = ord(HIT_KASA_CIKIS) then
        begin
          IncFloat(kasaCikis, qryRapor.FieldByName('tutar').AsFloat);
        end;
      end;

      qryRapor.next;
    end;

    kasaGiris := kasaGiris + nakitSatis + tahsilatlarNakit;
    kasaCikis := kasaCikis + odemelerNakit;

    fs := TFormatSettings.Create;
    fs.ThousandSeparator := '.';
    fs.DecimalSeparator  := ',';

    lblToplamSatis.Caption       := FormatCurr('#,##0.00', toplamSatis, fs);
    lblNakitSatis.Caption        := FormatCurr('#,##0.00', nakitSatis, fs);
    lblkkSatis.Caption           := FormatCurr('#,##0.00', kkSatis, fs);
    lblVeresiyeSatis.Caption     := FormatCurr('#,##0.00', veresiyeSatis, fs);
    lblKasaGiris.Caption         := FormatCurr('#,##0.00', kasaGiris, fs);
    lblKasaCikis.Caption         := FormatCurr('#,##0.00', kasaCikis, fs);
    lbltahsilatlar.Caption       := FormatCurr('#,##0.00', tahsilatlarNakit + tahsilatlarkk, fs);
    lblOdemeler.Caption          := FormatCurr('#,##0.00', odemelerNakit + odemelerKk, fs);
    lblKasaNakit.Caption         := FormatCurr('#,##0.00', kasaGiris - kasaCikis, fs);

  end;

{$ENDREGION}

  if pg.ActivePage = shHs then
  begin
    with qryHsRapor do
    begin
      close;                                       asd
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
    end;
    if not qryHsRaporDet.Active then qryHsRaporDet.Open;
    vwHsrapor.ApplyBestFit(nil);
  end;

  if pg.ActivePageIndex = 2 then
  begin
    with qryRaporStok do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
    end;
  end;

  if pg.ActivePageIndex = 3 then
  begin
    with qryRaporCari do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
    end;
  end;

  if pg.ActivePageIndex = 4 then
  begin
    with qryHsRaporStokGrup do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
    end;
  end;

  if pg.ActivePageIndex = 5 then
  begin
    with qryHsRaporStokMarka do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
    end;
  end;




end;

procedure TfrmRaporlar.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRaporlar.btnSonAyClick(Sender: TObject);
begin
  inherited;
  dtTarih1.date := IncMonth(now, -1);
  dtTarih2.date := now;
  btnFiltreleClick(sender);
end;

procedure TfrmRaporlar.btnSonHaftaClick(Sender: TObject);
begin
  inherited;
  dtTarih1.date := IncWeek(now, -1);
  dtTarih2.date := now;
  btnFiltreleClick(sender);
end;

procedure TfrmRaporlar.btnYazdirClick(Sender: TObject);
begin
  if pg.ActivePageIndex = 1 then
  begin
    rprHizliSatis.ShowReport();
  end;
end;

procedure TfrmRaporlar.FormCreate(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   RAPORLAR';
  TumQuerylereConnectionAta(self);
  if FileExists(RAPORLAR+ '\hizli_Satis.fr3') then
  begin
    try rprHizliSatis.LoadFromFile(RAPORLAR+ '\hizli_Satis.fr3');
    except
    end;
  end
  else
    Mesajbilgi(RAPORLAR+ '\hizli_Satis.fr3 Dosyasý bulunamadý..');

  pg.ActivePageIndex := 0;



  btnBugunClick(sender);
end;

procedure TfrmRaporlar.RaporTasarm1Click(Sender: TObject);
begin
  if not y.admin then
  begin
    MesajBilgi('Bu Ýþlem için Yetkiniz Yoktur..');
    exit;
  end;
  if pg.ActivePageIndex = 1 then
    rprHizliSatis.DesignReport();
end;

procedure TfrmRaporlar.SatleminiSil1Click(Sender: TObject);
begin
  if qryHsRapor.IsEmpty then exit;

  if not y.admin then
    if not y.STOKHARSIL then
    begin
      MesajBilgi('Bu Ýþlem için Yetkiniz Yoktur..');
      exit;
    end;

  if MesajSor('Seçili satýþ Ýþlemi ve Ona Bðalý hareketler Silinecek. Eminmisiniz?') then
  begin
    qryHsRapor.Delete;
    qryHsRapor.Refresh;
  end;
end;

end.
