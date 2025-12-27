unit lisansFormF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxGroupBox, Data.DB, MemDS, DBAccess,  Uni, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TlisansForm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    lblSeriNO: TLabeledEdit;
    lblAnahtar: TLabeledEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    MSQuery1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    key : double;
  end;

var
  lisansForm: TlisansForm;

implementation

{$R *.dfm}

uses _func, _vars, Main;

procedure TlisansForm.cxButton1Click(Sender: TObject);
var
qLisans : TUniQuery;
begin
  if lblAnahtar.Text = 'demo' then
  begin
    demo := true;
    MesajBilgi('Uygulamanýn demo sürümünü kullanýyorsunuz. Demo sürümde yalnýzca 5 adet kayýt yapýlmasýna izin verilmektedir..' );
    close;
    exit;
  end;

  if floattostr(key) = lblAnahtar.Text then
  begin
    qLisans := yeniQuery('select * from AYARLAR');

    if qLisans.IsEmpty then
      qLisans.Append
    else
      qLisans.Edit;

    qLisans.FieldByName('LISANSKEY').AsString := floattostr(key);
    qLisans.Post;

    FreeAndNil(qLisans);
    lisans := 1;
    MesajBilgi('Program Lisanslandý..');
    close;
  end
  else
  begin
    MesajHata('Girilen Anahtar Doðru Deðil..');
    lblAnahtar.SetFocus;
    exit;
  end;
end;

procedure TlisansForm.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TlisansForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
