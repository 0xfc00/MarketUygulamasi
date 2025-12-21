unit ListBaseFrm;

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.Forms, BaseFrm, GradientLabel,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmListBase = class(TfrmBase)
    pntUst: TPanel;
    pnlHeader: TGradientLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListBase: TfrmListBase;

implementation

{$R *.dfm}

end.
