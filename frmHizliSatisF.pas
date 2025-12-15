unit frmHizliSatisF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, strutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxBarBuiltInMenu, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  cxImageList, Vcl.Touch.Keyboard, dxGDIPlusClasses, Vcl.ExtCtrls, cxImage,
  cxLabel, cxPC, Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxButtons, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxGroupBox, MemDS,
  DBAccess, frxClass, frxDBSet, dxSkinsCore, dxSkinBlue, dxScrollbarAnnotations,
  Uni, BaseFrm, MainDM;

type
  TfrmHizliSatis = class(TfrmBase)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    edtBarkod: TcxTextEdit;
    cxGroupBox12: TcxGroupBox;
    cbFisYazdirma: TcxComboBox;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    grdHizliSatis: TcxGrid;
    grdHizliSatisDBTableView1: TcxGridDBTableView;
    grdHizliSatisDBTableView1adi: TcxGridDBColumn;
    grdHizliSatisDBTableView1adet: TcxGridDBColumn;
    grdHizliSatisDBTableView1Fiyat: TcxGridDBColumn;
    grdHizliSatisDBTableView1Column1: TcxGridDBColumn;
    grdHizliSatisDBTableView1Toplam: TcxGridDBColumn;
    grdHizliSatisLevel1: TcxGridLevel;
    cxGroupBox6: TcxGroupBox;
    btnSatisIptal: TcxButton;
    btnSatisBeklet: TcxButton;
    btnVeresiye_satis: TcxButton;
    btnKk_satis: TcxButton;
    btnNakit_satis: TcxButton;
    cxButton3: TcxButton;
    Panel1: TPanel;
    cxGroupBox11: TcxGroupBox;
    cbCari: TcxComboBox;
    edtCariBul: TcxTextEdit;
    cxGroupBox5: TcxGroupBox;
    edtToplam: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pcHS: TcxPageControl;
    shtHS_deneme: TcxTabSheet;
    ScrollBox1: TScrollBox;
    fPanelHS: TFlowPanel;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    edtUrunBul: TcxTextEdit;
    cxGroupBox8: TcxGroupBox;
    grdUrunAra: TcxGrid;
    grdUrunAraDBTableView1: TcxGridDBTableView;
    grdUrunAraDBTableView1stokkodu: TcxGridDBColumn;
    grdUrunAraDBTableView1stokadi: TcxGridDBColumn;
    grdUrunAraDBTableView1satisfiyat1: TcxGridDBColumn;
    grdUrunAraDBTableView1barkod: TcxGridDBColumn;
    grdUrunAraLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox9: TcxGroupBox;
    grdBekleyenSatislar: TcxGrid;
    grdBekleyenSatislarDBTableView1: TcxGridDBTableView;
    grdBekleyenSatislarDBTableView1id: TcxGridDBColumn;
    grdBekleyenSatislarDBTableView1tutar: TcxGridDBColumn;
    grdBekleyenSatislarLevel1: TcxGridLevel;
    cxGroupBox10: TcxGroupBox;
    grdBekleyenSatislarDetay: TcxGrid;
    grdBekleyenSatislarDetayDBTableView1: TcxGridDBTableView;
    grdBekleyenSatislarDetayDBTableView1adi: TcxGridDBColumn;
    grdBekleyenSatislarDetayDBTableView1adet: TcxGridDBColumn;
    grdBekleyenSatislarDetayDBTableView1Fiyat: TcxGridDBColumn;
    grdBekleyenSatislarDetayDBTableView1Toplam: TcxGridDBColumn;
    grdBekleyenSatislarDetayLevel1: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    ScrollBox2: TScrollBox;
    FlowPanel1: TFlowPanel;
    pnlParaUstu5tl: TPanel;
    Image1: TImage;
    lblParaUstu5tl: TLabel;
    pnlParaUstu10tl: TPanel;
    Image2: TImage;
    lblParaUstu10tl: TLabel;
    pnlParaUstu20tl: TPanel;
    Image3: TImage;
    lblParaUstu20tl: TLabel;
    pnlParaUstu50tl: TPanel;
    Image4: TImage;
    lblParaUstu50tl: TLabel;
    pnlParaUstu100tl: TPanel;
    Image5: TImage;
    lblParaUstu100tl: TLabel;
    pnlParaUstu200tl: TPanel;
    Image6: TImage;
    lblParaUstu200tl: TLabel;
    tKeyboard: TTouchKeyboard;
    imgListPageControl: TcxImageList;
    ActionList1: TActionList;
    nakit_satis: TAction;
    kk_satis: TAction;
    veresiye_satis: TAction;
    satis_iptal: TAction;
    kapat: TAction;
    btnSatirAdetArttir: TcxButton;
    btnSatirAdetEksilt: TcxButton;
    cxButton6: TcxButton;
    qryTempSatis: TUniQuery;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dsTempSatis: TDataSource;
    qryStokBul: TUniQuery;
    dsStokBul: TDataSource;
    qryBekleyenSatislar: TUniQuery;
    dsBekleyenSatislar: TDataSource;
    qryBekleyenSatislarDetay: TUniQuery;
    dsBekleyenSatislarDetay: TDataSource;
    frxDsHsCari: TfrxDBDataset;
    frxDsHsFisTitle: TfrxDBDataset;
    frxHsFis: TfrxReport;
    frxDsHsFis: TfrxDBDataset;
    qryFis: TUniQuery;
    pmRaporTasarim: TPopupMenu;
    RaporTasarm1: TMenuItem;
    qryCari: TUniQuery;
    procedure barkodOku(stokKodu:string);
    procedure hizliSatisDoldur();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lblAdClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtBarkodKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure kapatExecute(Sender: TObject);
    procedure satisIptal();
    procedure edtUrunBulPropertiesChange(Sender: TObject);
    procedure btnSatisIptalClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cbFisYazdirmaPropertiesChange(Sender: TObject);
    procedure btnSatisBekletClick(Sender: TObject);
    procedure grdUrunAraDBTableView1DblClick(Sender: TObject);
    procedure grdBekleyenSatislarDBTableView1DblClick(Sender: TObject);
    procedure tutarEditGuncelle();
    procedure btnSatirAdetArttirClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure edtCariBulPropertiesChange(Sender: TObject);
    procedure satisTamamla(islem:string);
    procedure btnNakit_satisClick(Sender: TObject);
    procedure btnKk_satisClick(Sender: TObject);
    procedure btnVeresiye_satisClick(Sender: TObject);
    procedure qryTempSatisAfterDelete(DataSet: TDataSet);
    procedure qryTempSatisBeforePost(DataSet: TDataSet);
    procedure qryTempSatisAfterPost(DataSet: TDataSet);
    procedure RaporTasarm1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHizliSatis: TfrmHizliSatis;

