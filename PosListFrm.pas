unit PosListFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, ListBaseFrm,


  Data.DB,
  FireDAC.Comp.Client, cxGridLevel,
  cxGridDBTableView, cxGrid,
  cxButtons, Vcl.ExtCtrls, _func, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  Vcl.StdCtrls;

type
  TfrmPosList = class(TfrmListBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    cxGrid1: TcxGrid;
    vw: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qryPoslar: TFDQuery;
    dsPoslar: TDataSource;
    vwPOSADI: TcxGridDBColumn;
    vwHESAPKODU: TcxGridDBColumn;
    vwTERMINALNO: TcxGridDBColumn;
    vwBANKAADI: TcxGridDBColumn;
    vwUYEISYERINO: TcxGridDBColumn;
    vwColumn1: TcxGridDBColumn;
    btnKaydetVeYeni: TcxButton;
    btnSil: TcxButton;
    vwColumn2: TcxGridDBColumn;
    vwColumn3: TcxGridDBColumn;
    vwColumn4: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure qryPoslarBeforePost(DataSet: TDataSet);
    procedure qryPoslarBeforeDelete(DataSet: TDataSet);
    procedure qryPoslarNewRecord(DataSet: TDataSet);
    procedure btnSilClick(Sender: TObject);
    procedure btnKaydetVeYeniClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosList: TfrmPosList;

implementation

{$R *.dfm}

uses Main;

procedure TfrmPosList.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPosList.btnKaydetVeYeniClick(Sender: TObject);
begin
  inherited;
  if qryPoslar.State in dsEditModes then qryPoslar.post;

  qryPoslar.Append;
end;

procedure TfrmPosList.btnSilClick(Sender: TObject);
begin
  inherited;
  if qryPoslar.IsEmpty then exit;
  qryPoslar.delete;
end;

procedure TfrmPosList.FormCreate(Sender: TObject);
begin
  pnlHeader.Caption := '   POS Tanýmlarý';
  pnlHeader.color :=clGreen;

  TumQuerylereConnectionAta(self);
  TumQueryleriAc(self);
  vw.ApplyBestFit(nil);
end;

procedure TfrmPosList.qryPoslarBeforeDelete(DataSet: TDataSet);
begin
   if PosHareketVarmi_fn(trim(DataSet.fieldbyname('ID').asstring)) then
    begin
      MesajHata('Bu POS hesabýna baðlý hareket var. Silinemez..');
      Abort;
      exit;
    end
end;

procedure TfrmPosList.qryPoslarBeforePost(DataSet: TDataSet);
begin
  if trim(DataSet.fieldbyname('POSADI').asstring) = EmptyStr then
  begin
    MesajHata('POS adý girilmedi..');
    Abort;
    Exit;
  end;

  if DataSet.State in  [dsInsert] then
    if PosTanimiVarmi_fn(trim(DataSet.fieldbyname('POSADI').asstring)) then
    begin
      MesajHata('Bu POS adý zaten kayýtlý..');
      Abort;
      Exit;
    end;

  ekleyenDegistiren(DataSet);
end;

procedure TfrmPosList.qryPoslarNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('TOPLAM_GIREN').AsFloat := 0;
  DataSet.fieldbyname('TOPLAM_CIKAN').AsFloat := 0;
end;

end.
