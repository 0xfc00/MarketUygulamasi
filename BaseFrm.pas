unit BaseFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MainDM, uni;

type
  TfrmBase = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TumQueryleriAc(AFrm : TForm);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

uses
  Main, _cons;

procedure TfrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  caption := APP_NAME;
end;

procedure TfrmBase.TumQueryleriAc(AFrm : TForm);
var
  i : integer;
begin
  for I := 0 to AFrm.ComponentCount-1 do
    if AFrm.Components[i] is TUniQuery then
    begin
      TUniQuery(AFrm.Components[i]).Connection := dmMain.UniConn;

      if AFrm.Components[i].Tag = 0 then
        TUniQuery(AFrm.Components[i]).Open;
    end
end;

end.
