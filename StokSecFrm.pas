unit StokSecFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, KartBaseFrm,


  Data.DB,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView,
  cxGrid, MainDM, Main, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, Vcl.Menus, MemDS, DBAccess, cxGridTableView,
  cxClasses, cxGridCustomView, dxSkinBasic, dxSkinBlack, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmStokSec = class(TfrmKartBase)
    cxGrid1: TcxGrid;
    vwStoklar: TcxGridDBTableView;
    vwStoklarSTOKKODU: TcxGridDBColumn;
    vwStoklarSTOKADI: TcxGridDBColumn;
    vwStoklarBARKOD: TcxGridDBColumn;
    vwStoklarSATISFIYATI: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qryStoklar: TUniQuery;
    dsStoklar: TDataSource;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnSec: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnSecClick(Sender: TObject);
    procedure vwStoklarCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStokSec: TfrmStokSec;

implementation

{$R *.dfm}

procedure TfrmStokSec.btnKapatClick(Sender: TObject);
begin
  StokSec_StokID := '';
  Close;
end;

procedure TfrmStokSec.btnSecClick(Sender: TObject);
begin
  if qryStoklar.FieldByName('ID').AsString <> emptystr then
  begin
    StokSec_StokID := qryStoklar.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TfrmStokSec.vwStoklarCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSecClick(Self);
end;

procedure TfrmStokSec.FormCreate(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   STOK SEÇ';
  pnlHeader.color :=clGreen;

  qryStoklar.Connection := dmMain.UniConn;
  if qryStoklar.Active = False then
    qryStoklar.Open;

  vwStoklar.ApplyBestFit(nil);
end;

end.
