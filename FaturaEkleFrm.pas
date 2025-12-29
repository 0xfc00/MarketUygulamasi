unit FaturaEkleFrm;

interface

uses
  System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms, KartBaseFrm,

  cxButtons, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmFaturaEkle = class(TfrmKartBase)
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FaturaID, FaturaTipi : string;
  end;

var
  frmFaturaEkle: TfrmFaturaEkle;

implementation

{$R *.dfm}



procedure TfrmFaturaEkle.FormShow(Sender: TObject);
begin
  inherited;
//  if FaturaTipi = SATIS_FATURASI then pnlHeader.Caption := '   SATIÞ FATURASI';
//  if FaturaTipi = ALIS_FATURASI  then pnlHeader.Caption := '   ALIÞ FATURASI';


  if FaturaID = EmptyStr then
  begin
   // YeniKayitIcinHazirla;
    pnlHeader.Caption := pnlHeader.Caption +  '  -  Yeni Fatura';
  end
  else
  begin
    //CariKartiGetir;
    pnlHeader.Caption := pnlHeader.Caption +  '  -  Düzenle';
  end;
end;

end.
