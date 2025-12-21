unit CariHarListFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, ListBaseFrm,uni,main,



  Data.DB, cxGridCustomTableView,
  cxGridDBTableView, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  DBAccess, cxGridLevel, cxGrid,
  cxDBEdit, dxPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, cxGeometry, dxFramedControl,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData, Vcl.Menus, MemDS,
  cxGridTableView, cxClasses, cxGridCustomView, cxTextEdit;

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
    vwCariHarlist: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qryCari: TUniQuery;
    dsCari: TDataSource;
    qryCariHar: TUniQuery;
    dsCariHar: TDataSource;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnSil: TcxButton;
    vwCariHarlistTARIH: TcxGridDBColumn;
    vwCariHarlistBORC: TcxGridDBColumn;
    vwCariHarlistALACAK: TcxGridDBColumn;
    vwCariHarlistEVRAKNO: TcxGridDBColumn;
    vwCariHarlistACIKLAMA1: TcxGridDBColumn;
    vwCariHarlistISLEMTURU: TcxGridDBColumn;
    vwCariHarlistPOSHID: TcxGridDBColumn;
    vwCariHarlistColumn1: TcxGridDBColumn;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnSilClick(Sender: TObject);
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

procedure TfrmCariHarList.btnSilClick(Sender: TObject);
begin
  inherited;
  if qryCariHar.RecordCount > 0 then
    if CariHareketSil_fn(qryCariHar.FieldByName('ID').AsString) then qryCariHar.Refresh;
end;

procedure TfrmCariHarList.FormCreate(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   CARÝ HAREKETLERÝ';
  pnlHeader.color :=clGreen;

  TumQuerylereConnectionAta(self);
end;

procedure TfrmCariHarList.FormShow(Sender: TObject);
begin
  inherited;
  qryCari.SQL.Add(' and ID =' + CariID);
  qryCariHar.SQL.Add(' and CARIID =' + CariID);

  TumQueryleriAc(self, true);

  vwCariHarlist.ApplyBestFit(nil);
end;

end.
