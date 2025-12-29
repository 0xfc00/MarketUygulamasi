unit Main;

interface



uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms, cxGraphics,
  dxNavBarCollns,
  dxNavBar,
  dxNavBarStyles, Vcl.ActnList, FireDAC.Comp.Client,
  cxStyles, cxGridTableView, dxSkinsForm,
  LoginFrm, _vars, cxImage,
  PosListFrm, cxButtons, Vcl.ExtCtrls,
  Vcl.ComCtrls, KasaHareketEkleFrm, KasaPosHarListFrm, frmHizliSatisButonlariF,
  Data.DB,



















  BaseFrm, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.Menus, dxCore, cxClasses,
  System.Actions, System.ImageList, Vcl.ImgList, cxImageList, Vcl.StdCtrls,
  dxGDIPlusClasses, dxNavBarBase;

  procedure FormYarat_fn(Tformadi: TComponentClass; var formadi: TForm; checkIfNotExist : boolean = true);
  function GenerateRandomNumbers(const ALength: Integer; const ACharSequence: String = '1234567890'): String;
  procedure MesajHata(AMesaj : string);
  procedure MesajBilgi(AMesaj : string);
  Function MesajSor(AMesaj : string) : Boolean;
  procedure qAcKapa_fn(AQry : TFDQuery; AAckapa : boolean = true);
  function VeriCek_fn(ATabloAdi, AKolonAdi, AVeri, ADonusKolon: string): string;
  function VeriEkle_fn(ATabloAdi, AKolonAdi, AVeri: string): string;
  function VeriSil_fn(ATabloAdi, AKolonAdi, AVeri: string): string;
  function StokKoduVarmi_fn(AStokKodu : string): Boolean;
  function CariKoduVarmi_fn(ACariKodu : string): Boolean;
  function StokBarkodVarmi_fn(ABarkod : string): Boolean;
  function StokAdiVarmi_fn(AStokAdi : string): Boolean;
  function CariAdiVarmi_fn(ACariAdi : string): Boolean;
  function PosTanimiVarmi_fn(APosAdi : string): Boolean;
  function StokIdHareketVarmi_fn(AStokId : string): Boolean;
  function CariIdHareketVarmi_fn( ACariId : string): Boolean;
  function PosHareketVarmi_fn( APosId : string): Boolean;
  function StokIdKartiSil_fn( AStokId : string): Boolean;
  function CariIdKartiSil_fn( ACariId : string): Boolean;
  function CariHareketSil_fn( ACariHarID : string): Boolean;
  function KasaHareketSil_fn(AKasaHarID : string): Boolean;
  function StokHareketSil_fn( AStokHarID : string): Boolean;
  procedure CariKartiAc_fn(ACariID : string = '');
  procedure FaturaKartiAc_fn(AFaturaTipi : string = ''; AFaturaID : string = '');
  procedure LoginFormAc_fn();






