unit CariHarListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListBaseFrm,uni,main,MainDM, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue,
  cxGeometry, dxFramedControl, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.Menus, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  MemDS, DBAccess, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxDBEdit, dxPanel;

type
  TfrmCariHarList = class(TfrmListBase)
    dxPanel1: TdxPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qryCari: TUniQuery;
    dsCari: TDataSource;
    qryCariHar: TUniQuery;
    dsCariHar: TDataSource;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnSil: TcxButton;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1BORC: TcxGridDBColumn;
    cxGrid1DBTableView1ALACAK: TcxGridDBColumn;
    cxGrid1DBTableView1VADETARIHI: TcxGridDBColumn;
    cxGrid1DBTableView1EVRAKNO: TcxGridDBColumn;
    cxGrid1DBTableView1KASAHID: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA1: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA2: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA3: TcxGridDBColumn;
    cxGrid1DBTableView1ISLEMTURU: TcxGridDBColumn;
    cxGrid1DBTableView1FATURAID: TcxGridDBColumn;
    cxGrid1DBTableView1PERSONEL: TcxGridDBColumn;
    cxGrid1DBTableView1POSHID: TcxGridDBColumn;
    cxGrid1DBTableView1COMNAMETIME: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATECOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1ZAMAN: TcxGridDBColumn;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CariID : string;
  end;

var
  frmCariHarList: TfrmCariHarList;

implementation

{$R *.dfm}

procedure TfrmCariHarList.btnKapatClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCariHarList.FormCreate(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   CARÝ HAREKETLERÝ';

  qryCari.Connection        := dmMain.UniConn;
  qryCariHar.Connection     := dmMain.UniConn;

//  if not qryCari.Active     then qryCari.Open;
//  if not qryCariHar.Active  then qryCariHar.Open;
end;

procedure TfrmCariHarList.FormShow(Sender: TObject);
begin
  inherited;
  qryCari.SQL.Add(' where ID =' + CariID);
  qryCariHar.SQL.Add(' where CARIID =' + CariID);

  qAcKapa_fn(qryCariHar);

  qAcKapa_fn(qryCari);
end;

end.
