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
  dxSkinsCore, dxSkinBlue, dxCore, dxSkinsForm;

type
  TfrmStokList = class(TfrmListBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnKaydetVeYeni: TcxButton;
    btnSil: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryStoklar: TUniQuery;
    dsStoklar: TDataSource;
    cxGrid1DBTableView1STOKKODU: TcxGridDBColumn;
    cxGrid1DBTableView1STOKADI: TcxGridDBColumn;
    cxGrid1DBTableView1BARKOD: TcxGridDBColumn;
    cxGrid1DBTableView1URUNMARKASI: TcxGridDBColumn;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1BIRIMID: TcxGridDBColumn;
    cxGrid1DBTableView1GRUPID: TcxGridDBColumn;
    cxGrid1DBTableView1MARKAID: TcxGridDBColumn;
    cxGrid1DBTableView1KDV: TcxGridDBColumn;
    cxGrid1DBTableView1SONALISFIYATI: TcxGridDBColumn;
    cxGrid1DBTableView1SATISFIYATI: TcxGridDBColumn;
    cxGrid1DBTableView1SATISFIYATI2: TcxGridDBColumn;
    cxGrid1DBTableView1SATISFIYATI3: TcxGridDBColumn;
    cxGrid1DBTableView1ALISFIYATI: TcxGridDBColumn;
    cxGrid1DBTableView1REYONRAFID: TcxGridDBColumn;
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
    procedure FormCreate(Sender: TObject);
    procedure acStokDuzenleExecute(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure acStokKartSilExecute(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnKaydetVeYeniClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure acStokHarListExecute(Sender: TObject);
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

procedure TfrmStokList.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  acStokDuzenleExecute(Self);
end;

procedure TfrmStokList.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  pnlHeader.Caption := '   STOK KARTLARI';
  pnlHeader.color :=clGreen;

  for I := 0 to ComponentCount-1 do
    if Components[i] is TUniQuery then
    begin
      TUniQuery(Components[i]).Connection := dmMain.UniConn;

      if Components[i].Tag = 0 then
        TUniQuery(Components[i]).Open;
    end;
end;

end.