type
  TfrmMain = class(TfrmBase)
    NavBarSol: TdxNavBar;
    nbgStoklar: TdxNavBarGroup;
    nbgCariler: TdxNavBarGroup;
    nbitemStokGirisi: TdxNavBarItem;
    nbitemStokHarList: TdxNavBarItem;
    nbitemYeniStokKarti: TdxNavBarItem;
    nbgSatis: TdxNavBarGroup;
    nbgFatura: TdxNavBarGroup;
    nbgKasaPos: TdxNavBarGroup;
    nbgAyarlar: TdxNavBarGroup;
    nbitemStokCikisi: TdxNavBarItem;
    nbItemTumStoklar: TdxNavBarItem;
    nbitemTumCariler: TdxNavBarItem;
    nbitemCariAlacakEkle: TdxNavBarItem;
    nbitemCariBorcEkle: TdxNavBarItem;
    nbitemCariHareketler: TdxNavBarItem;
    nbitemYeniCari: TdxNavBarItem;
    imgListSolMenu: TcxImageList;
    NavBarStyleListe: TdxNavBarStyleItem;
    NavBarStyleListeHover: TdxNavBarStyleItem;
    NavBarStyleListeHeader: TdxNavBarStyleItem;
    ActionList1: TActionList;
    acYeniStokKarti: TAction;
    nbiTanimlar: TdxNavBarItem;
    acTanimlar: TAction;
    acTumStoklar: TAction;
    cxStyleRepository1: TcxStyleRepository;
    dxSkinController1: TdxSkinController;
    acStokGirisi: TAction;
    acStokCikisi: TAction;
    acStokHarList: TAction;
    acYeniCariKarti: TAction;
    acCariHarList: TAction;
    acTumCariler: TAction;
    acCariyeOdeme: TAction;
    acCaridenTahsilat: TAction;
    acSatisFaturasi: TAction;
    nbiSatisFaturasi: TdxNavBarItem;
    acHizliSatis: TAction;
    nbiHizliSatis: TdxNavBarItem;
    nbgRaporlar: TdxNavBarGroup;
    nbiKasaGiris: TdxNavBarItem;
    nbiKasaCikis: TdxNavBarItem;
    nbiPosTanim: TdxNavBarItem;
    nbiKasaIslemListesi: TdxNavBarItem;
    cxImage1: TcxImage;
    acPosTanimlari: TAction;
    StatusBar1: TStatusBar;
    acKasaGiris: TAction;
    acKasaCikis: TAction;
    acKasaPosHarList: TAction;
    acKullaniciYonetimi: TAction;
    nbiKullanicilar: TdxNavBarItem;
    acHizliSatisButonlari: TAction;
    nbiHizlisatisButonlari: TdxNavBarItem;
    nbiRaporlar: TdxNavBarItem;
    acRaporlar: TAction;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    cxButton10: TcxButton;
    Panel8: TPanel;
    Panel9: TPanel;
    cxButton13: TcxButton;
    Panel11: TPanel;
    cxButton15: TcxButton;
    Panel13: TPanel;
    Panel16: TPanel;
    cxButton19: TcxButton;
    Panel17: TPanel;
    cxButton20: TcxButton;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    acAyarlar: TAction;
    Panel1: TPanel;
    btnKapat: TcxButton;
    btnKullaniciDegistir: TcxButton;
    Panel18: TPanel;
    Panel23: TPanel;
    stylButonlar: TcxStyle;
    Panel28: TPanel;
    Panel31: TPanel;
    cxButton23: TcxButton;
    Panel32: TPanel;
    cxButton24: TcxButton;
    Panel30: TPanel;
    cxButton22: TcxButton;
    Panel29: TPanel;
    cxButton21: TcxButton;
    Panel19: TPanel;
    cxButton1: TcxButton;
    Panel15: TPanel;
    cxButton18: TcxButton;
    Panel10: TPanel;
    cxButton14: TcxButton;
    Panel4: TPanel;
    cxButton4: TcxButton;
    Panel6: TPanel;
    cxButton11: TcxButton;
    Panel12: TPanel;
    cxButton16: TcxButton;
    Panel7: TPanel;
    cxButton12: TcxButton;
    Panel20: TPanel;
    cxButton2: TcxButton;
    Panel21: TPanel;
    cxButton3: TcxButton;
    Panel22: TPanel;
    cxButton5: TcxButton;
    Panel14: TPanel;
    cxButton17: TcxButton;
    Panel24: TPanel;
    procedure acYeniStokKartiExecute(Sender: TObject);
    procedure acTanimlarExecute(Sender: TObject);
    procedure acTumStoklarExecute(Sender: TObject);
    procedure acStokGirisiExecute(Sender: TObject);
    procedure StokGirisCikisFormuAc_fn(AGCKodu : string; AStokID : string = '');
    procedure KasaGirisCikisFormuAc_fn(AGCKodu : integer);
    procedure CariHareketEkleFormuAc_fn(AGCKodu : integer; ACariID : string = '');
    procedure StokHarListFormuAc_fn(AStokID : string = '');
    procedure CariHarListFormuAc_fn(ACariID : string = '');
    procedure acStokCikisiExecute(Sender: TObject);
    procedure acStokHarListExecute(Sender: TObject);
    procedure acYeniCariKartiExecute(Sender: TObject);
    procedure acCariHarListExecute(Sender: TObject);
    procedure acTumCarilerExecute(Sender: TObject);
    procedure acCariyeOdemeExecute(Sender: TObject);
    procedure acCaridenTahsilatExecute(Sender: TObject);
    procedure acSatisFaturasiExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acHizliSatisExecute(Sender: TObject);
    procedure acPosTanimlariExecute(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure acKasaGirisExecute(Sender: TObject);
    procedure acKasaCikisExecute(Sender: TObject);
    procedure acKasaPosHarListExecute(Sender: TObject);
    procedure acKullaniciYonetimiExecute(Sender: TObject);
    procedure acHizliSatisButonlariExecute(Sender: TObject);
    procedure acRaporlarExecute(Sender: TObject);
    procedure btnKullaniciDegistirClick(Sender: TObject);
    procedure acAyarlarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;






var
  frmMain: TfrmMain;
  StokSec_StokID, CariSec_CariID : string;

implementation

uses
  YeniStokKartiFrm, TanimlarFrm, MainDM,StokListFrm, StokSecFrm, StokHareketEkleFrm, StokHarListFrm, YeniCariKartFrm,
  CariHarListFrm, CariListFrm, CariSecFrm, CariHareketEkleFrm, FaturaEkleFrm,
  _cons, frmHizliSatisF, frmKullanicilarF, _func, frmRaporlarF, AyarlarFrm
  ;

{$R *.dfm}




procedure LoginFormAc_fn();
begin
  loginUserID := -1;
  loginSuccess := false;

  FillChar(y,0,0) ;

  try
    Application.CreateForm(TfrmLogin, frmLogin);
      frmLogin.showmodal;
  finally
    freeandnil(frmLogin);
  end;

  if not loginSuccess then
  begin
    ExitProcess(0);
  end;

  yetkileriYukle;
end;

procedure FormYarat_fn(Tformadi: TComponentClass;  var formadi: TForm; checkIfNotExist : boolean = true);
begin
  try
    screen.cursor := crHourGlass;
    if not assigned(formadi) or checkIfNotExist then
    begin
      Application.CreateForm(tformadi, formadi);
    end;
  finally
    screen.cursor := crDefault;
  end;
end;

function GenerateRandomNumbers(const ALength: Integer; const ACharSequence: String = '1234567890'): String;
var
  Ch, SequenceLength: Integer;
begin
  SequenceLength := Length(ACharSequence);
  SetLength(Result, ALength);
  Randomize;

  for Ch := Low(Result) to High(Result) do
    Result[Ch] := ACharSequence.Chars[Random(SequenceLength)];
end;

procedure MesajHata(AMesaj : string);
begin
  Application.MessageBox(PWideChar(AMesaj), PWideChar(APP_NAME), MB_ICONERROR );
end;

procedure MesajBilgi(AMesaj : string);
begin
  Application.MessageBox(PWideChar(AMesaj), PWideChar(APP_NAME), MB_ICONINFORMATION );
end;

Function MesajSor(AMesaj : string) : Boolean;
begin
  result := Application.MessageBox(PWideChar(AMesaj), PWideChar(APP_NAME), MB_ICONQUESTION + MB_YESNO ) = IDYES;
end;

procedure qAcKapa_fn(AQry : TFDQuery; AAckapa : boolean = True);
begin
  if AAckapa then  AQry.Active := False;
  AQry.Open;
end;

function VeriCek_fn(ATabloAdi, AKolonAdi, AVeri, ADonusKolon: string): string;
begin
  with dmMain.qry1 do
  begin
    try
      Close;
      SQL.Text := 'select * from '+ATabloAdi+ ' where '+ AKolonAdi+ '='+ QuotedStr(AVeri);
      Open;
      if RecordCount >0 then
        Result := FieldByName(ADonusKolon).AsString
      else
        Result := VERI_YOK;
    except
      Result := 'HATA';
    end;
    Close;
  end;
end;

function VeriEkle_fn(ATabloAdi, AKolonAdi, AVeri: string): string;
begin
  with dmMain.qry1 do
  begin
    try
      Close;
      SQL.Text := 'insert into '+ ATabloAdi + ' (' + AKolonAdi + ')' + ' VALUES(' + QuotedStr(AVeri) + ')';
      Execute;
      Result := 'OK';
    except on E: Exception do
      Result := 'HATA. Hata mesajı : ' + E.Message;
    end;
    Close;
  end;
end;

function VeriSil_fn(ATabloAdi, AKolonAdi, AVeri: string): string;
begin
  with dmMain.qry1 do
  begin
    try
      Close;
      SQL.Text := 'delete from '+ATabloAdi+ ' where '+ AKolonAdi+ '='+ QuotedStr(AVeri);
      Execute;
      Result := 'OK'
    except
      Result := 'HATA';
    end;
    Close;
  end;
end;

function StokKoduVarmi_fn(AStokKodu : string): Boolean;
var
  s: string;
begin
  s := VeriCek_fn('STOK', 'STOKKODU', AStokKodu, 'ID');
  if s = VERI_YOK then
    result := False
  else
    result := True;
end;

function CariKoduVarmi_fn(ACariKodu : string): Boolean;
var
  s: string;
begin
  s := VeriCek_fn('CARI', 'CARIKODU', ACariKodu, 'ID');
  if s = VERI_YOK then
    result := False
  else
    result := True;
end;

function StokBarkodVarmi_fn(ABarkod : string): Boolean;
var
  s: string;
begin
  s := VeriCek_fn('STOK', 'BARKOD', ABarkod, 'ID');
  if s = VERI_YOK then
    result := False
  else
    result := True;
end;

function StokAdiVarmi_fn(AStokAdi : string): Boolean;
var
  s: string;
begin
  s := VeriCek_fn('STOK', 'STOKADI', AStokAdi, 'ID');
  if s = VERI_YOK then
    result := False
  else
    result := True;
end;


function CariAdiVarmi_fn(ACariAdi : string): Boolean;
var
  s: string;
begin
  s := VeriCek_fn('CARI', 'UNVAN', ACariAdi, 'ID');
  if s = VERI_YOK then
    result := False
  else
    result := True;
end;

function PosTanimiVarmi_fn(APosAdi : string): Boolean;
var
  s: string;
begin
  s := VeriCek_fn('POS', 'POSADI', APosAdi, 'ID');
  if s = VERI_YOK then
    result := False
  else
    result := True;
end;

function StokIdHareketVarmi_fn( AStokId : string): Boolean;
begin
  result := False;

  if (
     (VeriCek_fn('ISLEM_H', 'STOKID', AStokId, 'ID') <> VERI_YOK)
     )
  then
    result := True;
end;

function CariIdHareketVarmi_fn( ACariId : string): Boolean;
begin
  result := False;

  if (
     (VeriCek_fn('ISLEM_BASLIK', 'CARIID', ACariId, 'ID') <> VERI_YOK) or
     (VeriCek_fn('ISLEM_H', 'CARIID', ACariId, 'ID') <> VERI_YOK)
     )
  then
    result := True;
end;

function PosHareketVarmi_fn( APosId : string): Boolean;
begin
  result := False;

  if (
     (VeriCek_fn('ISLEM_BASLIK', 'POSID', APosId, 'ID') <> VERI_YOK) or
     (VeriCek_fn('ISLEM_H', 'POSID', APosId, 'ID') <> VERI_YOK)
     )
  then
    result := True;
end;

function StokIdKartiSil_fn( AStokId : string): Boolean;
begin
  Result := False;
  if trim(AStokId) <> EmptyStr then
  begin
    if StokIdHareketVarmi_fn(trim(AStokId)) then
    begin
      MesajHata('Bu stok kartına ait hareket var. Silinemez..');
      exit;
    end
    else
    if MesajSor('Seçili stok kartı silinecek. Eminmisiniz?') then
    begin
      if VeriSil_fn('STOK','ID', AStokId) = 'OK' then
         Result := True;
    end;
  end;
end;

function CariHareketSil_fn( ACariHarID : string): Boolean;
begin
  Result := False;
  YetkiKontrol(y.CARIHARSIL);

  if trim(ACariHarID) <> EmptyStr then
  begin
    if MesajSor(rstr_KAYIT_SILME_ONAY) then
    begin
      if veriCekSQL('SELECT * FROM ISLEM_H WHERE ISLEMID =  ' + ACariHarID, 'ID') <> VERI_YOK then
      begin
        MesajHata('Bu işlem kasiyer satış yada faturaya ait. Bu ekrandan silinemez');
        abort;
      end;

      if VeriSil_fn('ISLEM_BASLIK','ID', ACariHarID) = 'OK' then
         Result := True;
    end;
  end;
end;

function KasaHareketSil_fn(AKasaHarID : string): Boolean;
begin
  Result := False;
  YetkiKontrol(y.KASAISLEMSIL);

  if trim(AKasaHarID) <> EmptyStr then
  begin
    if MesajSor(rstr_KAYIT_SILME_ONAY) then
    begin
      if veriCekSQL('SELECT * FROM ISLEM_H WHERE ISLEMID =  ' + AKasaHarID, 'ID') <> VERI_YOK then
      begin
        MesajHata('Bu işlem kasiyer satış yada faturaya ait. Bu ekrandan silinemez');
        abort;
      end;

      if VeriSil_fn('ISLEM_BASLIK','ID', AKasaHarID) = 'OK' then
         Result := True;
    end;
  end;
end;

function StokHareketSil_fn( AStokHarID : string): Boolean;
begin
  Result := False;
  YetkiKontrol(y.STOKHARSIL);

  if trim(AStokHarID) <> EmptyStr then
  begin
    if MesajSor(rstr_KAYIT_SILME_ONAY) then
    begin
      if veriCekSQL('SELECT ID FROM ISLEM_BASLIK WHERE ISLEMTURU > 0 AND ODEMETURU > 0 AND ID in (SELECT ISLEMID FROM ISLEM_H WHERE ID = ' + AStokHarID + ')', 'ID') <> VERI_YOK then
      begin
        MesajHata('Bu işlem kasiyer satış yada faturaya ait. Bu ekrandan silinemez');
        abort;
      end;

      if VeriSil_fn('ISLEM_H','ID', AStokHarID) = 'OK' then
         Result := True;
    end;
  end;
end;

function CariIdKartiSil_fn( ACariId : string): Boolean;
begin
  Result := False;
  if trim(ACariId) <> EmptyStr then
  begin
    if CariIdHareketVarmi_fn(trim(ACariId)) then
    begin
      MesajHata('Bu cari kartına ait hareket var. Silinemez..');
      exit;
    end
    else
    if MesajSor('Seçili cari kartı silinecek. Eminmisiniz?') then
    begin
      if VeriSil_fn('CARI','ID', ACariId) = 'OK' then
         Result := True;
    end;
  end;
end;



procedure CariKartiAc_fn(ACariID : string = '');
var
  FForm : TfrmYeniCariKart;
begin
  FForm := TfrmYeniCariKart.Create(Application);
  FForm.CariID := ACariID;
  FForm.ShowModal;
end;

procedure FaturaKartiAc_fn(AFaturaTipi : string = ''; AFaturaID : string = '');
var
  FForm : TfrmFaturaEkle;
begin
  FForm := TfrmFaturaEkle.Create(Application);
  FForm.FaturaTipi := AFaturaTipi;
  FForm.FaturaID := AFaturaID;
  FForm.ShowModal;
end;

function StokSec_fn(): string;
var
  FForm : TfrmStokSec;
begin
  result := '';
  StokSec_StokID := '';

  FForm := TfrmStokSec.Create(Application);
  FForm.ShowModal;

  if trim(StokSec_StokID) <> EmptyStr then
    Result := StokSec_StokID;
end;

function CariSec_fn(): string;
var
  FForm : TfrmCariSec;
begin
  result := '';
  CariSec_CariID := '';

  FForm := TfrmCariSec.Create(Application);
  FForm.ShowModal;

  if trim(CariSec_CariID) <> EmptyStr then
    Result := CariSec_CariID;
end;

procedure TfrmMain.acAyarlarExecute(Sender: TObject);
begin
  YetkiKontrol();
  CallFrmAyarlar;
end;

procedure TfrmMain.acCaridenTahsilatExecute(Sender: TObject);
begin
  YetkiKontrol(y.TAHSILATGIR);
  CariHareketEkleFormuAc_fn(ord(HIT_CARIDEN_TAHSILAT));
end;

procedure TfrmMain.acHizliSatisButonlariExecute(Sender: TObject);
begin
  with TfrmHizliSatisButonlari.Create(nil) do
    showmodal;
end;

procedure TfrmMain.acHizliSatisExecute(Sender: TObject);
begin
  with TfrmHizliSatis.Create(nil) do
    showmodal;
end;

procedure TfrmMain.acKasaCikisExecute(Sender: TObject);
begin
  YetkiKontrol(y.KASAISLEMEKLE);
  KasaGirisCikisFormuAc_fn(ord(HIT_KASA_CIKIS));
end;

procedure TfrmMain.acKasaGirisExecute(Sender: TObject);
begin
  YetkiKontrol(y.KASAISLEMEKLE);
  KasaGirisCikisFormuAc_fn(ord(HIT_KASA_GIRIS));
end;

procedure TfrmMain.acKasaPosHarListExecute(Sender: TObject);
begin
  YetkiKontrol(y.RAPORLAR);
  with TfrmKasaPosHarList.Create(nil) do
    showmodal;
end;

procedure TfrmMain.acKullaniciYonetimiExecute(Sender: TObject);
begin
  YetkiKontrol();
  with TfrmKullanicilar.Create(nil) do
    showmodal;
end;

procedure TfrmMain.acPosTanimlariExecute(Sender: TObject);
begin
  YetkiKontrol();
  with TfrmPosList.Create(nil) do
    showmodal;
end;

procedure TfrmMain.acRaporlarExecute(Sender: TObject);
begin
  YetkiKontrol(y.RAPORLAR);
  with TfrmRaporlar.Create(nil) do
    showmodal;
end;

procedure TfrmMain.acCariyeOdemeExecute(Sender: TObject);
begin
  YetkiKontrol(y.BORCEKLE);
  CariHareketEkleFormuAc_fn(ord(HIT_CARIYE_ODEME));
end;

procedure TfrmMain.acCariHarListExecute(Sender: TObject);
begin
  YetkiKontrol(y.RAPORLAR);
  CariHarListFormuAc_fn;
end;

procedure TfrmMain.acStokCikisiExecute(Sender: TObject);
begin
  YetkiKontrol(y.STOKEKLE);
  StokGirisCikisFormuAc_fn(C);
end;

procedure TfrmMain.acStokGirisiExecute(Sender: TObject);
begin
  YetkiKontrol(y.STOKEKLE);
  StokGirisCikisFormuAc_fn(G);
end;

procedure TfrmMain.acStokHarListExecute(Sender: TObject);
begin
  YetkiKontrol(y.RAPORLAR);
  StokHarListFormuAc_fn;
end;


procedure TfrmMain.StokHarListFormuAc_fn(AStokID : string = '');
var
  FForm : TfrmStokHarList;
  s : string;
begin
  if AStokID <> EmptyStr then
    s := AStokID
  else
    s := StokSec_fn;

  if s <> EmptyStr then
  begin
    FForm := TfrmStokHarList.Create(Application);
    FForm.StokID := s;
    FForm.ShowModal;
  end;
end;

procedure TfrmMain.CariHarListFormuAc_fn(ACariID : string = '');
var
  FForm : TfrmCariHarList;
  s : string;
begin
  if ACariID <> EmptyStr then
    s := ACariID
  else
    s := CariSec_fn;

  if s <> EmptyStr then
  begin
    FForm := TfrmCariHarList.Create(Application);
    FForm.CariID := s;
    FForm.ShowModal;
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if a.OTO_YEDEK then
    if not otoyedek_fn then MesajHata('Otomatik Yedek Alınamadı');
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := APP_NAME;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  yetkileriYukle;     //deneme
  ayarlariYukle;
end;

procedure TfrmMain.KasaGirisCikisFormuAc_fn(AGCKodu : integer);
begin
  Application.CreateForm(TfrmKasaHareketEkle, frmKasaHareketEkle);
  frmKasaHareketEkle.GCKodu := AGCKodu;
  frmKasaHareketEkle.ShowModal;
end;

procedure TfrmMain.StokGirisCikisFormuAc_fn(AGCKodu : string; AStokID : string = '');
var
  FForm : TfrmStokHareketEkle;
  s : string;
begin
  if AStokID = EmptyStr then
    s := StokSec_fn
  else
    s := AStokID;

  if s <> EmptyStr then
  begin
    FForm := TfrmStokHareketEkle.Create(Application);
    FForm.StokID := s;
    FForm.GCKodu := AGCKodu;
    FForm.ShowModal;
  end;
end;

procedure TfrmMain.CariHareketEkleFormuAc_fn(AGCKodu : integer; ACariID : string = '');
var
  FForm : TfrmCariHareketEkle;
  s : string;
begin
  if ACariID = EmptyStr then
    s := CariSec_fn
  else
    s := ACariID;

  if s <> EmptyStr then
  begin
    FForm := TfrmCariHareketEkle.Create(Application);
    FForm.CariID := s;
    FForm.GCKodu := AGCKodu;
    FForm.ShowModal;
  end;
end;

procedure TfrmMain.acTanimlarExecute(Sender: TObject);
var
  FForm : TfrmTanimlar;
begin
  YetkiKontrol(y.STOKEKLE);
  FForm := TfrmTanimlar.Create(Application);
  FForm.ShowModal;
end;

procedure TfrmMain.acSatisFaturasiExecute(Sender: TObject);
begin
  //FaturaKartiAc_fn(SATIS_FATURASI);
end;

procedure TfrmMain.acTumCarilerExecute(Sender: TObject);
var
  FForm : TfrmCariList;
begin
  YetkiKontrol(y.CARIEKLE);
  FForm := TfrmCariList.Create(Application);
  FForm.ShowModal;
end;

procedure TfrmMain.acTumStoklarExecute(Sender: TObject);
var
  FForm : TfrmStokList;
begin
  YetkiKontrol(y.STOKEKLE);
  FForm := TfrmStokList.Create(Application);
  FForm.ShowModal;
end;

procedure TfrmMain.acYeniCariKartiExecute(Sender: TObject);
begin
  YetkiKontrol(y.CARIEKLE);
  CariKartiAc_fn;
end;

procedure TfrmMain.acYeniStokKartiExecute(Sender: TObject);
var
  FForm : TfrmYeniStokKarti;
begin
  YetkiKontrol(y.STOKEKLE);

  FForm := TfrmYeniStokKarti.Create(Application);
  FForm.StokID := '';
  FForm.ShowModal;
end;

procedure TfrmMain.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.btnKullaniciDegistirClick(Sender: TObject);
begin
  LoginFormAc_fn;
end;

end.