implementation

{$R *.dfm}

uses _cons, _func, _vars, Main;


procedure TfrmHizliSatis.barkodOku(stokKodu:string);
var
i : integer;
  qS, qG, qToplam, q : TUniQuery;
  sTartilan, sTartiBarkod : string;
  dTartilan, dTartilanTutar : double;
label
  lblBarkodYok, lblTeraziBarkodu;

  procedure barkodYok();
  begin
    edtBarkod.Style.Color := clred;
    MesajBilgi('Barkod Kayýtlý Deðil');
    edtBarkod.Style.Color := clWindow;
    edtBarkod.Text := '';
    edtBarkod.SetFocus;
  end;

begin
  // stokID parametresi boþsa edtBarkod.text deki barkodla okuyacak. stokID parametresi dolusa gelen veriyi stok id de arayacak..

  if grdHizliSatisDBTableView1.DataController.RecordCount > 5 then demoKontrol;
  if (stokKodu = '') and (edtBarkod.Text = '') then exit;

  sTartilan := '';
  dTartilan := 0;
  dTartilanTutar := 0;


  if stokKodu = '' then
  begin
    qS :=  yeniQuery('select * from STOK where BARKOD= :BARKOD', false);
    qS.ParamByName('BARKOD').AsString := edtBarkod.Text;
  end
  else
  begin
    qS :=  yeniQuery('select * from STOK where STOKKODU= :STOKKODU', false);
    qS.ParamByName('STOKKODU').AsString := stokKodu;
  end;
  qS.Open;

  if qS.RecordCount >0 then
  begin
    if qS.FieldByName('TERAZITIP').AsInteger > 1 then
    begin
      sTartilan := InputBox('Tartýlý Ürün', 'Terazi Baðlantýsý Kurulamadý. Lütfen Ürünün Tartým Sonucunu Giriniz..','');
      dTartilan := StrToFloatDef(sTartilan,0);

      if dTartilan = 0  then exit;

      lblTeraziBarkodu:

      if sTartiBarkod = '' then                          //deneme
      begin
        dTartilanTutar := (dTartilan / qS.FieldByName('tarti_carpan').AsFloat) * qS.FieldByName('sfiyat1').AsFloat;
        dTartilan :=  dTartilan / qS.FieldByName('tarti_carpan').AsFloat;
      end
      else
        dTartilan :=  dTartilan / 1000;
    end;


    if not qryTempSatis.Active then qryTempSatis.Open;
    qG := yeniQuery('select * from TMPSATIS where STOKKODU= :STOKKODU and BEKLEMEDE=0', false);
    qG.ParamByName('STOKKODU').AsString := qS.FieldByName('STOKKODU').AsString;
    qG.Open;

    if qG.RecordCount >0 then
    begin
      qG.Edit;
      qG.FieldByName('ADET').asfloat   := qG.FieldByName('ADET').asfloat +  strtofloat( IfThen(dTartilan = 0 , '1', FloatTostr(dtartilan) ));
      qG.FieldByName('FIYAT').asfloat  := qS.FieldByName('SATISFIYATI').asfloat;
      qG.FieldByName('TOPLAM').asfloat := qS.FieldByName('SATISFIYATI').AsFloat * qG.FieldByName('ADET').asfloat;
      qG.Post;
    end
    else
    begin
      qryTempSatis.append;
      qryTempSatis.FieldByName('STOKID').AsString   := qS.FieldByName('ID').AsString;
      qryTempSatis.FieldByName('STOKKODU').AsString := qS.FieldByName('STOKKODU').AsString;
      qryTempSatis.FieldByName('STOKADI').AsString      := qS.FieldByName('STOKADI').AsString;
      qryTempSatis.FieldByName('KDV').AsString      := qS.FieldByName('KDV').AsString;

      qryTempSatis.FieldByName('ADET').AsString     := IfThen(dTartilan = 0, '1', floattostr(dtartilan) );
      qryTempSatis.FieldByName('FIYAT').AsString    := qS.FieldByName('SATISFIYATI').AsString;
      qryTempSatis.FieldByName('TOPLAM').AsString   := ifthen(dTartilan = 0, qS.FieldByName('SATISFIYATI').AsString, floattostr(dTartilanTutar) );

      qryTempSatis.FieldByName('BEKLEMEDE').AsInteger := 0;
      qryTempSatis.Post;
    end;

    qToplam := yeniQuery('select sum(TOPLAM) as xToplam from TMPSATIS where BEKLEMEDE=0');
    edtToplam.Text :=  qToplam.FieldByName('xToplam').AsString;


    qryTempSatis.Refresh;
    edtBarkod.Text := '';
    edtBarkod.SetFocus;


  end
  else
  begin
    sTartiBarkod := Copy(edtBarkod.Text,1,7);
    q := yeniQuery('select * from STOK where BARKOD='+ QuotedStr(sTartiBarkod)  );

    if q.IsEmpty then                                       begin BarkodYok;exit;end;
    if q.FieldByName('teraziBarkodu').AsString <> '1' then  begin BarkodYok;exit;end;    //DENEME

    dTartilan := StrToFloatDef(Copy(edtBarkod.Text,8,5),0);
    if dTartilan = 0 then
      begin BarkodYok;exit;end
    else
    begin
      qS.Close;
      qS.SQL.Text := 'select * from STOK where BARKOD='+ QuotedStr(sTartiBarkod);
      qS.Open;
      goto lblTeraziBarkodu;
    end;

  end;

  tutarEditGuncelle;

  FreeAndNil(qToplam);
  FreeAndNil(qG);
  FreeAndNil(qs);
