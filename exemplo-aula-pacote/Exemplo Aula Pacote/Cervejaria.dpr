program Cervejaria;

uses
  Vcl.Forms,
  fPrincipal in 'fPrincipal.pas' {frmPrincipal},
  fAbout in 'fAbout.pas' {frmAbout},
  dConexao in 'dConexao.pas' {dmdConexao: TDataModule},
  fCadBase in 'fCadBase.pas' {frmCadBase},
  fCadMarca in 'fCadMarca.pas' {frmCadMarca},
  fCadCategoria in 'fCadCategoria.pas' {frmCadCategoria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmdConexao, dmdConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
