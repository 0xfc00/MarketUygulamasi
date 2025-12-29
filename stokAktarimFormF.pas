unit stokAktarimFormF;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,















  Vcl.Grids, cxGroupBox, cxButtons, ComObj,
  cxTextEdit, cxDropDownEdit,
  Data.DB, MemDS, DBAccess,  FireDAC.Comp.Client, Main, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  Vcl.Menus, cxMaskEdit, Vcl.StdCtrls, dxSkinBasic, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TstokAktarimForm = class(TForm)
    gbUst: TcxGroupBox;
    OpenDialog1: TOpenDialog;
    cxGroupBox2: TcxGroupBox;
    sGrd: TStringGrid;
    btnDosyaAc: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    btnKapat: TcxButton;
    cxGroupBox9: TcxGroupBox;
    btnAktar: TcxButton;
    cbStokKoduKolon: TcxComboBox;
    cbStokAdiKolon: TcxComboBox;
    cbBarkodKolon: TcxComboBox;
    cbSatisFiyatKolon: TcxComboBox;
    cbAlisFiyatKolon: TcxComboBox;
    cbKdvKolon: TcxComboBox;
    edtBaslangicSatir: TcxTextEdit;
    MSQuery1: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDosyaAcClick(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
    procedure btnAktarClick(Sender: TObject);
    procedure edtBaslangicSatirKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stokAktarimForm: TstokAktarimForm;

implementation

{$R *.dfm}

uses  _func;

function Xls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r: Integer;
begin
  Result := False;
  // Create Excel-OLE Object
  XLApp := CreateOleObject('Excel.application');
  try
    // Hide Excel
    XLApp.Visible := False;

    // Open the Workbook
    XLApp.Workbooks.Open(AXLSFile);

    // Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];

    // In order to know the dimension of the WorkSheet, i.e the number of rows
    // and the number of columns, we activate the last non-empty cell of it

    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    // Get the value of the last row
    x := XLApp.ActiveCell.Row;
    // Get the value of the last column
    y := XLApp.ActiveCell.Column;

    // Set Stringgrid's row &col dimensions.

    AGrid.RowCount := x;
    AGrid.ColCount := y;

    // Assign the Variant associated with the WorkSheet to the Delphi Variant

    RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;
    //  Define the loop for filling in the TStringGrid
    k := 1;
    repeat
      for r := 1 to y do
        AGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[K, R];
      Inc(k, 1);
      AGrid.RowCount := k + 1;
    until k > x;
    // Unassign the Delphi Variant Matrix
    RangeMatrix := Unassigned;

  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      // XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
      Result := True;
    end;
  end;
end;




procedure TstokAktarimForm.btnAktarClick(Sender: TObject);
var
i, intBasariliIslem, inthataliIslem : integer;
stokKodKolon, stokAdiKolon, barkodKolon, satisFiyatKolon, alýsFiyatKolon, kdvKolon, startOfset : integer;
  q : TFDQuery;
begin
  if sGrd.RowCount = 1 then exit;

  if (cbStokKoduKolon.Text = '' ) or (cbStokAdiKolon.Text = '') or (cbBarkodKolon.Text = '') then
  begin
   MesajBilgi('Stokkodu, Stok adý ve Barkod alanlarý zorunludur..');
   exit;
  end;

  if not MesajSor('Devam ederseniz ekrandaki stok kartlarý eklenecek/güncellenecek. Eminmisiniz?') then exit;

  //sqlCalistir('ALTER INDEX ALL ON dbo.STOK DISABLE;');

  startOfset := StrToIntDef(edtBaslangicSatir.Text ,1);
  if startOfset <= 0 then startOfset := 1;

  stokKodKolon    := StrToInt(cbStokKoduKolon.Text)-1;
  stokAdiKolon    := StrToInt(cbStokAdiKolon.Text)-1;
  barkodKolon     := StrToInt(cbBarkodKolon.Text)-1;

  satisFiyatKolon := StrToIntDef((cbSatisFiyatKolon.Text),0)-1;
  alýsFiyatKolon  := StrToIntDef((cbAlisFiyatKolon.Text),0)-1;
  kdvKolon        := StrToIntDef((cbKdvKolon.Text),0)-1;

  //q := yeniQuery('select * from STOK where STOKKODU= :STOKKODU OR STOKADI = :STOKADI OR BARKOD= :BARKOD ', false);
  q := yeniQuery('select * from STOK where  BARKOD= :BARKOD ', false);

  intBasariliIslem := 0;
  inthataliIslem   := 0;

  gbUst.Enabled := false;

  for I := startOfset-1 to sGrd.RowCount-1 do
  begin
    Application.ProcessMessages;
    Caption :=' Stoklar aktarýlýyor... ' + IntToStr(i+1) + ' / ' + IntToStr(sGrd.RowCount);
    try
      q.Close;
//      q.ParamByName('STOKKODU').AsString := sGrd.Cells[stokKodKolon,i] ;
//      q.ParamByName('STOKADI').AsString := sGrd.Cells[stokAdiKolon,i] ;
      q.ParamByName('BARKOD').AsString := sGrd.Cells[barkodKolon,i] ;
      q.Open;
      if q.IsEmpty then
        q.Append
      else
        q.Edit;

      q.FieldByName('STOKKODU').AsString := sGrd.Cells[  stokKodKolon, i  ] ;
      q.FieldByName('STOKADI').AsString  := sGrd.Cells[  stokAdiKolon, i  ] ;
      q.FieldByName('BARKOD').AsString   := sGrd.Cells[  barkodKolon,  i  ] ;

      if satisFiyatKolon <> -1 then
        q.FieldByName('SATISFIYATI').asfloat := StrToFloatDef(sGrd.Cells[ satisFiyatKolon, i], 0);
      if alýsFiyatKolon <> -1 then
        q.FieldByName('ALISFIYATI').asfloat   := StrToFloatDef(sGrd.Cells[ alýsFiyatKolon, i], 0);
      if kdvKolon <> -1 then
        q.FieldByName('KDV').asfloat         := StrToFloatDef(sGrd.Cells[ kdvKolon, i], 0);

      q.Post;
      inc(intBasariliIslem);
    except on E: Exception do
      begin
        Inc(inthataliIslem);
      end;
    end;
  end;





  MesajBilgi(
    'Tamamlandý..' + #13+#10 +
    IntToStr(intBasariliIslem) + ' Kayýt baþarýyla aktarýldý..' + #13+#10 +
    IntToStr(inthataliIslem) + ' Kayýt aktarýlamadý..'
    );

  gbUst.Enabled := true;

  self.Caption := 'Stok Ýçeri Aktarým';
  //sqlCalistir('ALTER INDEX ALL ON dbo.STOK REBUILD;');
end;

procedure TstokAktarimForm.btnDosyaAcClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    if Xls_To_StringGrid(sGrd, OpenDialog1.FileName) then
      btnAktar.Enabled := true
    else
      MesajBilgi('Hata..');
end;

procedure TstokAktarimForm.btnKapatClick(Sender: TObject);
begin
  close;
end;

procedure TstokAktarimForm.edtBaslangicSatirKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #8] )then key := #0;
end;

procedure TstokAktarimForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
