unit frmHizliSatisButonlariF;

interface

uses
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,

  Data.DB,
  Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridDBTableView,
  cxGrid, cxGroupBox, MemDS,
  Uni, KartBaseFrm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxDBLookupComboBox, Vcl.Menus, DBAccess,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView;

type
  TfrmHizliSatisButonlari = class(Tfrmkartbase)
    cxGroupBox1: TcxGroupBox;
    grdHsGrup: TcxGrid;
    viewHsGrup: TcxGridDBTableView;
    viewHsGrupColumn1: TcxGridDBColumn;
    viewHsGrupadi: TcxGridDBColumn;
    viewHsGrupsira: TcxGridDBColumn;
    grdHsGrupLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox3: TcxGroupBox;
    grdStoklar: TcxGrid;
    viewStoklar: TcxGridDBTableView;
    viewStoklarstokid: TcxGridDBColumn;
    viewStoklarsira: TcxGridDBColumn;
    grdStoklarLevel1: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGroupBox4: TcxGroupBox;
    btnKapat: TcxButton;
    btnKaydet: TcxButton;
    dsHsGrup: TDataSource;
    qryHsGrup: TUniQuery;
    dsHsStoklar: TDataSource;
    qryHsStoklar: TUniQuery;
    qryStok: TUniQuery;
    dsStok: TDataSource;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHizliSatisButonlari: TfrmHizliSatisButonlari;

implementation

{$R *.dfm}

uses Main;

procedure TfrmHizliSatisButonlari.btnKapatClick(Sender: TObject);
begin
  if qryHsGrup.State    in [dsedit,dsinsert] then qryHsGrup.cancel;
  if qryHsStoklar.State in [dsedit,dsinsert] then qryHsStoklar.cancel;

  close;
end;

procedure TfrmHizliSatisButonlari.btnKaydetClick(Sender: TObject);
begin
  if qryHsGrup.State    in [dsedit,dsinsert] then qryHsGrup.Post;
  if qryHsStoklar.State in [dsedit,dsinsert] then qryHsStoklar.Post;
end;

procedure TfrmHizliSatisButonlari.cxButton1Click(Sender: TObject);
begin
  if qryHsGrup.State in [dsedit,dsinsert] then
  begin
    qryHsGrup.Post;
    qryHsGrup.Refresh;
  end;
  qryHsGrup.Append;
end;

procedure TfrmHizliSatisButonlari.cxButton2Click(Sender: TObject);
begin
  if qryHsGrup.IsEmpty then exit;
  if MesajSor('Seçili Grup ve ona baðlý tüm alt kayýtlar silinecek. Eminmisiniz?') then
    qryHsGrup.Delete;
    qryHsGrup.Refresh;
end;

procedure TfrmHizliSatisButonlari.cxButton3Click(Sender: TObject);
begin
  if qryHsGrup.IsEmpty then exit;

  if qryHsGrup.State in [dsedit,dsinsert] then
  begin
    qryHsGrup.Post;
    qryHsGrup.Refresh;
  end;

  if qryHsStoklar.State in [dsedit,dsinsert] then
  begin
    qryHsStoklar.Post;
    qryHsStoklar.Refresh;
  end;
  qryHsStoklar.Append;
end;

procedure TfrmHizliSatisButonlari.cxButton4Click(Sender: TObject);
begin
  if qryHsStoklar.IsEmpty then exit;

  qryHsStoklar.Delete;
  qryHsStoklar.Refresh;
end;

procedure TfrmHizliSatisButonlari.FormCreate(Sender: TObject);
begin
  inherited
  
  TumQuerylereConnectionAta(self);
  TumQueryleriAc(self);

end;
procedure TfrmHizliSatisButonlari.FormShow(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   HIZLI SATIÞ BUTONLARI';
  pnlHeader.color :=clGreen;
end;

end.
