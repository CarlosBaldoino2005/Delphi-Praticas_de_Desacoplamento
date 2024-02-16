unit fCadBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadBase = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dscCadastro: TDataSource;
    qryCadastro: TFDQuery;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(pFDConnection: TFDConnection; AOwner: TComponent); reintroduce; virtual;
    { Public declarations }
  end;

  TfrmCadBaseClass = class of TfrmCadBase;

var
  frmCadBase: TfrmCadBase;

implementation

{$R *.dfm}

constructor TfrmCadBase.Create(pFDConnection: TFDConnection;
  AOwner: TComponent);
begin
  inherited Create(AOwner);
  qryCadastro.Connection := pFDConnection;
end;

procedure TfrmCadBase.FormShow(Sender: TObject);
begin
  qryCadastro.Open;
end;

end.
