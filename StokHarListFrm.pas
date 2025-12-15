unit StokHarListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListBaseFrm, uni, MainDM, dxSkinsCore,
  dxSkinBlue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxGeometry, dxFramedControl, cxContainer, cxEdit, Data.DB, MemDS,
  DBAccess, cxTextEdit, cxDBEdit, Vcl.StdCtrls, dxPanel, cxButtons, Vcl.ExtCtrls, main,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

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
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1ISLEMTIPI: TcxGridDBColumn;
    cxGrid1DBTableView1ISLEMTARIHI: TcxGridDBColumn;
    cxGrid1DBTableView1MIKTAR: TcxGridDBColumn;
    cxGrid1DBTableView1GIREN: TcxGridDBColumn;
    cxGrid1DBTableView1CIKAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    cxGrid1DBTableView1BIRIMADI: TcxGridDBColumn;
    cxGrid1DBTableView1CARIID: TcxGridDBColumn;
    cxGrid1DBTableView1EVRAKNO: TcxGridDBColumn;
    cxGrid1DBTableView1TUTAR: TcxGridDBColumn;
    cxGrid1DBTableView1BIRIMFIYATI: TcxGridDBColumn;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TfrmStokHarList.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  pnlHeader.Caption := '   STOK HAREKETLERÝ';
  pnlHeader.color :=clGreen;

  for I := 0 to ComponentCount-1 do
    if Components[i] is TUniQuery then
    begin
      TUniQuery(Components[i]).Connection := dmMain.UniConn;

      if Components[i].Tag = 0 then
        TUniQuery(Components[i]).Open;
    end;

end;

procedure TfrmStokHarList.FormShow(Sender: TObject);
begin
  qryStok.SQL.Add(' where ID =' + StokID);
  qryStokHar.SQL.Add(' where STOKID =' + StokID);

  qAcKapa_fn(qryStok);
  qAcKapa_fn(qryStokHar);
end;

end.
