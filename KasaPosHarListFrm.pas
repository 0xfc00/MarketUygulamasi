unit KasaPosHarListFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, ListBaseFrm,

  cxPC, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,

  Data.DB,  System.DateUtils,
  cxGridCustomTableView, cxGridDBTableView, cxGridLevel,
  cxGrid, DBAccess, Uni,

  cxCalendar, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, Vcl.Menus, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGridTableView, cxClasses, cxGridCustomView;

type
  TfrmKasaPosHarList = class(TfrmListBase)
    pcAna: TcxPageControl;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    shtKasa: TcxTabSheet;
    shtPos: TcxTabSheet;
    Panel1: TPanel;
    btnSonHafta: TcxButton;
    btnDun: TcxButton;
    btnBugun: TcxButton;
    btnSonAy: TcxButton;
    qryKasaHar: TUniQuery;
    dsKasaHar: TDataSource;
    cxGrid1: TcxGrid;
    vwKasa: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    vwKasaTARIH: TcxGridDBColumn;
    vwKasaGIREN: TcxGridDBColumn;
    vwKasaCIKAN: TcxGridDBColumn;
    vwKasaCARIID: TcxGridDBColumn;
    vwKasaEVRAKNO: TcxGridDBColumn;
    vwKasaUSERID: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    vwPos: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qryPosHar: TUniQuery;
    dsPosHar: TDataSource;
    vwPosPOSID: TcxGridDBColumn;
    vwPosTARIH: TcxGridDBColumn;
    vwPosBORC: TcxGridDBColumn;
    vwPosALACAK: TcxGridDBColumn;
    vwPosCARIID: TcxGridDBColumn;
    vwPosEVRAKNO: TcxGridDBColumn;
    vwPosUSERID: TcxGridDBColumn;
    Panel2: TPanel;
    btnFiltrele: TcxButton;
    dtBit: TcxDateEdit;
    dtBas: TcxDateEdit;
    btnSil: TcxButton;
    vwKasaColumn1: TcxGridDBColumn;
    vwPosColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnBugunClick(Sender: TObject);
    procedure btnDunClick(Sender: TObject);
    procedure btnSonHaftaClick(Sender: TObject);
    procedure btnSonAyClick(Sender: TObject);
    procedure btnFiltreleClick(Sender: TObject);
    procedure pcAnaChange(Sender: TObject);
    procedure btnSilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKasaPosHarList: TfrmKasaPosHarList;


implementation

{$R *.dfm}

uses Main;

var
  qryKasaHarSQL,qryPosHarSQL : string;

procedure TfrmKasaPosHarList.btnBugunClick(Sender: TObject);
begin
  dtBas.date := now;
  dtbit.date := now;
  btnFiltreleClick(sender);
end;

procedure TfrmKasaPosHarList.btnDunClick(Sender: TObject);
begin
  dtBas.date := IncDay(now, -1);
  dtbit.date := now;
  btnFiltreleClick(sender);
end;

procedure TfrmKasaPosHarList.btnFiltreleClick(Sender: TObject);
var
  sql : string;
  q : TUniQuery;
Begin
  if pcAna.ActivePage = shtKasa then
  begin
    sql := qryKasaHarSQL;
    q := qryKasaHar;
  end
  else
  if pcAna.ActivePage = shtPos then
  begin
    sql := qryPosHarSQL;
    q:= qryPosHar
  end
  else
    exit;

  q.sql.text := sql;
  q.sql.add(' and CAST(ISLEMTARIHI AS date) >= :bastarih and CAST(ISLEMTARIHI AS date) <= :bittarih');
  q.ParamByName('bastarih').AsDate := dtBas.Date;
  q.ParamByName('bittarih').AsDate := dtBit.Date;
  qAcKapa_fn(q);

  if pcAna.ActivePage = shtKasa then
    vwKasa.ApplyBestFit(nil)
  else
  if pcAna.ActivePage = shtPos then
    vwPos.ApplyBestFit(nil);
end;

procedure TfrmKasaPosHarList.btnKapatClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmKasaPosHarList.btnSilClick(Sender: TObject);
begin
  inherited;
  if pcAna.ActivePage = shtKasa then
  begin
    if not qryKasaHar.IsEmpty then
      if KasaHareketSil_fn(qryKasaHar.FieldByName('ID').asstring) then qryKasaHar.refresh;
  end
  else
  if pcAna.ActivePage = shtPos then
  begin
    if not qryPosHar.IsEmpty then
      MesajHata('Bu iþlem kasiyer satýþ yada faturaya ait. Bu ekrandan silinemez');
  end
  else
    exit;
end;

procedure TfrmKasaPosHarList.btnSonAyClick(Sender: TObject);
begin
  dtBas.date := IncMonth(now, -1);
  dtbit.date := now;
  btnFiltreleClick(sender);
end;

procedure TfrmKasaPosHarList.btnSonHaftaClick(Sender: TObject);
begin
  dtBas.date := IncWeek(now, -1);
  dtbit.date := now;
  btnFiltreleClick(sender);
end;

procedure TfrmKasaPosHarList.FormCreate(Sender: TObject);
begin
  qryKasaHarSQL := qryKasaHar.SQL.text;
  qryPosHarSQL  := qryPosHar.SQL.text;

  pnlHeader.Caption := '   KASA / POS HAREKETLERÝ';
  pnlHeader.Color := clgreen;
  TumQuerylereConnectionAta(self);

  pcAna.ActivePageIndex := 0;
  btnBugunClick(sender);
end;

procedure TfrmKasaPosHarList.pcAnaChange(Sender: TObject);
begin
  btnSil.Enabled := pcAna.ActivePage = shtKasa;
  btnFiltreleClick(sender);
end;

end.