end;


procedure TfrmHizliSatis.lblAdClick(Sender: TObject);
var
  stokKodu:string;
begin
  if (sender is TcxLabel) then stokKodu := TcxLabel(sender).Hint;
  if (sender is TcxImage) then stokKodu := TcxImage(sender).Hint;
  if (sender is tpanel)   then stokKodu := tpanel(sender).Hint;

  if stokKodu <> '' then barkodOku(stokKodu);
end;

procedure TfrmHizliSatis.qryTempSatisAfterDelete(DataSet: TDataSet);
begin
  tutarEditGuncelle
end;

procedure TfrmHizliSatis.qryTempSatisAfterPost(DataSet: TDataSet);
begin
  tutarEditGuncelle;
end;

procedure TfrmHizliSatis.qryTempSatisBeforePost(DataSet: TDataSet);
begin
  with qryTempSatis do
  begin
    if State in [dsedit,dsinsert] then
    begin
      FieldByName('toplam').AsFloat := (FieldByName('Fiyat').AsFloat * FieldByName('adet').AsFloat) -  FieldByName('iskonto').AsFloat ;
    end;
  end;
end;

procedure TfrmHizliSatis.RaporTasarm1Click(Sender: TObject);
begin
  if not y.admin then
  begin
    MesajBilgi('Bu Ýþlem için Yetkiniz Yoktur..');
    exit;
  end;
  frxHsFis.DesignReport();
end;

procedure TfrmHizliSatis.hizliSatisDoldur();
var
  qHsGrup_, qHsStok_, qStok_ : TUniQuery;
  shtHS: TcxTabSheet;
  sboxHS: TScrollBox;
  fPanelHS: TFlowPanel;
  pnlHS: TPanel;
  lblAd, lblFiyat: TcxLabel;
