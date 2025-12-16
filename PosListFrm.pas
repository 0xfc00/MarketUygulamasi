unit PosListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListBaseFrm, dxSkinsCore, dxSkinBlue,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, System.Actions,
  Vcl.ActnList, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, _func;

type
  TfrmPosList = class(TfrmListBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qryPoslar: TUniQuery;
    dsPoslar: TDataSource;
    cxGrid1DBTableView1POSADI: TcxGridDBColumn;
    cxGrid1DBTableView1HESAPKODU: TcxGridDBColumn;
    cxGrid1DBTableView1TERMINALNO: TcxGridDBColumn;
    cxGrid1DBTableView1BANKAADI: TcxGridDBColumn;
    cxGrid1DBTableView1UYEISYERINO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure qryPoslarBeforePost(DataSet: TDataSet);
    procedure qryPoslarBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosList: TfrmPosList;

implementation

{$R *.dfm}

uses Main;

procedure TfrmPosList.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPosList.FormCreate(Sender: TObject);
begin
  pnlHeader.Caption := '   POS Tanýmlarý';
  pnlHeader.color :=clGreen;

  TumQuerylereConnectionAta(self);
  TumQueryleriAc(self);
end;

procedure TfrmPosList.qryPoslarBeforeDelete(DataSet: TDataSet);
begin
   if PosHareketVarmi_fn(trim(DataSet.fieldbyname('ID').asstring)) then
    begin
      MesajHata('Bu POS hesabýna baðlý hareket var. Silinemez..');
      Abort;
      exit;
    end
end;

procedure TfrmPosList.qryPoslarBeforePost(DataSet: TDataSet);
begin
  if trim(DataSet.fieldbyname('POSADI').asstring) = EmptyStr then
  begin
    MesajHata('POS adý girilmedi..');
    Abort;
    Exit;
  end;

  if DataSet.State in  [dsInsert] then
    if PosTanimiVarmi_fn(trim(DataSet.fieldbyname('POSADI').asstring)) then
    begin
      MesajHata('Bu POS adý zaten kayýtlý..');
      Abort;
      Exit;
    end;

  ekleyenDegistiren(DataSet);
end;

end.
