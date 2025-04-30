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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
