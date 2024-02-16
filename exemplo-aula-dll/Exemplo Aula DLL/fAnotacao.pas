unit fAnotacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmAnotacao = class(TForm)
    Label1: TLabel;
    pnlConfirmacao: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    memAnotacao: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
    class function FazerAnotacoes(out pAnotacao: pChar): boolean;
  end;

var
  frmAnotacao: TfrmAnotacao;

implementation

{$R *.dfm}

{ TfrmAnotacao }

class function TfrmAnotacao.FazerAnotacoes(out pAnotacao: pChar): boolean;
var
  lfrmAnotacao: TfrmAnotacao;
begin
  Result := False;
  lfrmAnotacao := TfrmAnotacao.Create(nil);
  try
    if lfrmAnotacao.ShowModal = mrOk then
    begin
      pAnotacao := pchar(lfrmAnotacao.memAnotacao.Text);
      Result := True;
    end;
  finally
    lfrmAnotacao.Free;
  end;
end;

end.
