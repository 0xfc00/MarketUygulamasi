program khProDbKurulum;

uses
  Vcl.Forms,
  mainFrm in 'mainFrm.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
