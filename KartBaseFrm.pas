unit KartBaseFrm;

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.Forms, BaseFrm, GradientLabel,
  Vcl.ExtCtrls, Vcl.StdCtrls;

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
