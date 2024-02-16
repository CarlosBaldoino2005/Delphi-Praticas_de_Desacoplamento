unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, fAbout,
  fCadMarca, fCadCategoria;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnAbout: TButton;
    btnCadMarca: TButton;
    btnCadCategoria: TButton;
    procedure btnAboutClick(Sender: TObject);
    procedure btnCadMarcaClick(Sender: TObject);
    procedure btnCadCategoriaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAboutClick(Sender: TObject);
var
  lfrmAbout: TfrmAbout;
begin
  lfrmAbout := TfrmAbout.Create(nil);
  lfrmAbout.ShowModal;
end;

procedure TfrmPrincipal.btnCadCategoriaClick(Sender: TObject);
begin
  if frmCadCategoria = nil then
  begin
    frmCadCategoria := TfrmCadCategoria.Create(self);
  end;
  frmCadCategoria.Show;

end;

procedure TfrmPrincipal.btnCadMarcaClick(Sender: TObject);
begin
  if frmCadMarca = nil then
  begin
    frmCadMarca := TfrmCadMarca.Create(self);
  end;
  frmCadMarca.Show;

end;

end.
