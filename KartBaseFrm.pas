unit KartBaseFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseFrm, Vcl.StdCtrls, GradientLabel,
  Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons;

type
  TfrmKartBase = class(TfrmBase)
    pntUst: TPanel;
    pnlHeader: TGradientLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKartBase: TfrmKartBase;

implementation

{$R *.dfm}

end.