begin
  qHsGrup_ := yeniQuery('SELECT * FROM T_HSGRUP order by SIRA asc');
  qHsGrup_.First;
  if qHsGrup_.IsEmpty then exit; ///////////////////////////////////////////////////////////////



  qHsStok_ := yeniQuery('SELECT * FROM T_HSSIRA where GRUPID= :GRUPID order by SIRA asc', false);


  qStok_ := yeniQuery('SELECT * FROM STOK where STOKKODU= :STOKKODU', false);


  repeat
    shtHS := TcxTabSheet.Create(Self);
    shtHS.Name      := 'shtHS' + qHsGrup_.FieldByName('ID').AsString;
    shtHS.Parent    := pcHS;
    shtHS.Caption   := qHsGrup_.FieldByName('GRUPADI').AsString;

    sboxHS          := TScrollBox.Create(Self);
    sboxHS.Name     := 'sboxHS' + qHsGrup_.FieldByName('ID').AsString;
    sboxHS.Parent   := shtHS;
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
    fPanelHS.Name     := 'fPanelHS' + qHsGrup_.FieldByName('ID').AsString;
    fPanelHS.Caption  := '';
    fPanelHS.Parent   := sboxHS;
    fPanelHS.AlignWithMargins := True;
    fPanelHS.Left     := 3;
    fPanelHS.Top      := 3;
    fPanelHS.Width    := 956;
    fPanelHS.Height   := 660;
    fPanelHS.Align    := alTop;
    fPanelHS.AutoSize := true;
    fPanelHS.AutoWrap := true;
    fPanelHS.TabOrder := 0;
    fPanelHS.Color    := clWhite;


    qHsStok_.Close;
    qHsStok_.ParamByName('GRUPID').AsString := qHsGrup_.FieldByName('ID').AsString;
    qHsStok_.Open;
    qHsStok_.First;
    if qHsStok_.RecordCount >0 then
    repeat
      qStok_.Close;
      qStok_.ParamByName('STOKKODU').AsString := qHsStok_.FieldByName('STOKKODU').AsString;
      qStok_.Open;
      if qStok_.IsEmpty then
      begin
        qHsStok_.Next;
        continue;
      end;

      pnlHS    := TPanel.Create(Self);

      lblAd    := TcxLabel.Create(Self);
      lblFiyat := TcxLabel.Create(Self);

      pnlHS.Name        := 'pnlHS' + qHsGrup_.FieldByName('ID').AsString+ '___'+ qHsStok_.FieldByName('ID').AsString;
      pnlHS.Parent      := fPanelHS;
      pnlHS.AlignWithMargins := true;
      pnlHS.Left        := 1;
      pnlHS.Top         := 1;
      pnlHS.Width       := 170;
      pnlHS.Height      := 99;
      pnlHS.Color       := clWhite;
      pnlHS.BorderStyle := bsSingle;
      pnlHS.ParentBackground := False;
      pnlHS.Ctl3D       := False;
      pnlHS.ParentCtl3D := False;
      pnlHS.TabOrder    := 0;
      pnlHS.Caption     := '';

      lblAd.Name        := 'lblAd' + qHsGrup_.FieldByName('ID').AsString+ '___'+ qHsStok_.FieldByName('ID').AsString;
      lblAd.Parent      := pnlHS;
      lblAd.Align       := alClient;
      lblAd.Left        := 35;
      lblAd.Top         := 0;
      lblad.AutoSize := true;

      //lblAd.AlignWithMargins := True;
      lblAd.Caption     := qStok_.FieldByName('STOKADI').AsString;
      lblAd.ParentFont  := False;
      lblAd.ParentColor := False;
      lblAd.Width := 114;

      lblAd.Style.Font.Charset := DEFAULT_CHARSET;
      lblad.Style.Color := clWhite;
      lblAd.Style.Font.Color := clWindowText;
      lblAd.Style.Font.Height := -13;   //13
      lblAd.Style.Font.Name := 'Tahoma';
      lblAd.Style.Font.Style := [fsBold];

      lblAd.Properties.Alignment.Horz := taCenter;
      lblAd.Properties.Alignment.Vert := taVCenter;
      lblAd.Properties.WordWrap := True;

      lblad.Hint        := qHsStok_.FieldByName('STOKKODU').AsString;
      lblAd.OnClick     := lblAdClick;
      lblAd.OnDblClick  := lblAdClick;


      lblFiyat.Name      := 'lblFiyat' + qHsGrup_.FieldByName('ID').AsString+ '___'+ qHsStok_.FieldByName('STOKKODU').AsString;
      lblFiyat.Parent    := pnlHS;
      lblFiyat.Align     := alBottom;
