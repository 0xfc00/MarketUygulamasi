unit CariListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, main,MainDM,ListBaseFrm, dxSkinsCore,
  dxSkinBlue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, uni,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS, DBAccess,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, YeniCariKartFrm;

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
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qryCariler: TUniQuery;
    dsCariler: TDataSource;
    cxGrid1DBTableView1CARIKODU: TcxGridDBColumn;
    cxGrid1DBTableView1UNVAN: TcxGridDBColumn;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1GROUPID: TcxGridDBColumn;
    cxGrid1DBTableView1ILCE: TcxGridDBColumn;
    cxGrid1DBTableView1SEHIR: TcxGridDBColumn;
    cxGrid1DBTableView1POSTAKODU: TcxGridDBColumn;
    cxGrid1DBTableView1ULKE: TcxGridDBColumn;
    cxGrid1DBTableView1VERGIDAIRESI: TcxGridDBColumn;
    cxGrid1DBTableView1VERGINO: TcxGridDBColumn;
    cxGrid1DBTableView1BANKA: TcxGridDBColumn;
    cxGrid1DBTableView1BANKAHESAPNO: TcxGridDBColumn;
    cxGrid1DBTableView1ISTELEFONU1: TcxGridDBColumn;
    cxGrid1DBTableView1ISTELEFONU2: TcxGridDBColumn;
    cxGrid1DBTableView1FAX: TcxGridDBColumn;
    cxGrid1DBTableView1CEPTELEFONU: TcxGridDBColumn;
    cxGrid1DBTableView1EVTELEFONU: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1ADRES1: TcxGridDBColumn;
    cxGrid1DBTableView1ADRES2: TcxGridDBColumn;
    cxGrid1DBTableView1ADRES3: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA1: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA2: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA3: TcxGridDBColumn;
    cxGrid1DBTableView1BORC: TcxGridDBColumn;
    cxGrid1DBTableView1ALACAK: TcxGridDBColumn;
    cxGrid1DBTableView1BAKIYE: TcxGridDBColumn;
    cxGrid1DBTableView1VERESIYE_LIMITI: TcxGridDBColumn;
    cxGrid1DBTableView1VERESIYE_UYAR: TcxGridDBColumn;
    cxGrid1DBTableView1VERESIYE_SURESI: TcxGridDBColumn;
    cxGrid1DBTableView1RENK: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL2: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL3: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL_SEC: TcxGridDBColumn;
    cxGrid1DBTableView1TIPI: TcxGridDBColumn;
    cxGrid1DBTableView1AUTO_DISCOUNT: TcxGridDBColumn;
    procedure btnKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acCariDuzenleExecute(Sender: TObject);
    procedure acCariKartSilExecute(Sender: TObject);
    procedure acCariHarListExecute(Sender: TObject);
    procedure btnKaydetVeYeniClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
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

procedure TfrmCariList.cxGrid1DBTableView1CellDblClick(
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
end;

end.
