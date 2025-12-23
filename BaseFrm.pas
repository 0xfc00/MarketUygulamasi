unit BaseFrm;

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.Forms, MainDM, uni, _func;

type
  TfrmBase = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TumQueryleriAc(AFrm : TForm; AAcKapa : boolean = False);
    procedure TumQuerylereConnectionAta(AFrm : TForm);
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
  try lisansKontrol; except end;
  lisansYoksaKapat;
end;

procedure TfrmBase.TumQueryleriAc(AFrm : TForm; AAcKapa : boolean = False);
var
  i : integer;
begin
  for I := 0 to AFrm.ComponentCount-1 do
    if AFrm.Components[i] is TUniQuery then
    begin
      if AFrm.Components[i].Tag = 0 then
        qAcKapa_fn(TUniQuery(AFrm.Components[i]), AAcKapa);
    end
end;



procedure TfrmBase.TumQuerylereConnectionAta(AFrm : TForm);
var
  i : integer;
begin
  for I := 0 to AFrm.ComponentCount-1 do
    if AFrm.Components[i] is TUniQuery then
      TUniQuery(AFrm.Components[i]).Connection := dmMain.UniConn;
end;

end.
