unit CariListFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, main,ListBaseFrm,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, FireDAC.Comp.Client,

  Data.DB,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGrid, YeniCariKartFrm, dxSkinsCore, dxSkinBlue, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, MemDS, DBAccess, System.Actions, cxClasses,
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
  TfrmCariList = class(TfrmListBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnKaydetVeYeni: TcxButton;
    btnSil: TcxButton;
    btnStokDuzenle: TcxButton;
    ActionList1: TActionList;
    acCariDuzenle: TAction;
    acCariKartSil: TAction;
    acCariHarList: TAction;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    vwCariList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qryCariler: TFDQuery;
    dsCariler: TDataSource;
    vwCariListCARIKODU: TcxGridDBColumn;
    vwCariListUNVAN: TcxGridDBColumn;
    vwCariListGROUPID: TcxGridDBColumn;
    vwCariListISTELEFONU1: TcxGridDBColumn;
    vwCariListCEPTELEFONU: TcxGridDBColumn;
    vwCariListEMAIL: TcxGridDBColumn;
    vwCariListBORC: TcxGridDBColumn;
    vwCariListALACAK: TcxGridDBColumn;
    vwCariListBAKIYE: TcxGridDBColumn;
    vwCariListVERESIYE_LIMITI: TcxGridDBColumn;
    vwCariListTIPI: TcxGridDBColumn;
    qryGrupLookup: TFDQuery;
    dsGrupLookup: TDataSource;
    pmGrid: TPopupMenu;
    S1: TMenuItem;
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acCariDuzenleExecute(Sender: TObject);
    procedure acCariKartSilExecute(Sender: TObject);
    procedure acCariHarListExecute(Sender: TObject);
    procedure btnKaydetVeYeniClick(Sender: TObject);
    procedure vwCariListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure S1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCariList: TfrmCariList;

implementation

{$R *.dfm}

procedure TfrmCariList.acCariDuzenleExecute(Sender: TObject);
var
  FForm : TfrmYeniCariKart;
begin
  if trim(qryCariler.FieldByName('ID').AsString) <> EmptyStr then
  begin
    FForm := TfrmYeniCariKart.Create(Application);
    FForm.CariID := qryCariler.FieldByName('ID').AsString;
    FForm.ShowModal;

    qAcKapa_fn(qryCariler);
  end;

end;

procedure TfrmCariList.acCariHarListExecute(Sender: TObject);
begin
  inherited;
  frmMain.CariHarListFormuAc_fn(qryCariler.FieldByName('ID').AsString);
end;

procedure TfrmCariList.acCariKartSilExecute(Sender: TObject);
begin
  inherited;
  CariIdKartiSil_fn(qryCariler.FieldByName('ID').AsString);
  qAcKapa_fn(qryCariler);
end;

procedure TfrmCariList.btnKapatClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCariList.btnKaydetVeYeniClick(Sender: TObject);
begin
  inherited;
  frmMain.acYeniCariKartiExecute(Self);
  qAcKapa_fn(qryCariler);
end;

procedure TfrmCariList.vwCariListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  acCariDuzenleExecute(Self);
end;

procedure TfrmCariList.FormCreate(Sender: TObject);
var
  i : integer;
begin
  inherited;
  pnlHeader.Caption := '   CARÝ KARTLARI';
  pnlHeader.color :=clGreen;

  TumQuerylereConnectionAta(self);
  TumQueryleriAc(self);
  vwCariList.ApplyBestFit(nil);
end;

procedure TfrmCariList.S1Click(Sender: TObject);
begin
  inherited;
  S1.Checked := not s1.Checked;
  vwCariList.OptionsData.Editing := S1.Checked;
end;

end.
