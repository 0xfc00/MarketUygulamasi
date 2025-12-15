unit CariSecFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, dxSkinsCore, dxSkinBlue,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, MemDS,
  DBAccess, Uni,Main,MainDM;

type
  TfrmCariSec = class(TfrmKartBase)
    qryCariler: TUniQuery;
    dsCariler: TDataSource;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnSec: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1STOKKODU: TcxGridDBColumn;
    cxGrid1DBTableView1STOKADI: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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

procedure TfrmCariSec.cxGrid1DBTableView1CellDblClick(
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
end;

end.
