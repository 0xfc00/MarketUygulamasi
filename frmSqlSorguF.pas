unit frmSqlSorguF;

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.Forms,

  Data.DB,
  DBAccess,  cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxGrid,
  cxButtons, cxGroupBox, cxMemo,
  Uni, MainDM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlue, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, Vcl.Menus, MemDS, Vcl.StdCtrls, cxTextEdit,
  cxClasses, cxGridCustomView, cxGridTableView, dxSkinBasic, dxSkinBlack,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

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
