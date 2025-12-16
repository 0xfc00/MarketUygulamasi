unit frmSqlSorguF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  DBAccess,  MemDS, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxGroupBox, cxTextEdit, cxMemo, dxSkinsCore,
  dxSkinBlue, dxScrollbarAnnotations, Uni, MainDM;

type
  TfrmSqlSorgu = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    btnKapat: TcxButton;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    q: TUniQuery;
    ds: TDataSource;
    cxMemo1: TcxMemo;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKapatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSqlSorgu: TfrmSqlSorgu;

implementation

{$R *.dfm}

uses Main;



procedure TfrmSqlSorgu.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSqlSorgu.cxButton2Click(Sender: TObject);
begin
  if not dmMain.UniConn.Connected then
    dmMain.UniConn.Connected := true;

  try
    with q do
    begin
      close;
      sql.Text := cxmemo1.Lines.Text;
      open;
    end;

    with cxGrid1DBTableView1 do
    begin
      ClearItems;
      DataController.CreateAllItems;
      ApplyBestFit(nil);
    end;
  except
  end;
end;

procedure TfrmSqlSorgu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
