unit StokListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListBaseFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, uni,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, MemDS,
  DBAccess, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, System.Actions, Vcl.ActnList,
  dxSkinsCore, dxSkinBlue, dxCore, dxSkinsForm, stokAktarimFormF, CariListFrm;

type
  TfrmStokList = class(TfrmListBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnKaydetVeYeni: TcxButton;
    btnSil: TcxButton;
    vwStoklar: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryStoklar: TUniQuery;
    dsStoklar: TDataSource;
    vwStoklarSTOKKODU: TcxGridDBColumn;
    vwStoklarSTOKADI: TcxGridDBColumn;
    vwStoklarBARKOD: TcxGridDBColumn;
    vwStoklarURUNMARKASI: TcxGridDBColumn;
    vwStoklarBIRIMID: TcxGridDBColumn;
    vwStoklarGRUPID: TcxGridDBColumn;
    vwStoklarKDV: TcxGridDBColumn;
    vwStoklarSONALISFIYATI: TcxGridDBColumn;
    vwStoklarSATISFIYATI: TcxGridDBColumn;
    vwStoklarREYONRAFID: TcxGridDBColumn;
    ActionList1: TActionList;
    acStokDuzenle: TAction;
    btnStokDuzenle: TcxButton;
    acStokKartSil: TAction;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    acStokHarList: TAction;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    vwStoklarColumn1: TcxGridDBColumn;
    vwStoklarColumn2: TcxGridDBColumn;
    vwStoklarColumn3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure acStokDuzenleExecute(Sender: TObject);
    procedure vwStoklarCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure acStokKartSilExecute(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnKaydetVeYeniClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure acStokHarListExecute(Sender: TObject);
    procedure E1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStokList: TfrmStokList;

implementation

{$R *.dfm}

uses MainDM,Main, YeniStokKartiFrm;

procedure TfrmStokList.acStokDuzenleExecute(Sender: TObject);
var
  FForm : TfrmYeniStokKarti;
begin
  if trim(qryStoklar.FieldByName('ID').AsString) <> EmptyStr then
  begin
    FForm := TfrmYeniStokKarti.Create(Application);
    FForm.StokID := qryStoklar.FieldByName('ID').AsString;
    FForm.ShowModal;

    qAcKapa_fn(qryStoklar);
  end;
end;

procedure TfrmStokList.acStokHarListExecute(Sender: TObject);
begin
  inherited;
  frmMain.StokHarListFormuAc_fn(qryStoklar.FieldByName('ID').AsString);
end;

procedure TfrmStokList.acStokKartSilExecute(Sender: TObject);
begin
  inherited;
  StokIdKartiSil_fn(qryStoklar.FieldByName('ID').AsString);
  qAcKapa_fn(qryStoklar);

//  if trim(qryStoklar.FieldByName('ID').AsString) <> EmptyStr then
//  begin
//    if StokIdHareketVarmi_fn(trim(qryStoklar.FieldByName('ID').AsString)) then
//    begin
//      MesajHata('Bu stok kartýna ait hareket var. Silinemez..');
//      exit;
//    end
//    else
//    if MesajSor('Seçili stok kartý silinecek. Eminmisiniz?') then
//    begin
//      qryStoklar.Delete;
//      qAcKapa_fn(qryStoklar);
//    end;
//  end;
end;

procedure TfrmStokList.btnKapatClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmStokList.btnKaydetVeYeniClick(Sender: TObject);
begin
  inherited;
  frmMain.acYeniStokKartiExecute(Self);
  qAcKapa_fn(qryStoklar);
end;

procedure TfrmStokList.cxButton1Click(Sender: TObject);
begin
  inherited;
  frmMain.StokGirisCikisFormuAc_fn('G', qryStoklar.FieldByName('ID').AsString);
end;

procedure TfrmStokList.cxButton3Click(Sender: TObject);
begin
  inherited;
  frmMain.StokGirisCikisFormuAc_fn('C', qryStoklar.FieldByName('ID').AsString);
end;

procedure TfrmStokList.vwStoklarCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  acStokDuzenleExecute(Self);
end;

procedure TfrmStokList.E1Click(Sender: TObject);
begin
  inherited;
  with TstokAktarimForm.create(nil) do
    showmodal;
end;

procedure TfrmStokList.FormCreate(Sender: TObject);
begin
  inherited;
  TumQuerylereConnectionAta(self);
  TumQueryleriAc(self);

  pnlHeader.Caption := '   STOK KARTLARI';
  pnlHeader.color :=clGreen;



  vwStoklar.ApplyBestFit(nil);
end;

end.
