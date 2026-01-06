unit AdisyonFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxLabel, _func, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxBarBuiltInMenu, cxPC;

  procedure CallFrmAdisyon();

type
  TfrmAdisyon = class(TfrmKartBase)
    Panel1: TPanel;
    btnKapat: TcxButton;
    btnTumMasalar: TcxButton;
    btnAcikMasalar: TcxButton;
    pc: TcxPageControl;
    shtAna: TcxTabSheet;
    shtDetay: TcxTabSheet;
    pnlMain: TPanel;
    Label1: TLabel;
    procedure btnKapatClick(Sender: TObject);
    procedure MasaListesiDoldur(ASadeceAcikMasalar : boolean = false);
    procedure FormShow(Sender: TObject);
    procedure btnTumMasalarClick(Sender: TObject);
    procedure btnAcikMasalarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdisyon: TfrmAdisyon;

implementation

{$R *.dfm}

uses Main;

procedure CallFrmAdisyon();
var
  mForm : TfrmAdisyon;
begin
  application.CreateForm(TfrmAdisyon,mForm);
  mForm.showmodal;
end;

procedure TfrmAdisyon.btnKapatClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmAdisyon.btnTumMasalarClick(Sender: TObject);
begin
  inherited;
  MasaListesiDoldur     //deneme
end;

procedure TfrmAdisyon.btnAcikMasalarClick(Sender: TObject);
begin
  inherited;
  MasaListesiDoldur(true);
end;

procedure TfrmAdisyon.FormShow(Sender: TObject);
begin
  inherited;
  BorderStyle := bsSizeable;
  pc.Properties.HideTabs := true;
  MasaListesiDoldur;
end;

procedure TfrmAdisyon.Label1Click(Sender: TObject);
begin
  inherited;
  pc.ActivePage := shtDetay;
  ShowMessage(TcxLabel(sender).Hint);
end;

procedure TfrmAdisyon.MasaListesiDoldur(ASadeceAcikMasalar : boolean = false);
var
  sqlWhere : string;
  sboxHS: TScrollBox;
  fPanelHS: TFlowPanel;
  pnlHS: TPanel;
  sboxHS_ : TComponent;
  lblAd: TcxLabel;
  qryMasa : TFDQuery;
begin
  sboxHS_ := FindComponent('sboxHS');
  if Assigned(sboxHS_) then
    FreeAndNil(sboxHS_);



  pnlMain.Visible := false;
  pnlMain.DisableAlign;

  pc.ActivePage := shtAna;

  sqlWhere := ' where 1=1 ';
  if ASadeceAcikMasalar then sqlWhere := sqlWhere + ' AND isnull(ISLEM_BASLIK_ID,0) <> 0 ';

  qryMasa := yeniQuery('select (select ADI from T_SALON where ID= T_MASA.SALONID) salonadi, * from T_MASA ' + sqlWhere  + ' order by ID asc');
  qryMasa.First;
  if qryMasa.IsEmpty then
  begin
    qryMasa.free;
    exit; ///////////////////////////////////////////////////////////////
  end;



  sboxHS          := TScrollBox.Create(Self);

  SendMessage(pnlMain.Handle, WM_SETREDRAW, 0, 0);

  sboxHS.Name     := 'sboxHS';//deneme + qryMasa.FieldByName('ID').AsString;
