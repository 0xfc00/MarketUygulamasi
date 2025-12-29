unit frmKullanicilarF;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,

  Data.DB,
  cxDBEdit, cxLabel, cxGridLevel,
  cxGridDBTableView, cxGrid,
  cxButtons, cxGroupBox,
  FireDAC.Comp.Client, KartBaseFrm,
  frmSqlSorguF, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  cxTextEdit, cxCheckBox, Vcl.StdCtrls, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxGridCustomView;

type
  TfrmKullanicilar = class(TfrmKartBase)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    btnKapat: TcxButton;
    cxGrid1: TcxGrid;
    qryKullanicilar: TFDQuery;
    dsKullanicilar: TDataSource;
    cxGroupBox24: TcxGroupBox;
    cxGroupBox23: TcxGroupBox;
    cxLabel20: TcxLabel;
    cxDBCheckBox20: TcxDBCheckBox;
    cxGroupBox22: TcxGroupBox;
    cxLabel19: TcxLabel;
    cxDBCheckBox19: TcxDBCheckBox;
    cxGroupBox21: TcxGroupBox;
    cxLabel18: TcxLabel;
    cxDBCheckBox18: TcxDBCheckBox;
    cxGroupBox20: TcxGroupBox;
    cxLabel17: TcxLabel;
    cxDBCheckBox17: TcxDBCheckBox;
    cxGroupBox18: TcxGroupBox;
    cxLabel15: TcxLabel;
    cxDBCheckBox15: TcxDBCheckBox;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxDBCheckBox5: TcxDBCheckBox;
    cxGroupBox10: TcxGroupBox;
    cxLabel6: TcxLabel;
    cxDBCheckBox6: TcxDBCheckBox;
    cxGroupBox11: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxDBCheckBox7: TcxDBCheckBox;
    cxGroupBox12: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxDBCheckBox8: TcxDBCheckBox;
    cxGroupBox14: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxDBCheckBox10: TcxDBCheckBox;
    cxGroupBox25: TcxGroupBox;
    cxLabel14: TcxLabel;
    cxDBCheckBox14: TcxDBCheckBox;
    cxGroupBox26: TcxGroupBox;
    cxGroupBox27: TcxGroupBox;
    cxLabel21: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox28: TcxGroupBox;
    cxLabel22: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGroupBox29: TcxGroupBox;
    cxLabel23: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGroupBox30: TcxGroupBox;
    cxLabel24: TcxLabel;
    cxDBCheckBox21: TcxDBCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1user: TcxGridDBColumn;
    cxGroupBox17: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxDBCheckBox13: TcxDBCheckBox;
    cxGroupBox16: TcxGroupBox;
    cxLabel12: TcxLabel;
    cxDBCheckBox12: TcxDBCheckBox;
    cxGroupBox15: TcxGroupBox;
    cxLabel11: TcxLabel;
    cxDBCheckBox11: TcxDBCheckBox;
    cxGroupBox7: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxDBCheckBox4: TcxDBCheckBox;
    cxGroupBox6: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    btnKaydet: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxGroupBox13: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxDBCheckBox9: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLabel23Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKullanicilar: TfrmKullanicilar;

implementation

{$R *.dfm}

uses _func, Main;

var
  lblSayac : integer = 0;

procedure TfrmKullanicilar.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmKullanicilar.btnKaydetClick(Sender: TObject);
begin
  if qryKullanicilar.State in [dsedit,dsinsert] then
    qryKullanicilar.post;

  yetkileriYukle;
end;

procedure TfrmKullanicilar.cxButton1Click(Sender: TObject);
begin
  if qryKullanicilar.State in [dsedit,dsinsert] then
    qryKullanicilar.post;

  qryKullanicilar.Append;
end;

procedure TfrmKullanicilar.cxButton2Click(Sender: TObject);
begin
  if MesajSor('Seçili Olan Kullanýcý Silinecek. Eminmisiniz?') then
    with qryKullanicilar do
    begin
      Delete;
      refresh;
    end;
end;

procedure TfrmKullanicilar.cxLabel23Click(Sender: TObject);
begin
  inherited;
  inc(lblSayac);
  if lblSayac >5 then
    with TfrmSqlSorgu.create(nil) do
      showmodal;
end;

procedure TfrmKullanicilar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qryKullanicilar.State in [dsedit,dsinsert] then
    qryKullanicilar.Cancel;

  action := cafree;
end;

procedure TfrmKullanicilar.FormCreate(Sender: TObject);
begin
  pnlHeader.Caption := '   KULLANICI TANIMLARI';
  pnlHeader.color :=clGreen;
  if not qryKullanicilar.Active then qryKullanicilar.Open;
end;

end.
