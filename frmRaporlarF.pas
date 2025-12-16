unit frmRaporlarF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, strutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxGDIPlusClasses, cxImage, cxGroupBox, dxBarBuiltInMenu, cxPC,
  cxLabel, Vcl.ExtCtrls, Data.DB, DBAccess, MemDS, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, frxClass, frxDBSet, frxDesgn,
  dxSkinsCore, dxSkinBlue, dxScrollbarAnnotations, Uni, ListBaseFrm, Main,
  MainDM;

type
  TfrmRaporlar = class(TfrmListBase)
    cxGroupBox11: TcxGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    cxImage9: TcxImage;
    dtTarih2: TcxDateEdit;
    btnListele: TcxButton;
    dtTarih1: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    btnKapat: TcxButton;
    pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    lblMaliyet: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxLabel3: TcxLabel;
    lblKasaCikis: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel5: TcxLabel;
    lblKasaGiris: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    cxLabel7: TcxLabel;
    lblKar: TcxLabel;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxLabel9: TcxLabel;
    lblKKsatis: TcxLabel;
    cxGroupBox9: TcxGroupBox;
    cxLabel11: TcxLabel;
    lblNakitSatis: TcxLabel;
    cxGroupBox10: TcxGroupBox;
    cxLabel13: TcxLabel;
    lblToplamSatis: TcxLabel;
    cxGroupBox12: TcxGroupBox;
    cxLabel15: TcxLabel;
    lblVeresiyeSatis: TcxLabel;
    cxGroupBox13: TcxGroupBox;
    cxGroupBox17: TcxGroupBox;
    cxLabel23: TcxLabel;
    lblKasaNakit: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxGroupBox14: TcxGroupBox;
    cxLabel17: TcxLabel;
    lblCariBorclanma: TcxLabel;
    cxGroupBox15: TcxGroupBox;
    cxLabel19: TcxLabel;
    lbltahsilatlar: TcxLabel;
    qryHsRapor: TUniQuery;
    dsHsRapor: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1kayit_tarihi: TcxGridDBColumn;
    cxGrid1DBTableView1carisim: TcxGridDBColumn;
    cxGrid1DBTableView1tutar: TcxGridDBColumn;
    cxGrid1DBTableView1aciklama: TcxGridDBColumn;
    cxGrid1DBTableView1kaydeden: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView3: TcxGridDBTableView;
    qryHsRaporDet: TUniQuery;
    dsHsRaporDet: TDataSource;
    cxGrid1DBTableView3stok_kodu: TcxGridDBColumn;
    cxGrid1DBTableView3stok_adi: TcxGridDBColumn;
    cxGrid1DBTableView3adet: TcxGridDBColumn;
    cxGrid1DBTableView3sfiyat: TcxGridDBColumn;
    cxGrid1DBTableView3iskonto: TcxGridDBColumn;
    cxGrid1DBTableView3toplam: TcxGridDBColumn;
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
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnListeleClick(Sender: TObject);
    procedure SatleminiSil1Click(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure RaporTasarm1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRaporlar: TfrmRaporlar;

implementation

{$R *.dfm}

uses _cons, _func, _vars;

procedure TfrmRaporlar.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRaporlar.btnListeleClick(Sender: TObject);
var
  nakitSatis, kasaGiris, kasaCikis, tahsilat : double;
  q: TUniQuery;

begin
  q := yeniQuery('', false);
  if pg.ActivePageIndex = 0 then
  begin
    //toplam satýþ
    q.SQL.Text := 'SELECT SUM(tutar) AS toplam FROM t_har_det WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''HS'',''HSV'',''HSKK'') AND gckodu=-1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblToplamSatis.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //TOPLAM SATIÞ

    //nakit satýþ
    q.Close;
    q.SQL.Text := 'SELECT SUM(tutar) AS toplam FROM t_har_det WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''HS'') AND gckodu=-1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblNakitSatis.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //NAKÝT SATIÞ

    //kredi kartý satýþ
    q.Close;
    q.SQL.Text := 'SELECT SUM(tutar) AS toplam FROM t_har_det WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''HSKK'') AND gckodu=-1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblkkSatis.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //KREDÝ KARTI SATIÞ

    //veresiye satýþ
    q.Close;
    q.SQL.Text := 'SELECT SUM(tutar) AS toplam FROM t_har_det WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''HSV'') AND gckodu=-1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblVeresiyeSatis.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //VERESÝYE SATIÞ

    //kasa giriþ
    q.Close;
    q.SQL.Text := 'SELECT SUM(tutar) AS toplam FROM t_har WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''KG'') AND gckodu=1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblKasaGiris.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //KASA GÝRÝÞ

    //kasa çýkýþ
    q.Close;
    q.SQL.Text := 'SELECT SUM(tutar) AS toplam FROM t_har WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''KC'') AND gckodu=-1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblKasaCikis.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //KASA ÇKIÞ

    //maliyet
    q.Close;
    q.SQL.Text := 'SELECT SUM(adet*afiyat) AS toplam FROM t_har_det WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''HS'',''HSV'',''HSKK'') AND gckodu=-1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblMaliyet.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //MALÝYET

    //kar
    q.Close;
    q.SQL.Text := 'SELECT SUM(TUTAR) - SUM(adet*afiyat) AS toplam FROM t_har_det WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''HS'',''HSV'',''HSKK'') AND gckodu=-1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblKar.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //KAR

    //tahsilatlar
    q.Close;
    q.SQL.Text := 'SELECT SUM(tutar) AS toplam FROM t_har WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''ON'',''OKK'') AND gckodu=1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lbltahsilatlar.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //TAHSÝLATLAR

    //cari borçlanma
    q.Close;
    q.SQL.Text := 'SELECT SUM(tutar) AS toplam FROM t_har WHERE CAST(tarih AS date)>= :tar1 and CAST(tarih AS date) <= :tar2 and tipi IN(''CB'') AND gckodu=-1';
    q.ParamByName('tar1').AsDate := dtTarih1.Date;
    q.ParamByName('tar2').AsDate := dtTarih2.Date;
    q.Open;
    if not q.IsEmpty then
      lblCariBorclanma.Caption := IfThen(q.IsEmpty, '0', q.FieldByName('toplam').AsString);
    //CARÝ BORÇLANMA

    //kasa nakit
    nakitSatis := StrToFloatDef(lblNakitSatis.Caption,0);
    kasaGiris  := StrToFloatDef(lblKasaGiris.Caption,0);
    kasaCikis  := StrToFloatDef(lblKasaCikis.Caption,0);
    tahsilat   := StrToFloatDef(lbltahsilatlar.Caption,0);

    lblKasaNakit.Caption := ((nakitSatis + kasaGiris + tahsilat) - kasaCikis).ToString;
    //KASA NAKÝT
  end;

  if pg.ActivePageIndex = 1 then
  begin
    with qryHsRapor do
    begin
      close;
      ParamByName('tar1').AsDate := dtTarih1.Date;
      ParamByName('tar2').AsDate := dtTarih2.Date;
      open;
    end;
    if not qryHsRaporDet.Active then qryHsRaporDet.Open;
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

  FreeAndNil(q);
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
  if FileExists(RAPORLAR+ '\hizli_Satis.fr3') then
  begin
    try rprHizliSatis.LoadFromFile(RAPORLAR+ '\hizli_Satis.fr3');
    except
    end;
  end
  else
    Mesajbilgi(RAPORLAR+ '\hizli_Satis.fr3 Dosyasý bulunamadý..');

  pg.ActivePageIndex := 0;

  dtTarih1.Date := date;
  dtTarih2.Date := date;
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
