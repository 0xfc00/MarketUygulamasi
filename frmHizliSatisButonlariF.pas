unit frmHizliSatisButonlariF;

interface

uses
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,
  System.SysUtils,
  Data.DB,
  Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridDBTableView,
  cxGrid, cxGroupBox, MemDS,
  FireDAC.Comp.Client, KartBaseFrm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxDBLookupComboBox, Vcl.Menus, DBAccess,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  dxSkinBasic, dxSkinBlack, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  dxSkinXmas2008Blue, Vcl.ExtCtrls;

type
  TfrmHizliSatisButonlari = class(Tfrmkartbase)
    cxGroupBox1: TcxGroupBox;
    grdHsGrup: TcxGrid;
    viewHsGrup: TcxGridDBTableView;
    viewHsGrupColumn1: TcxGridDBColumn;
    viewHsGrupadi: TcxGridDBColumn;
    viewHsGrupsira: TcxGridDBColumn;
    grdHsGrupLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox3: TcxGroupBox;
    grdStoklar: TcxGrid;
    viewStoklar: TcxGridDBTableView;
    viewStoklarstokid: TcxGridDBColumn;
    viewStoklarsira: TcxGridDBColumn;
    grdStoklarLevel1: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    dsHsGrup: TDataSource;
    qryHsGrup: TFDQuery;
    dsHsStoklar: TDataSource;
    qryHsStoklar: TFDQuery;
    qryStok: TFDQuery;
    dsStok: TDataSource;
    cxGroupBox4: TPanel;
    btnKapat: TcxButton;
    btnKaydet: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryHsGrupBeforePost(DataSet: TDataSet);
    procedure qryHsStoklarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHizliSatisButonlari: TfrmHizliSatisButonlari;

implementation

{$R *.dfm}

uses Main;

procedure TfrmHizliSatisButonlari.btnKapatClick(Sender: TObject);
begin
  if qryHsGrup.State    in [dsedit,dsinsert] then qryHsGrup.cancel;
  if qryHsStoklar.State in [dsedit,dsinsert] then qryHsStoklar.cancel;

  close;
end;

procedure TfrmHizliSatisButonlari.btnKaydetClick(Sender: TObject);
begin
  if qryHsGrup.State    in [dsedit,dsinsert] then qryHsGrup.Post;
  if qryHsStoklar.State in [dsedit,dsinsert] then qryHsStoklar.Post;
end;

procedure TfrmHizliSatisButonlari.cxButton1Click(Sender: TObject);
begin
  if qryHsGrup.State in [dsedit,dsinsert] then
  begin
    qryHsGrup.Post;
    qryHsGrup.Refresh;
  end;
  qryHsGrup.Append;
end;

procedure TfrmHizliSatisButonlari.cxButton2Click(Sender: TObject);
begin
  if qryHsGrup.IsEmpty then exit;
  if MesajSor('Seçili Grup ve ona baðlý tüm alt kayýtlar silinecek. Eminmisiniz?') then
    qryHsGrup.Delete;
    qryHsGrup.Refresh;
end;

procedure TfrmHizliSatisButonlari.cxButton3Click(Sender: TObject);
begin
  if qryHsGrup.IsEmpty then exit;

  if qryHsGrup.State in [dsedit,dsinsert] then
  begin
    qryHsGrup.Post;
    qryHsGrup.Refresh;
  end;

  if qryHsStoklar.State in [dsedit,dsinsert] then
  begin
    qryHsStoklar.Post;
    qryHsStoklar.Refresh;
  end;
  qryHsStoklar.Append;
end;

procedure TfrmHizliSatisButonlari.cxButton4Click(Sender: TObject);
begin
  if qryHsStoklar.IsEmpty then exit;

  qryHsStoklar.Delete;
  qryHsStoklar.Refresh;
end;

procedure TfrmHizliSatisButonlari.FormCreate(Sender: TObject);
begin
  inherited
  
  TumQuerylereConnectionAta(self);
  TumQueryleriAc(self);

end;
procedure TfrmHizliSatisButonlari.FormShow(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   HIZLI SATIÞ BUTONLARI';
  pnlHeader.color :=clGreen;
end;

procedure TfrmHizliSatisButonlari.qryHsGrupBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(dataset.FieldByName('GRUPADI').AsString) = '' then abort;
end;

procedure TfrmHizliSatisButonlari.qryHsStoklarBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(dataset.FieldByName('GRUPID').AsString) = '' then abort;
  if trim(dataset.FieldByName('STOKKODU').AsString) = '' then abort;
end;

end.
