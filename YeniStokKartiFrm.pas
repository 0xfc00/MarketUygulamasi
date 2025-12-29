unit YeniStokKartiFrm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, FireDAC.Comp.Client,

  cxDBEdit,
  cxDropDownEdit, Vcl.ComCtrls,
  cxDBLookupComboBox, dxBevel, Vcl.Menus, cxButtons, StrUtils,
  dxShellDialogs,


















  FireDAC.Stan.Param,
  FireDAC.Comp.DataSet,

  System.Net.URLClient,
  System.RegularExpressions,
  REST.Client,System.Net.HttpClientComponent, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, REST.Types, Data.Bind.Components,
  Data.Bind.ObjectScope, cxImage, cxLookupEdit, cxDBLookupEdit, cxMaskEdit,
  cxCalendar, cxTextEdit;

type
  TfrmYeniStokKarti = class(TfrmKartBase)
    dsStok: TDataSource;
    pc: TPageControl;
    shStok: TTabSheet;
    Label1: TLabel;
    edtStokKodu: TcxDBTextEdit;
    Label3: TLabel;
    edtBarkod: TcxDBTextEdit;
    Label2: TLabel;
    edtStokAdi: TcxDBTextEdit;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label7: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label8: TLabel;
    imgStokResim: TcxDBImage;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    dxBevel1: TdxBevel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    btnKaydet: TcxButton;
    btnKaydetVeYeni: TcxButton;
    btnSil: TcxButton;
    Label9: TLabel;
    dsMarkaLook: TDataSource;
    dsBirimLook: TDataSource;
    dsGrupLook: TDataSource;
    dsRafLook: TDataSource;
    cbxTeraziTip: TcxComboBox;
    opFileDlg: TdxOpenFileDialog;
    pmResimSil: TPopupMenu;
    Sil1: TMenuItem;
    btnYeniMarka: TcxButton;
    btnYeniBirim: TcxButton;
    btnYeniGrup: TcxButton;
    btnYeniRafTanim: TcxButton;
    qryStok: TFDQuery;
    qryMarkaLook: TFDQuery;
    qryBirimLook: TFDQuery;
    qryGrupLook: TFDQuery;
    qryRafLook: TFDQuery;
    btnBarkodBul: TcxButton;
    RESTClient1: TRESTClient;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure imgStokResimDblClick(Sender: TObject);
    procedure Sil1Click(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure YeniKayitIcinHazirla();
    procedure StokKartiGetir();
    procedure FormShow(Sender: TObject);
    procedure btnKaydetVeYeniClick(Sender: TObject);
    procedure qryStokBeforePost(DataSet: TDataSet);
    procedure btnSilClick(Sender: TObject);
    procedure btnYeniMarkaClick(Sender: TObject);
    procedure btnBarkodBulClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StokID : string;
  end;

var
  frmYeniStokKarti: TfrmYeniStokKarti;

implementation

{$R *.dfm}

uses
  MainDM,Main, TanimlarFrm;

procedure TfrmYeniStokKarti.YeniKayitIcinHazirla();
begin
  if not ContainsText(qryStok.SQL.Text, 'where 1=0') then
    qryStok.SQL.add(' where 1=0');

  btnSil.visible          := False;
  btnKaydetVeYeni.visible := true;
  qAcKapa_fn(qryStok);
  qryStok.Append;
  cbxTeraziTip.ItemIndex := 0;
  edtStokAdi.SetFocus;
end;

procedure TfrmYeniStokKarti.StokKartiGetir();
begin
  qryStok.SQL.Text := 'select * from STOK where ID = :id';
  qryStok.ParamByName('id').AsString := StokID;

  edtStokKodu.Enabled     := False;
  btnSil.visible          := true;
  btnKaydetVeYeni.visible := False;
  qAcKapa_fn(qryStok);

  cbxTeraziTip.ItemIndex := qryStok.FieldByName('TERAZITIP').AsInteger;
end;

procedure TfrmYeniStokKarti.btnBarkodBulClick(Sender: TObject);
  function PostStokSorgu(const Barkod: string): string;
  var
    Client: TNetHTTPClient;
    Params: TStringList;
  begin
    Client := TNetHTTPClient.Create(nil);
    Params := TStringList.Create;
    try
      Client.ContentType := 'application/x-www-form-urlencoded';
      Client.UserAgent := 'Mozilla/5.0';

      Params.Add('barkodara=' + Barkod);

      Result := Client.Post(
        'http://www.bilsoftyazilim.com/stok3.asp',
        Params
      ).ContentAsString(TEncoding.GetEncoding(1254)); // Türkçe için

    finally
      Params.Free;
      Client.Free;
    end;
  end;
  function UrunAdiniBul(const HTML: string): string;
  var
    Matches: TMatchCollection;
  begin
    Result := '';

    Matches := TRegEx.Matches(
      HTML,
      '<td\s+class="icerik">.*?<font[^>]*>(.*?)</div>',
      [roIgnoreCase, roSingleLine]
    );

    // 0 = SIRA
    // 1 = ÜRÜN ADI  ← BUNU ALIYORUZ
    // 2 = FİYAT
    if Matches.Count >= 2 then
      Result := Trim(Matches[1].Groups[1].Value);
  end;

begin
  inherited;
  if trim(edtBarkod.text) <> EmptyStr then
    if edtStokAdi.text = '' then
    try
      if not (qryStok.state in [dsedit,dsInsert]) then
        qryStok.edit;


      qryStok.FieldByName('STOKADI').asstring := (UrunAdiniBul(PostStokSorgu(edtBarkod.text)));
    except
      MesajHata('Api servisine bağlanılamadı');
    end;
end;

procedure TfrmYeniStokKarti.btnKapatClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmYeniStokKarti.imgStokResimDblClick(Sender: TObject);
begin
  inherited;
  if not (qryStok.State in [dsedit,dsinsert]) then exit;

  if opFileDlg.Execute then
  begin
    try
      (qryStok.FieldByName('RESIM') as TBlobField).LoadFromFile(opFileDlg.FileName);
      except on E: Exception do
      MesajHata('Seçilen resim uygun formatta değil..');
    end;
  end;
end;

procedure TfrmYeniStokKarti.qryStokBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(edtStokAdi.Text) = EmptyStr then
  begin
    MesajHata('Ürün adı girilmedi..');
    edtStokAdi.SetFocus;
    Abort;
    Exit;
  end;

  if StokID = EmptyStr then
  begin
    if trim(edtStokKodu.Text) = EmptyStr then
      if trim(edtBarkod.Text) <> EmptyStr then
        DataSet.FieldByName('STOKKODU').AsString := edtBarkod.Text
      else
      begin
        DataSet.FieldByName('BARKOD').AsString   := GenerateRandomNumbers(11);
        DataSet.FieldByName('STOKKODU').AsString := 'ST' + DataSet.FieldByName('BARKOD').AsString;
      end;

    if StokKoduVarmi_fn(trim(edtStokKodu.Text)) then
    begin
      MesajHata('Bu stok kodu zaten kayıtlı..');
      edtStokKodu.SetFocus;
      edtStokKodu.SelectAll;
      Abort;
      Exit;
    end;

    if StokAdiVarmi_fn(trim(edtStokAdi.Text)) then
    begin
      MesajHata('Bu ürün adı zaten kayıtlı..');
      edtStokAdi.SetFocus;
      edtStokadi.SelectAll;
      Abort;
      Exit;
    end;

    if StokBarkodVarmi_fn(trim(edtBarkod.Text)) then
    begin
      MesajHata('Bu barkod no zaten kayıtlı..');
      edtBarkod.SetFocus;
      edtBarkod.SelectAll;
      Abort;
      Exit;
    end;

  end;



  DataSet.FieldByName('TERAZITIP').AsInteger := cbxTeraziTip.ItemIndex;
end;

procedure TfrmYeniStokKarti.Sil1Click(Sender: TObject);
begin
  inherited;
  if not (qryStok.State in [dsedit,dsinsert]) then exit;
  TBlobField(qryStok.FieldByName('RESIM')).Clear;
end;

procedure TfrmYeniStokKarti.btnKaydetClick(Sender: TObject);
begin
  inherited;
  if not (qryStok.State in [dsEdit,dsInsert]) then
    qryStok.edit;

  qryStok.Post;
  MesajBilgi('Kayıt başarılı..');
  if Sender = btnKaydet then
    Close;
end;

procedure TfrmYeniStokKarti.btnKaydetVeYeniClick(Sender: TObject);
begin
  inherited;
  btnKaydetClick(Self);
  YeniKayitIcinHazirla;
end;

procedure TfrmYeniStokKarti.btnSilClick(Sender: TObject);
begin
  inherited;
  if StokIdKartiSil_fn(qryStok.FieldByName('ID').AsString) then
    close;
end;

procedure TfrmYeniStokKarti.btnYeniMarkaClick(Sender: TObject);
var
  mForm : TfrmTanimlar;
begin
  inherited;
  Application.CreateForm(TfrmTanimlar, mForm);

  mForm.pc.tag := 1;

       if Sender = btnYeniBirim    then  mForm.pc.ActivePageIndex := 0
  else if Sender = btnYeniGrup     then  mForm.pc.ActivePageIndex := 1
  else if Sender = btnYeniMarka    then  mForm.pc.ActivePageIndex := 2
  else if Sender = btnYeniRafTanim then  mForm.pc.ActivePageIndex := 3;

  mForm.ShowModal;

       if Sender = btnYeniBirim    then  qAcKapa_fn(qryBirimLook)
  else if Sender = btnYeniGrup     then  qAcKapa_fn(qryGrupLook)
  else if Sender = btnYeniMarka    then  qAcKapa_fn(qryMarkaLook)
  else if Sender = btnYeniRafTanim then  qAcKapa_fn(qryRafLook);
end;

procedure TfrmYeniStokKarti.FormCreate(Sender: TObject);
var
  i : integer;
begin
  inherited;


  for I := 0 to ComponentCount-1 do
    if Components[i] is TFDQuery then
    begin
      TFDQuery(Components[i]).Connection := dmMain.UniConn;

      if Components[i].Tag = 0 then
        TFDQuery(Components[i]).Open;
    end;

end;

procedure TfrmYeniStokKarti.FormShow(Sender: TObject);
begin
  inherited;
  pnlHeader.color :=clGreen;

  if StokID = EmptyStr then
  begin
    YeniKayitIcinHazirla;
    pnlHeader.Caption := '   STOK KARTI  -  Yeni kayıt';
  end
  else
  begin
    StokKartiGetir;
    pnlHeader.Caption := '   STOK KARTI  -  Düzenle';
  end;
end;

end.
