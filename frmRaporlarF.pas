unit frmRaporlarF;

interface

uses
  System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.Menus, cxButtons,
  cxCalendar, cxGroupBox, cxPC,
  cxLabel, Vcl.ExtCtrls, Data.DB,

  cxGridDBTableView,
  cxGridLevel, cxGrid, frxClass, frxDBSet, frxDesgn,
  FireDAC.Comp.Client, ListBaseFrm, Main,
  dateutils, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, Vcl.StdCtrls;

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
    shStokHarRaporu: TcxTabSheet;
    shCarHarRapor: TcxTabSheet;
    qryHsRapor: TFDQuery;
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
    qryHsRaporDet: TFDQuery;
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
    qryRaporStok: TFDQuery;
    dsRaporStok: TDataSource;
    vwStokHar: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    vwStokHargirisCikis: TcxGridDBColumn;
    vwStokHarstok_adi: TcxGridDBColumn;
    vwStokHaradet: TcxGridDBColumn;
    vwStokHartarih: TcxGridDBColumn;
    vwStokHarafiyat: TcxGridDBColumn;
    vwStokHarsfiyat: TcxGridDBColumn;
    vwStokHartoplam: TcxGridDBColumn;
    vwStokHaraciklama: TcxGridDBColumn;
    btnYazdir: TcxButton;
    qryRaporCari: TFDQuery;
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
    vwCariHarRapor: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    vwCariHarRaporgirisCikis: TcxGridDBColumn;
    vwCariHarRaporCari_isim: TcxGridDBColumn;
    vwCariHarRaportarih: TcxGridDBColumn;
    vwCariHarRaportutar: TcxGridDBColumn;
    vwCariHarRaporodeme_nakit: TcxGridDBColumn;
    vwCariHarRaporodeme_kk: TcxGridDBColumn;
    vwCariHarRaporaciklama: TcxGridDBColumn;
    hsGrupSatisRapor: TcxTabSheet;
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
    qryHsRaporStokGrup: TFDQuery;
    dsHsRaporStokGrup: TDataSource;
    vwGrupRapor: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    vwGrupRaportoplam: TcxGridDBColumn;
    vwGrupRaporgrup_: TcxGridDBColumn;
    qryHsRaporStokMarka: TFDQuery;
    dsHsRaporStokMarka: TDataSource;
    hsMarkaSatisRapor: TcxTabSheet;
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
    rprCarihar: TfrxReport;
    rprDBCariHar: TfrxDBDataset;
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
    qryRapor: TFDQuery;
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
    vwStokHarColumn1: TcxGridDBColumn;
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
    procedure pgChange(Sender: TObject);
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
  procedure labelleriDoldur();
  begin
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

  labelleriDoldur;

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

    labelleriDoldur;

  end;

{$ENDREGION}

  if pg.ActivePage = shHs then
  begin
    with qryHsRapor do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
    end;
    if not qryHsRaporDet.Active then qryHsRaporDet.Open;
    vwHsrapor.ApplyBestFit(nil);
  end;

  if pg.ActivePage = shStokHarRaporu then
  begin
    with qryRaporStok do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
      vwStokHar.ApplyBestFit(nil);
    end;
  end;

  if pg.ActivePage = shCarHarRapor then
  begin
    with qryRaporCari do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
      vwCariHarRapor.ApplyBestFit(nil);
    end;
  end;

  if pg.ActivePage = hsGrupSatisRapor then
  begin
    with qryHsRaporStokGrup do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
    end;
  end;

  if pg.ActivePage = hsMarkaSatisRapor then
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
  if pg.ActivePage = shCarHarRapor then
  begin
    rprCarihar.ShowReport();
  end;
end;

procedure TfrmRaporlar.FormCreate(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   RAPORLAR';
  TumQuerylereConnectionAta(self);
  if FileExists(RAPORLAR+ '\cari_Hareket.fr3') then
  begin
    try rprCarihar.LoadFromFile(RAPORLAR+ '\cari_Hareket.fr3');
    except
    end;
  end
  else
    Mesajbilgi(RAPORLAR+ '\cari_Hareket.fr3 Dosyasý bulunamadý..');

  pg.ActivePageIndex := 0;



  btnBugunClick(sender);
end;

procedure TfrmRaporlar.pgChange(Sender: TObject);
begin
  inherited;
  btnFiltreleClick(sender);
end;

procedure TfrmRaporlar.RaporTasarm1Click(Sender: TObject);
begin
  if not y.admin then
  begin
    MesajBilgi('Bu Ýþlem için Yetkiniz Yoktur..');
    exit;
  end;
  if pg.ActivePage = shCarHarRapor then
    rprCarihar.DesignReport();
end;

procedure TfrmRaporlar.SatleminiSil1Click(Sender: TObject);
begin
  if qryHsRapor.IsEmpty then exit;

//  if not y.admin then
//    if not y.STOKHARSIL then
//    begin
//      MesajBilgi('Bu Ýþlem için Yetkiniz Yoktur..');
//      exit;
//    end;
//
//  if MesajSor('Seçili satýþ Ýþlemi ve Ona Bðalý hareketler Silinecek. Eminmisiniz?') then
//  begin
//    qryHsRapor.Delete;
//    qryHsRapor.Refresh;
//  end;
end;

end.
