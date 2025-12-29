unit CariSecFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, KartBaseFrm,


  Data.DB, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  FireDAC.Comp.Client,Main,MainDM, dxSkinsCore, dxSkinBlue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, MemDS, DBAccess, cxGridTableView, cxClasses,
  cxGridCustomView, dxSkinBasic, dxSkinBlack, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmCariSec = class(TfrmKartBase)
    qryCariler: TFDQuery;
    dsCariler: TDataSource;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnSec: TcxButton;
    cxGrid1: TcxGrid;
    vmCariler: TcxGridDBTableView;
    vmCarilerSTOKKODU: TcxGridDBColumn;
    vmCarilerSTOKADI: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    vmCarilerColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnSecClick(Sender: TObject);
    procedure vmCarilerCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCariSec: TfrmCariSec;

implementation

{$R *.dfm}

procedure TfrmCariSec.btnKapatClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCariSec.btnSecClick(Sender: TObject);
begin
  if qryCariler.FieldByName('ID').AsString <> emptystr then
  begin
    CariSec_CariID := qryCariler.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TfrmCariSec.vmCarilerCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSecClick(self);
end;

procedure TfrmCariSec.FormCreate(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   CARÝ SEÇ';
  pnlHeader.color :=clGreen;

  qryCariler.Connection := dmMain.UniConn;
  if qryCariler.Active = False then
    qryCariler.Open;

  vmCariler.ApplyBestFit(nil);
end;

end.
