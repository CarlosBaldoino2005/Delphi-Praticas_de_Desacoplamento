unit fPrincipalPlugin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, fCadBase,
  dConexao;

type
  TfrmPrincipalPlugin = class(TForm)
    Panel1: TPanel;
    btnCadCategoria: TButton;
    btnCadMarca: TButton;
    procedure btnCadCategoriaClick(Sender: TObject);
    procedure btnCadMarcaClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AbrirFormularioDePacote(pNomeBPL, pNomeClasseCadastro: string);
    { Public declarations }
  end;

var
  frmPrincipalPlugin: TfrmPrincipalPlugin;

implementation

{$R *.dfm}

procedure TfrmPrincipalPlugin.AbrirFormularioDePacote(pNomeBPL,
  pNomeClasseCadastro: string);
var
  lBplHandle: HMODULE;
  lClass: TPersistentClass;
  lfrmCadBase: TfrmCadBase;
begin
  lBplHandle := LoadPackage(pNomeBPL);
  if lBplHandle <> 0 then
  begin
    lClass := GetClass(pNomeClasseCadastro);

    if lClass <> nil then
    begin
      lfrmCadBase := TfrmCadBaseClass(lClass).Create(dmdConexao.FDConCervejaria,self);
      lfrmCadBase.Show;
    end;
  end;
end;

procedure TfrmPrincipalPlugin.btnCadCategoriaClick(Sender: TObject);
begin
  AbrirFormularioDePacote('pkgCadCategoria.bpl','TfrmCadCategoria');
end;

procedure TfrmPrincipalPlugin.btnCadMarcaClick(Sender: TObject);
begin
  AbrirFormularioDePacote('pkgCadMarca.bpl','TfrmCadMarca');
end;

end.
