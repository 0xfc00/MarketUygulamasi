unit StokHarListFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, ListBaseFrm, uni,

  Data.DB,
  DBAccess, cxDBEdit, Vcl.StdCtrls, dxPanel, cxButtons, Vcl.ExtCtrls, main,

  cxGridLevel,
  cxGridDBTableView,
  cxGrid, dxSkinsCore, dxSkinBlue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxGeometry, dxFramedControl,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData, MemDS,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  cxTextEdit;

type
  TfrmStokHarList = class(TfrmListBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnSil: TcxButton;
    dxPanel1: TdxPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    qryStok: TUniQuery;
    dsStok: TDataSource;
    qryStokHar: TUniQuery;
    dsStokHar: TDataSource;
    cxGrid1: TcxGrid;
    vw: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    vwISLEMTARIHI: TcxGridDBColumn;
    vwGIREN: TcxGridDBColumn;
    vwCIKAN: TcxGridDBColumn;
    vwACIKLAMA: TcxGridDBColumn;
    vwBIRIMADI: TcxGridDBColumn;
    vwCARIID: TcxGridDBColumn;
    vwTUTAR: TcxGridDBColumn;
    vwBIRIMFIYATI: TcxGridDBColumn;
    cxDBTextEdit8: TcxDBTextEdit;
    Label9: TLabel;
    vwColumn1: TcxGridDBColumn;
    vwColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StokID : string;
  end;

var
  frmStokHarList: TfrmStokHarList;

implementation

{$R *.dfm}



procedure TfrmStokHarList.btnKapatClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmStokHarList.btnSilClick(Sender: TObject);
begin
  inherited;
  if qryStokHar.RecordCount > 0 then
    if StokHareketSil_fn(qryStokHar.FieldByName('ID').AsString) then qryStokHar.Refresh;
end;

procedure TfrmStokHarList.FormCreate(Sender: TObject);

begin
  inherited;
  pnlHeader.Caption := '   STOK HAREKETLERÝ';
  pnlHeader.color :=clGreen;

  TumQuerylereConnectionAta(self);
end;

procedure TfrmStokHarList.FormShow(Sender: TObject);
begin
  qryStok.SQL.Add(' where ID =' + StokID);
  qryStokHar.SQL.Add(' and STOKID =' + StokID);

  TumQueryleriAc(self,true);
  //vw.ApplyBestFit(nil);
end;

end.
