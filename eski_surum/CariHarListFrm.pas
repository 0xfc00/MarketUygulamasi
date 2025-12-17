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
    vwCariHarlistVADETARIHI: TcxGridDBColumn;
    vwCariHarlistEVRAKNO: TcxGridDBColumn;
    vwCariHarlistKASAHID: TcxGridDBColumn;
    vwCariHarlistACIKLAMA1: TcxGridDBColumn;
    vwCariHarlistACIKLAMA2: TcxGridDBColumn;
    vwCariHarlistACIKLAMA3: TcxGridDBColumn;
    vwCariHarlistISLEMTURU: TcxGridDBColumn;
    vwCariHarlistFATURAID: TcxGridDBColumn;
    vwCariHarlistPERSONEL: TcxGridDBColumn;
    vwCariHarlistPOSHID: TcxGridDBColumn;
    vwCariHarlistCOMNAMETIME: TcxGridDBColumn;
    vwCariHarlistUPDATECOUNT: TcxGridDBColumn;
    vwCariHarlistZAMAN: TcxGridDBColumn;
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
  pnlHeader.color :=clGreen;

  TumQuerylereConnectionAta(self);
end;

procedure TfrmCariHarList.FormShow(Sender: TObject);
begin
  inherited;
  qryCari.SQL.Add(' and ID =' + CariID);
  qryCariHar.SQL.Add(' where CARIID =' + CariID);

  TumQueryleriAc(self, true);

  vwCariHarlist.ApplyBestFit(nil);
end;

end.