//  sboxHS.Parent   := pnlMain;
  sboxHS.AlignWithMargins := True;
  sboxHS.Left     := 3;
  sboxHS.Top      := 3;
  sboxHS.Width    := 964;
  sboxHS.Height   := 668;
  sboxHS.Align    := alClient;
  sboxHS.TabOrder := 0;
  sboxHS.AutoSize := false;
  sboxHS.Color    := clWhite;

  fPanelHS          := TFlowPanel.Create(Self);
  fPanelHS.Name     := 'fPanelHS' + qryMasa.FieldByName('ID').AsString;
  fPanelHS.Caption  := '';
  fPanelHS.Parent   := sboxHS;
  fPanelHS.AlignWithMargins := True;
  fPanelHS.Left     := 3;
  fPanelHS.Top      := 3;
  fPanelHS.Width    := 956; //956
  fPanelHS.Height   := 660;
  fPanelHS.Align    := alTop;
  fPanelHS.AutoSize := true;
  fPanelHS.AutoWrap := true;
  fPanelHS.TabOrder := 0;
  fPanelHS.Color    := clWhite;

  repeat
    pnlHS    := TPanel.Create(Self);
    lblAd    := TcxLabel.Create(Self);

    pnlHS.Name        := 'pnlHS' + qryMasa.FieldByName('ID').AsString;
    pnlHS.Parent      := fPanelHS;
    pnlHS.AlignWithMargins := true;
    pnlHS.Left        := 1;
    pnlHS.Top         := 1;
    pnlHS.Width       := 165;  //170
    pnlHS.Height      := 99;
    if qryMasa.FieldByName('ISLEM_BASLIK_ID').AsInteger >0 then
      pnlHS.Color       := clLime
    else
      pnlHS.Color       := clYellow;

    //pnlHS.Color       := clWhite;
    pnlHS.BorderStyle := bsSingle;
    pnlHS.ParentBackground := False;
    pnlHS.Ctl3D       := False;
    pnlHS.ParentCtl3D := False;
    pnlHS.TabOrder    := 0;
    pnlHS.Caption     := '';

    lblAd.Name        := 'lblAd' + qryMasa.FieldByName('ID').AsString;
    lblAd.Align       := alClient;
    lblAd.Left        := 35;
    lblAd.Top         := 0;
//    lblAd.AlignWithMargins := true;
//    lblAd.Margins.Bottom := 20;
//    lblAd.Margins.left   := 20;
//    lblAd.Margins.right  := 20;
//    lblAd.Margins.top    := 20;

    lblad.AutoSize := true;

    lblAd.Caption     := qryMasa.FieldByName('ADI').AsString;
    lblAd.ParentFont  := False;
    lblAd.ParentColor := False;
    lblAd.Width := 114;

    lblAd.ParentColor := true;
    lblAd.Transparent := true;
    lblAd.Style.Font.Charset := DEFAULT_CHARSET;
    lblad.Style.Color := clWhite;
    lblAd.Style.Font.Color := clWindowText;
    lblAd.Style.Font.Height := -16;   //13
    lblAd.Style.Font.Name := 'Tahoma';
    lblAd.Style.Font.Style := [fsBold];

    lblAd.Properties.Alignment.Horz := taCenter;
    lblAd.Properties.Alignment.Vert := taVCenter;
    lblAd.Properties.WordWrap := True;

    lblad.Hint        := qryMasa.FieldByName('ID').AsString;

    lblAd.Parent      := pnlHS;
    lblAd.OnClick     := Label1Click;
//    lblAd.OnDblClick  := lblAdClick;

    fPanelHS.AutoSize := true;
    qryMasa.Next;
  until (qryMasa.eof);

  sboxHS.Parent   := pnlMain;

  pnlMain.EnableAlign;
  pnlMain.Visible := true;

  SendMessage(pnlMain.Handle, WM_SETREDRAW, 1, 0);

  pnlMain.Invalidate;

  qryMasa.SQL.text := 'select count(*) as a from T_MASA where isnull(ISLEM_BASLIK_ID,0) <> 0';
  qAcKapa_fn(qryMasa);
  btnAcikMasalar.caption := 'Açýk Masalar (' + qryMasa.FieldByName('a').AsString + ')';

  qryMasa.SQL.text := 'select count(*) as a from T_MASA';
  qAcKapa_fn(qryMasa);
  btnTumMasalar.caption := 'Tüm Masalar (' + qryMasa.FieldByName('a').AsString + ')';

  qryMasa.free;
end;

end.
