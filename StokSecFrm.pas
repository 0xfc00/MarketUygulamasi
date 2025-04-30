unit StokSecFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, MainDM, Main;

type
  TfrmStokSec = class(TfrmKartBase)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1STOKKODU: TcxGridDBColumn;
    cxGrid1DBTableView1STOKADI: TcxGridDBColumn;
    cxGrid1DBTableView1BARKOD: TcxGridDBColumn;
    cxGrid1DBTableView1SATISFIYATI: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qryStoklar: TUniQuery;
    dsStoklar: TDataSource;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnSec: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnSecClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
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

procedure TfrmStokSec.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSecClick(Self);
end;

procedure TfrmStokSec.FormCreate(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   STOK SEÇ';

  qryStoklar.Connection := dmMain.UniConn;
  if qryStoklar.Active = False then
    qryStoklar.Open;
end;

end.