//      lblFiyat.Left      := pnlHS.Width -58; //114;
//      lblFiyat.Top       := pnlHS.Height -25; //154;

      lblFiyat.Caption   := qStok_.FieldByName('SATISFIYATI').AsString+ ' TL';
      lblFiyat.ParentColor:= False;
      lblFiyat.ParentFont:= False;
      lblFiyat.Style.Color := clRed;

      lblFiyat.Style.Font.Color   := clWhite;
      lblFiyat.Style.Font.Height  := -16;  //11
      lblFiyat.Style.Font.Name    := 'Tahoma';
      lblFiyat.Style.Font.Style   := [fsBold];
      lblFiyat.Properties.Alignment.Horz := taCenter;
      lblFiyat.Hint      := qHsStok_.FieldByName('STOKKODU').AsString;
      lblFiyat.OnClick   := lblAdClick;
      lblFiyat.OnDblClick:= lblAdClick;

      qHsStok_.Next;
    until (qHsStok_.Eof);
    fPanelHS.AutoSize := true;
    qHsGrup_.Next;
  until (qHsGrup_.eof);
end;

procedure TfrmHizliSatis.kapatExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmHizliSatis.btnKk_satisClick(Sender: TObject);
begin
  if cbCari.Text = '' then exit;
  if qryTempSatis.IsEmpty then exit;

  satisTamamla(KREDIKARTI);
end;

procedure TfrmHizliSatis.btnNakit_satisClick(Sender: TObject);
begin
  if cbCari.Text = '' then exit;
  if qryTempSatis.IsEmpty then exit;

  satisTamamla(NAKIT);
end;

procedure TfrmHizliSatis.btnSatirAdetArttirClick(Sender: TObject);
begin
  with qryTempSatis do
  begin
    if IsEmpty then exit;

    if not (State  in [dsedit,dsinsert]) then edit;

    if TcxButton(sender) = btnSatirAdetArttir then
      FieldByName('adet').AsFloat :=  FieldByName('adet').AsFloat +1
    else
      if FieldByName('adet').AsFloat > 1 then
        FieldByName('adet').AsFloat :=  FieldByName('adet').AsFloat -1;

    post;
  end;
end;

procedure TfrmHizliSatis.btnSatisBekletClick(Sender: TObject);
var
  q:TUniQuery;
  yeniNo : integer;
begin
  if qryTempSatis.IsEmpty then exit;

  if not MesajSor('Ekrandaki Aktif Satýþ Ýþlemleri Bekleme Listesine Alýnýp Yeni Satýþ Baþlatýlacak..') then exit;

  q := yeniQuery('select isnull(max(BEKLEMEDE),0) as yenino from TMPSATIS where BEKLEMEDE <>0');
  if q.IsEmpty then
    yeniNo := 1
  else
    yeniNo := q.FieldByName('yenino').AsInteger + 1;

  sqlCalistir('update TMPSATIS set BEKLEMEDE='+ inttostr(yeniNo) + ' where BEKLEMEDE=0');

  qryBekleyenSatislar.Refresh;
  satisIptal;

  FreeAndNil(q);
end;

procedure TfrmHizliSatis.btnSatisIptalClick(Sender: TObject);
begin
  if qryTempSatis.IsEmpty then exit;
  if MesajSor('Aktif Satýþ Ýþlemi Ýptal Edilip Yenisi Baþlatýlacak. Eminmisiniz?') then satisIptal;
end;

procedure TfrmHizliSatis.btnVeresiye_satisClick(Sender: TObject);
begin
  if cbCari.Text = '' then exit;
  if qryTempSatis.IsEmpty then exit;

  if cbCari.Text = 'PERAKENDE' then
    MesajBilgi('Veresiye satýþ için önce cari seçilmelidir..')
  else
    satisTamamla(CARI);
end;

procedure TfrmHizliSatis.cbFisYazdirmaPropertiesChange(Sender: TObject);
begin
  sqlCalistir('update USERS set p_FISYAZDIRMA =' + cbFisYazdirma.ItemIndex.ToString + ' WHERE ID= ' + loginUserID.ToString);
end;

procedure TfrmHizliSatis.cxButton1Click(Sender: TObject);
begin
  with tKeyboard do
  begin
    Layout := 'NumPad';
    if Visible then
      Hide
    else
      Show;
  end;
  edtBarkod.SetFocus;
end;

procedure TfrmHizliSatis.cxButton2Click(Sender: TObject);
begin
  with tKeyboard do
  begin
    Layout := 'Standard';
    if Visible then
      Hide
    else
      Show;
  end;
  edtBarkod.SetFocus;
