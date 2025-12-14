unit KasaPosHarListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListBaseFrm,  dxBarBuiltInMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlue, Vcl.Menus, cxPC, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,  System.DateUtils,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

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
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1GIREN: TcxGridDBColumn;
    cxGrid1DBTableView1CIKAN: TcxGridDBColumn;
    cxGrid1DBTableView1CARIID: TcxGridDBColumn;
    cxGrid1DBTableView1EVRAKNO: TcxGridDBColumn;
    cxGrid1DBTableView1USERID: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qryPosHar: TUniQuery;
    dsPosHar: TDataSource;
    cxGridDBTableView1POSID: TcxGridDBColumn;
    cxGridDBTableView1TARIH: TcxGridDBColumn;
    cxGridDBTableView1BORC: TcxGridDBColumn;
    cxGridDBTableView1ALACAK: TcxGridDBColumn;
    cxGridDBTableView1CARIID: TcxGridDBColumn;
    cxGridDBTableView1EVRAKNO: TcxGridDBColumn;
    cxGridDBTableView1USERID: TcxGridDBColumn;
    Panel2: TPanel;
    btnFiltrele: TcxButton;
    dtBit: TcxDateEdit;
    dtBas: TcxDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBugunClick(Sender: TObject);
    procedure btnDunClick(Sender: TObject);
    procedure btnSonHaftaClick(Sender: TObject);
    procedure btnSonAyClick(Sender: TObject);
    procedure btnFiltreleClick(Sender: TObject);
    procedure pcAnaChange(Sender: TObject);
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
  TableName : string;
  q : TUniQuery;
Begin
  if pcAna.ActivePage = shtKasa then
  begin
    TableName := 'KASA_H';
    q := qryKasaHar;
  end
  else
  if pcAna.ActivePage = shtPos then
  begin
    TableName := 'POS_H';
    q:= qryPosHar
  end
  else
    exit;

  q.sql.text := 'select * from ' + TableName + ' where CAST(TARIH AS date) >= :bastarih and CAST(TARIH AS date) <= :bittarih';
  q.ParamByName('bastarih').AsDate := dtBas.Date;
  q.ParamByName('bittarih').AsDate := dtBit.Date;
  qAcKapa_fn(q);
end;

procedure TfrmKasaPosHarList.btnKapatClick(Sender: TObject);
begin
  CLOSE;
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
  pnlHeader.Caption := '   KASA / POS HAREKETLERÝ';
  TumQuerylereConnectionAta(self);
  dtBas.date := now;
  dtbit.date := now;
  pcAna.ActivePageIndex := 0;
end;

procedure TfrmKasaPosHarList.FormShow(Sender: TObject);
begin
  btnFiltreleClick(sender);
end;

procedure TfrmKasaPosHarList.pcAnaChange(Sender: TObject);
begin
  btnFiltreleClick(sender);
end;

end.
