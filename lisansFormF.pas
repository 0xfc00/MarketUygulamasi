unit lisansFormF;

interface

uses
  System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms,















  cxButtons, Vcl.ExtCtrls,
  cxGroupBox, Data.DB,  FireDAC.Comp.Client, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.StdCtrls;

type
  TlisansForm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    lblSeriNO: TLabeledEdit;
    lblAnahtar: TLabeledEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    MSQuery1: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    key : string;
  end;

var
  lisansForm: TlisansForm;

implementation

{$R *.dfm}

uses _func, _vars, Main;

procedure TlisansForm.cxButton1Click(Sender: TObject);
var
qLisans : TFDQuery;
begin
  if lblAnahtar.Text = 'demo' then
  begin
    demo := true;
    //MesajBilgi('Uygulamanýn demo sürümünü kullanýyorsunuz. Demo sürümde yalnýzca 5 adet kayýt yapýlmasýna izin verilmektedir..' ); //deneme
    close;
    exit;
  end;

  if (key) = lblAnahtar.Text then
  begin
    qLisans := yeniQuery('select * from AYARLAR');

    if qLisans.IsEmpty then
      qLisans.Append
    else
      qLisans.Edit;

    qLisans.FieldByName('LISANSKEY').AsString := (key);
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
