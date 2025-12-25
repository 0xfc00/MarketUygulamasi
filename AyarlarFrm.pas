unit AyarlarFrm;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KartBaseFrm, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxContainer, cxEdit, dxBarBuiltInMenu, cxDBEdit,
  cxLabel, cxGroupBox, Data.DB, DBAccess, Uni, MemDS, cxPC, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxCheckBox, _func;

type
  TfrmAyarlar = class(TfrmKartBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnKaydet: TcxButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    pc: TcxPageControl;
    shTemelAyarlar: TcxTabSheet;
    qryAyarlar: TUniQuery;
    dsAyarlar: TUniDataSource;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGroupBox4: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGroupBox5: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxGroupBox6: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox13: TcxGroupBox;
    edtOtoYedekDizin: TcxDBTextEdit;
    cxGroupBox14: TcxGroupBox;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxButton1: TcxButton;
    FileSaveDialog1: TFileSaveDialog;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure qryAyarlarAfterPost(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure CallFrmAyarlar;

var
  frmAyarlar: TfrmAyarlar;

implementation

{$R *.dfm}

uses MainDM;

procedure CallFrmAyarlar();
var
  mForm : TfrmAyarlar;
begin
  Application.CreateForm(TfrmAyarlar,mForm);
  mForm.showmodal;
  mForm.free;
end;

procedure TfrmAyarlar.btnKapatClick(Sender: TObject);
begin
  if qryAyarlar.state in dsEditModes then
    qryAyarlar.cancel;

  close;
end;

procedure TfrmAyarlar.btnKaydetClick(Sender: TObject);
begin
  if qryAyarlar.state in dsEditModes then
    qryAyarlar.Post;
end;

procedure TfrmAyarlar.cxButton1Click(Sender: TObject);
begin
  inherited;
  if FileSaveDialog1.Execute then
    if FileSaveDialog1.FileName <> EmptyStr then
      qryAyarlar.FieldByName('OTO_YEDEK_DIZINI').AsString := edtOtoYedekDizin.text;
end;

procedure TfrmAyarlar.cxButton2Click(Sender: TObject);
begin
  inherited;
  OtoYedek_fn;
end;

procedure TfrmAyarlar.FormCreate(Sender: TObject);
begin
  pntUst.visible := false;

  TumQuerylereConnectionAta(self);
  TumQueryleriAc(self);
end;

procedure TfrmAyarlar.qryAyarlarAfterPost(DataSet: TDataSet);
begin
  inherited;
  ayarlariYukle;
end;

end.
