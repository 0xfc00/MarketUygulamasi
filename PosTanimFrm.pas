unit PosTanimFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KartBaseFrm, dxSkinsCore, dxSkinBlue,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls;

type
  TfrmPosTanim = class(TfrmKartBase)
    pnlAlt: TPanel;
    btnKapat: TcxButton;
    btnkaydet: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnKapatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosTanim: TfrmPosTanim;

implementation

{$R *.dfm}

procedure TfrmPosTanim.btnKapatClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmPosTanim.FormCreate(Sender: TObject);
begin
  inherited;
  pnlHeader.Caption := '   TANIMLAR';
  TumQueryleriAc(self);
end;

end.
