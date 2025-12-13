unit FaturaEkleFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KartBaseFrm, Main, MainDM, dxSkinsCore,
  dxSkinBlue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TfrmFaturaEkle = class(TfrmKartBase)
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FaturaID, FaturaTipi : string;
  end;

var
  frmFaturaEkle: TfrmFaturaEkle;

implementation

{$R *.dfm}

uses _cons;

procedure TfrmFaturaEkle.FormShow(Sender: TObject);
begin
  inherited;
  if FaturaTipi = SATIS_FATURASI then pnlHeader.Caption := '   SATIÞ FATURASI';
  if FaturaTipi = ALIS_FATURASI  then pnlHeader.Caption := '   ALIÞ FATURASI';


  if FaturaID = EmptyStr then
  begin
   // YeniKayitIcinHazirla;
    pnlHeader.Caption := pnlHeader.Caption +  '  -  Yeni Fatura';
  end
  else
  begin
    //CariKartiGetir;
    pnlHeader.Caption := pnlHeader.Caption +  '  -  Düzenle';
  end;
end;

end.
