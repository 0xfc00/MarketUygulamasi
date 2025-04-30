unit ListBaseFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseFrm, Vcl.StdCtrls, GradientLabel,
  Vcl.ExtCtrls;

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
