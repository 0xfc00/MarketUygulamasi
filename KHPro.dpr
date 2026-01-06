program KHPro;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  MainDM in 'MainDM.pas' {dmMain: TDataModule},
  BaseFrm in 'BaseFrm.pas' {frmBase},
  KartBaseFrm in 'KartBaseFrm.pas' {frmKartBase},
  YeniStokKartiFrm in 'YeniStokKartiFrm.pas' {frmYeniStokKarti},
  TanimlarFrm in 'TanimlarFrm.pas' {frmTanimlar},
  ListBaseFrm in 'ListBaseFrm.pas' {frmListBase},
  StokListFrm in 'StokListFrm.pas' {frmStokList},
  StokHareketEkleFrm in 'StokHareketEkleFrm.pas' {frmStokHareketEkle},
  StokSecFrm in 'StokSecFrm.pas' {frmStokSec},
  StokHarListFrm in 'StokHarListFrm.pas' {frmStokHarList},
  YeniCariKartFrm in 'YeniCariKartFrm.pas' {frmYeniCariKart},
  CariListFrm in 'CariListFrm.pas' {frmCariList},
  CariHarListFrm in 'CariHarListFrm.pas' {frmCariHarList},
  CariSecFrm in 'CariSecFrm.pas' {frmCariSec},
  CariHareketEkleFrm in 'CariHareketEkleFrm.pas' {frmCariHareketEkle},
  FaturaEkleFrm in 'FaturaEkleFrm.pas' {frmFaturaEkle},
  frmHizliSatisF in 'frmHizliSatisF.pas' {frmHizliSatis},
  _cons in '_cons.pas',
  _func in '_func.pas',
  _vars in '_vars.pas',
  LoginFrm in 'LoginFrm.pas' {frmLogin},
  PosListFrm in 'PosListFrm.pas' {frmPosList},
  KasaHareketEkleFrm in 'KasaHareketEkleFrm.pas' {frmKasaHareketEkle},
  KasaPosHarListFrm in 'KasaPosHarListFrm.pas' {frmKasaPosHarList},
  DbAyarlarFrm in 'DbAyarlarFrm.pas' {frmDbAyarlar},
  frmKullanicilarF in 'frmKullanicilarF.pas' {frmKullanicilar},
  frmHizliSatisButonlariF in 'frmHizliSatisButonlariF.pas' {frmHizliSatisButonlari},
  stokAktarimFormF in 'stokAktarimFormF.pas' {stokAktarimForm},
  frmSqlSorguF in 'frmSqlSorguF.pas' {frmSqlSorgu},
  frmRaporlarF in 'frmRaporlarF.pas' {frmRaporlar},
  AyarlarFrm in 'AyarlarFrm.pas' {frmAyarlar},
  lisansFormF in 'lisansFormF.pas' {lisansForm},
  servicesU in 'servicesU.pas',
  AdisyonFrm in 'AdisyonFrm.pas' {frmAdisyon};

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
