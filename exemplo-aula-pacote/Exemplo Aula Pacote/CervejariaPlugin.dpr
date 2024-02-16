program CervejariaPlugin;

uses
  Vcl.Forms,
  fPrincipalPlugin in 'fPrincipalPlugin.pas' {frmPrincipalPlugin},
  dConexao in 'dConexao.pas' {dmdConexao: TDataModule},
  fCadBase in 'fCadBase.pas' {frmCadBase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipalPlugin, frmPrincipalPlugin);
  Application.CreateForm(TdmdConexao, dmdConexao);
  Application.CreateForm(TfrmCadBase, frmCadBase);
  Application.Run;
end.

