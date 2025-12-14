unit MainDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  SQLServerUniProvider, MemDS;

type
  TdmMain = class(TDataModule)
    UniConn: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    qry1: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main;

{$R *.dfm}

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  UniConn.close;
  UniConn.open;
  //LoginFormAc_fn; //deneme
end;

end.
