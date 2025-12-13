unit TanimlarFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, dxBarBuiltInMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, Vcl.ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, cxPC, MemDS, DBAccess, Uni, dxSkinsCore, dxSkinBlue, MainDM;

type
  TfrmTanimlar = class(TfrmKartBase)
    pc: TcxPageControl;
    shBirimler: TcxTabSheet;
    shGruplar: TcxTabSheet;
    shMarkalar: TcxTabSheet;
    shReyonRaf: TcxTabSheet;
    grdBirimler: TcxGrid;
    viewBrimler: TcxGridDBTableView;
    grdBirimlerLevel1: TcxGridLevel;
    Panel2: TPanel;
    edtBirimEkle: TcxTextEdit;
    btnBirimEkle: TcxButton;
    qryBirim: TUniQuery;
    dsBrim: TDataSource;
    viewBrimlerBIRIMADI: TcxGridDBColumn;
    qryStokGrup: TUniQuery;
    dsStokGrup: TDataSource;
    qryMarka: TUniQuery;
    dsMarka: TDataSource;
    qryReyonRaf: TUniQuery;
    dsReyonRaf: TDataSource;
    grdStokGrup: TcxGrid;
    viewStokGrup: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    edtGrupEkle: TcxTextEdit;
    btnGrupEkle: TcxButton;
    pnlAlt: TPanel;
    cxButton1: TcxButton;
    grdMarkalar: TcxGrid;
    ViewMarkalar: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel3: TPanel;
    edtMarkaEkle: TcxTextEdit;
    btnMarkaEkle: TcxButton;
    pmGrid: TPopupMenu;
    Sil1: TMenuItem;
    grdReyonRaf: TcxGrid;
    viewReyonRaf: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel4: TPanel;
    edtReyonRafEkle: TcxTextEdit;
    btnReyonRafEkle: TcxButton;
    shCariGruplar: TcxTabSheet;
    cxGrid1: TcxGrid;
    viewCariGrup: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel5: TPanel;
    edtCariGrupEkle: TcxTextEdit;
    btnCariGrupEkle: TcxButton;
    qryCariGrup: TUniQuery;
    dsCariGrup: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnBirimEkleClick(Sender: TObject);
    procedure Sil1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTanimlar: TfrmTanimlar;

implementation

{$R *.dfm}

uses
  Main, _cons;

procedure TfrmTanimlar.btnBirimEkleClick(Sender: TObject);
var
  sTabloAdi, sAlanAdi, sVeri, sSonuc : string;
  TextEdit : TcxTextEdit;
  qry : TUniQuery;
begin
  if Sender = btnBirimEkle then
  begin
    sTabloAdi := 'T_BIRIM';
    sAlanAdi  := 'BIRIMADI';
    TextEdit  := edtBirimEkle;
    qry       := qryBirim;
  end;

  if Sender = btnGrupEkle then
  begin
    sTabloAdi := 'T_STOKGRUP';
    sAlanAdi  := 'GRUPADI';
    TextEdit  := edtGrupEkle;
    qry       := qryStokGrup;
  end;

  if Sender = btnMarkaEkle then
  begin
    sTabloAdi := 'T_MARKA';
    sAlanAdi  := 'MARKAADI';
    TextEdit  := edtMarkaEkle;
    qry       := qryMarka;
  end;

  if Sender = btnReyonRafEkle then
  begin
    sTabloAdi := 'T_REYONRAF';
    sAlanAdi  := 'REYONRAFADI';
    TextEdit  := edtReyonRafEkle;
    qry       := qryReyonRaf;
  end;

  if Sender = btnCariGrupEkle then
  begin
    sTabloAdi := 'T_CARIGRUP';
    sAlanAdi  := 'GRUPADI';
    TextEdit  := edtCariGrupEkle;
    qry       := qryCariGrup;
  end;

  sVeri := trim(TextEdit.Text);
  if sVeri = EmptyStr then  exit;

  sSonuc := VeriCek_fn(sTabloAdi, sAlanAdi, sVeri, 'ID');

  if sSonuc <> VERI_YOK then
  begin
    MesajHata('Bu kayýt zaten mevcut');
    TextEdit.SetFocus;
    TextEdit.SelectAll;
    exit;
  end;

  sSonuc := VeriEkle_fn(sTabloAdi, sAlanAdi, sVeri);

  if sSonuc = 'OK' then
  begin
    qAcKapa_fn(qry);
    TextEdit.SetFocus;
    TextEdit.Clear;
  end
  else
    MesajHata(sSonuc);
end;

procedure TfrmTanimlar.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTanimlar.FormCreate(Sender: TObject);
var
  i : integer;
begin
  inherited;
  pnlHeader.Caption := '   TANIMLAR';
  pc.ActivePageIndex := 0;

  for I := 0 to ComponentCount-1 do
    if Components[i] is TUniQuery then
    begin
      TUniQuery(Components[i]).Connection := dmMain.UniConn;

      if Components[i].Tag = 0 then
        TUniQuery(Components[i]).Open;
    end;
end;

procedure TfrmTanimlar.Sil1Click(Sender: TObject);
var
  sAlanAdi, sTabloAdi, sVeri, sSonuc : string;
  TextEdit : TcxTextEdit;
  qry : TUniQuery;
begin
  inherited;
  sTabloAdi := 'STOK';

  if pc.ActivePage = shBirimler then
  begin
    qry       := qryBirim;
    sAlanAdi  := 'BIRIMID';
  end;

  if pc.ActivePage = shGruplar then
  begin
    qry       := qryStokGrup;
    sAlanAdi  := 'GRUPID';
  end;

  if pc.ActivePage = shMarkalar then
  begin
    qry       := qryMarka;
    sAlanAdi  := 'MARKAID';
  end;

  if pc.ActivePage = shReyonRaf then
  begin
    qry       := qryReyonRaf;
    sAlanAdi  := 'REYONRAFID';
  end;

  if pc.ActivePage = shCariGruplar then
  begin
    qry       := qryCariGrup;
    sAlanAdi  := 'GROUPID';
    sTabloAdi := 'CARI';
  end;

  if qry.IsEmpty then exit;

  if VeriCek_fn(sTabloAdi, sAlanAdi, qry.FieldByName('ID').AsString, 'ID') <> VERI_YOK then
  begin
    MesajHata('Bu veri kartlarda kullanýlmýþ. Silinemez!');
    exit;
  end;

  qry.Delete;
  qAcKapa_fn(qry);

//  if pc.ActivePage = shGruplar then
//  begin
//    if qryStokGrup.IsEmpty then exit;
//
//    if VeriCek_fn('STOK', 'GRUPID', qryStokGrup.FieldByName('ID').AsString, 'ID') <> VERI_YOK then
//    begin
//      UyarHata('Bu grup adý stok kartlarýnda kullanýlmýþ. Silinemez!');
//      exit;
//    end;
//
//    qryStokGrup.Delete;
//    qAcKapa_fn(qryStokGrup);
//  end;
//
//  if pc.ActivePage = shMarkalar then
//  begin
//    if qryStokGrup.IsEmpty then exit;
//
//    if VeriCek_fn('STOK', 'MARKAID', qryMarka.FieldByName('ID').AsString, 'ID') <> VERI_YOK then
//    begin
//      UyarHata('Bu marka stok kartlarýnda kullanýlmýþ. Silinemez!');
//      exit;
//    end;
//
//    qryMarka.Delete;
//    qAcKapa_fn(qryMarka);
//  end;
end;

end.