end;

procedure TfrmHizliSatis.cxButton4Click(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 3;
  edtBarkod.SetFocus;
end;

procedure TfrmHizliSatis.cxButton6Click(Sender: TObject);
begin
  with qryTempSatis do
  begin
    if not IsEmpty then
      Delete;
    refresh;
  end;
end;

procedure TfrmHizliSatis.edtBarkodKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (edtBarkod.Text <> '') then
    barkodOku('');
end;

procedure TfrmHizliSatis.edtCariBulPropertiesChange(Sender: TObject);
var
  qCari : TUniQuery;
begin
  //cari comboboxu dolduruluyor..
  qCari := yeniQuery('select * from CARI where 1=1 ', false);
  if edtCariBul.Text <> '' then qCari.sql.Add(' and UNVAN like ' + QuotedStr('%'+edtCariBul.Text+'%') + ' order by UNVAN asc');

  qCari.Open;

  qCari.Last;
  qCari.First;

  cbCari.Properties.Items.Clear;
  if edtCariBul.Text = '' then
    cbCari.Properties.Items.Add('PERAKENDE');

  if not qCari.IsEmpty then
  repeat
    cbCari.Properties.Items.Add(qCari.FieldByName('UNVAN').AsString);
    qCari.Next;
  until qCari.Eof ;
  cbCari.ItemIndex := 0;
end;

procedure TfrmHizliSatis.edtUrunBulPropertiesChange(Sender: TObject);
begin
  qryStokBul.Close;
  qryStokBul.sql.Text := 'select * from STOK';

  if edtUrunBul.Text <> '' then
  qryStokBul.SQL.Add('where STOKADI like '+ QuotedStr('%'+ edtUrunBul.Text+ '%') + ' or BARKOD like '+ QuotedStr('%'+ edtUrunBul.Text+ '%') );

  qryStokBul.Open;
end;

procedure TfrmHizliSatis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qryTempSatis.RecordCount >0 then
    if MesajSor('Aktif Satýþ Ýþlemi Ýptal Edilecek. Eminmisiniz?') then
      satisIptal
    else
      action := caNone;
end;

procedure TfrmHizliSatis.FormCreate(Sender: TObject);
begin
  TumQuerylereConnectionAta(self);
  if FileExists(RAPORLAR+ '\perakende_fis.fr3') then
  begin
    try frxHsFis.LoadFromFile(RAPORLAR+ '\perakende_fis.fr3');
    except
    end;
  end
  else
    MesajBilgi(RAPORLAR+ '\perakende_fis.fr3 Dosyasý bulunamadý..');

  cxPageControl1.ActivePageIndex := 0;

  grdHizliSatisDBTableView1.OptionsSelection.CellSelect := (y.admin or y.HSSATIRDUZENLE);

  if not qryStokBul.Active               then qryStokBul.Open;
  if not qryBekleyenSatislar.Active      then qryBekleyenSatislar.Open;
  if not qryBekleyenSatislarDetay.Active then qryBekleyenSatislarDetay.Open;
end;



procedure TfrmHizliSatis.FormResize(Sender: TObject);
var
  i: integer;
begin
  for I := 0 to ComponentCount-1 do
    if Components[i] is TFlowPanel then
    begin
      TFlowPanel(Components[i]).AutoWrap := false;
      TFlowPanel(Components[i]).AutoWrap := true;
    end;
end;

procedure TfrmHizliSatis.FormShow(Sender: TObject);
begin
  hizliSatisDoldur;
  tutarEditGuncelle;
  edtCariBulPropertiesChange(sender);
  cbFisYazdirma.ItemIndex := StrToIntDef(veriCekSQL('select p_FISYAZDIRMA from USERS WHERE ID= ' + loginUserID.ToString, 'p_FISYAZDIRMA') , 0)
end;


procedure TfrmHizliSatis.grdBekleyenSatislarDBTableView1DblClick(
  Sender: TObject);

begin
  if qryBekleyenSatislar.IsEmpty then exit;
  if not qryTempSatis.IsEmpty then
  begin
    ShowMessage('Önce Aktif Satýþ Ýþlemini Tamamlayýn veya Ýptal Edin..');
    exit;
  end;

  sqlCalistir('update tmp_satis set beklemede= 0 where beklemede='+qryBekleyenSatislar.FieldByName('beklemede').AsString);

  qryBekleyenSatislar.Refresh;
  qryTempSatis.Refresh;

  tutarEditGuncelle;
end;

procedure TfrmHizliSatis.grdUrunAraDBTableView1DblClick(Sender: TObject);
begin
  if qryStokBul.IsEmpty then exit;

  barkodOku( qryStokBul.FieldByName('STOKKODU').AsString);
  edtUrunBul.Text := '';
  edtUrunBulPropertiesChange(sender);
end;

procedure TfrmHizliSatis.satisIptal();
begin
  if not qryTempSatis.IsEmpty then
  begin
    sqlCalistir('delete from TMPSATIS where BEKLEMEDE=0');

    qryTempSatis.Refresh;
    edtToplam.Text := '0';
    edtBarkod.SetFocus;
  end;
  edtCariBul.Clear;
  cbCari.ItemIndex := 0;

  tutarEditGuncelle;
end;

procedure TfrmHizliSatis.tutarEditGuncelle();
var
  qToplam : TUniQuery;
  toplam : double;
  sPU : string;
begin
  qToplam :=  yeniQuery('select sum(TOPLAM) as xToplam from TMPSATIS where beklemede=0');

  if not qToplam.IsEmpty then
    edtToplam.Text := qToplam.FieldByName('xToplam').AsString;

  qToplam.Free;

  toplam := StrToFloatDef(edtToplam.Text, 0);
  sPU := 'Para Üstü : ';


  if toplam > 0 then
  begin
    lblParaUstu200tl.Caption := IfThen( toplam < 200, sPU + formatfloat('#.##', 200 - toplam)   + ' TL', '');
    lblParaUstu100tl.Caption := IfThen( toplam < 100, sPU + formatfloat('#.##', 100 - toplam)   + ' TL', '');
    lblParaUstu50tl.Caption  := IfThen( toplam < 50,  sPU + formatfloat('#.##',  50  - toplam)  + ' TL', '');
    lblParaUstu20tl.Caption  := IfThen( toplam < 20,  sPU + formatfloat('#.##',  20  - toplam)  + ' TL', '');
    lblParaUstu10tl.Caption  := IfThen( toplam < 10,  sPU + formatfloat('#.##',  10  - toplam)  + ' TL', '');
    lblParaUstu5tl.Caption   := IfThen( toplam < 5,   sPU + formatfloat('#.##',   5   - toplam) + ' TL', '');

    pnlParaUstu200tl.Visible := toplam < 200;
    pnlParaUstu100tl.Visible := toplam < 100;
    pnlParaUstu50tl.Visible  := toplam < 50;
    pnlParaUstu20tl.Visible  := toplam < 20;
    pnlParaUstu10tl.Visible  := toplam < 10;
    pnlParaUstu5tl.Visible   := toplam < 5;
  end
  else
  begin
    lblParaUstu200tl.Caption := '';
    lblParaUstu100tl.Caption := '';
    lblParaUstu50tl.Caption  := '';
    lblParaUstu20tl.Caption  := '';
    lblParaUstu10tl.Caption  := '';
    lblParaUstu5tl.Caption   := '';

    pnlParaUstu200tl.Visible := true;
    pnlParaUstu100tl.Visible := true;
    pnlParaUstu50tl.Visible  := true;
    pnlParaUstu20tl.Visible  := true;
    pnlParaUstu10tl.Visible  := true;
    pnlParaUstu5tl.Visible   := true;
  end;
end;


procedure TfrmHizliSatis.satisTamamla(islem:string);
var
  qTemp, qHar: TUniQuery;
  sIslemTuru, odemeID, cariKodu, harID, tipi, tutar : string;
begin
  if islem = '' then exit;
  if qryTempSatis.IsEmpty then exit;

  if islem = NAKIT      then sIslemTuru := 'Nakit';
  if islem = KREDIKARTI then sIslemTuru := 'Kredi Kartý';
  if islem = CARI       then sIslemTuru := 'Veresiye';

  //if islem = CARI then
    if not MesajSor('Ekrandaki Satýþ Ýþlemi ' + sIslemTuru +  ' Olarak Tamamlanýp Yenini Baþlatýlacak. Eminmisiniz?' +
                #13#10 + 'ÖDEME ÞEKLÝ : ' + sIslemTuru)
    then exit;



  if qryTempSatis.State in [dsedit,dsInsert] then qryTempSatis.Post;

  if islem = NAKIT      then tipi := 'HS';
  if islem = KREDIKARTI then tipi := 'HSKK';
  if islem = CARI       then tipi := 'HSV';


                                                            ASDASDASD
  qTemp := yeniQuery('select * from tmp_satis where beklemede=0');
  qTemp.First;
  if qTemp.IsEmpty then
  begin
    MesajBilgi('Satýþ Ýþlemi Yok. Lütfen Önce Ýþlem Ekleyin.');
    qTemp.Free;
    edtBarkod.SetFocus;
    exit;
  end;

  qHar  :=  yeniQuery('select sum(toplam) as xToplam from tmp_satis where beklemede=0');
  tutar :=  qHar.FieldByName('xToplam').AsString;

  qHar.Close;
  qHar.SQL.text := 'select * from '+ 'asdasdasdasd' + ' where 1=2';
  qHar.Open;
  qHar.Append;

  qHar.FieldByName('tipi'). AsString   := tipi;
  qHar.FieldByName('gckodu'). AsString := '-1';

  if cbcari.text <> 'PERAKENDE' then
  begin
    cariKodu := veriCekSQL('select cari_kodu from t_cari where cari_isim='+ QuotedStr(cbcari.text), 'cari_kodu');
    if cariKodu <> VERI_YOK then qHar.FieldByName('cari_kodu'). AsString := cariKodu;
  end
  else
    qHar.FieldByName('cari_kodu'). AsString := 'PERAKENDE';

  qHar.FieldByName('tarih').AsDateTime        := now;
  qHar.FieldByName('kayit_tarihi').AsDateTime := now;
  qHar.FieldByName('tutar').AsString          := tutar;
  qHar.FieldByName('kaydeden').AsString  := loginUserAdi;
  qHar.FieldByName('aciklama').AsString       := 'Hýzlý Satýþ ' + islem;



  if islem = NAKIT      then qHar.FieldByName('odeme_nakit').AsString := tutar;
  if islem = KREDIKARTI then qHar.FieldByName('odeme_kk').AsString    := tutar;
  if islem = CARI       then qHar.FieldByName('odeme_cari').AsString  := tutar;

  qHar.Post;

  harID := qHar.FieldByName('id').AsString;

  qHar.Close;
  qHar.SQL.Text := 'select * from ' + 'asdasdas' + ' where 1=2';
  qhar.Open;

  repeat
    qhar.Append;

    qhar.FieldByName('har_id').AsString := harID;
    qhar.FieldByName('tipi').AsString :=  tipi;
    qhar.FieldByName('gckodu').AsString := '-1';

    qhar.FieldByName('stok_kodu').AsString := qtemp.FieldByName('stok_kodu' ).AsString;
    qhar.FieldByName('stok_adi').AsString  := qtemp.FieldByName('stok_adi' ).AsString;
    qhar.FieldByName('adet').AsString      := qtemp.FieldByName('adet' ).AsString;
    qhar.FieldByName('afiyat').AsString    := veriCeksql('select afiyat1 from t_stok where stok_kodu='+ QuotedStr(qtemp.FieldByName('stok_kodu').AsString), 'afiyat1');
    qhar.FieldByName('sfiyat').AsString    := qtemp.FieldByName('fiyat' ).AsString;
    qhar.FieldByName('tutar').AsFloat     := qtemp.FieldByName('fiyat').AsFloat * qhar.FieldByName('adet').AsFloat;
    qhar.FieldByName('kdv').AsString       := qtemp.FieldByName('kdv' ).AsString;
    if qhar.FieldByName('kdv').AsString = '' then qhar.FieldByName('kdv').AsString := '18';
    qhar.FieldByName('iskonto').AsString   := qtemp.FieldByName('iskonto' ).AsString;
    qhar.FieldByName('toplam').AsString    := qtemp.FieldByName('toplam' ).AsString;
    qhar.FieldByName('aciklama' ).AsString := 'PERAKENDE SATIÞ - ' + islem;
    qhar.FieldByName('kayit_tarihi').AsDateTime := now;
    qhar.FieldByName('kaydeden').AsString  := loginUserAdi;
    qhar.FieldByName('tarih').AsDateTime   := now;

    qhar.post;

    qtemp.Next;
  until qtemp.eof;

  with qryCari do
  begin
    close;
    ParamByName('cari_kodu').AsString := cariKodu;
    open;
  end;

  with qryFis do
  begin
    close;
    ParamByName('har_id').AsString := harID;
    open;
  end;


  if cbFisYazdirma.ItemIndex = 1 then
    frxHsFis.ShowReport();

  if cbFisYazdirma.ItemIndex = 2 then
  begin
    frxHsFis.PrepareReport;
    frxHsFis.PrintOptions.ShowDialog := False;
    frxHsFis.Print;
  end;


  //qHsFis.Refresh;


//  if cbFisYazdirma.ItemIndex = 1 then
//    frxHsFis.ShowReport();
//
//  if cbFisYazdirma.ItemIndex = 2 then
//  begin
//    frxHsFis.PrepareReport;
//    frxHsFis.PrintOptions.ShowDialog := False;
//    frxHsFis.Print;
//  end;

  satisIptal;
  FreeAndNil(qTemp);
  FreeAndNil(qHar);

end;




end.
