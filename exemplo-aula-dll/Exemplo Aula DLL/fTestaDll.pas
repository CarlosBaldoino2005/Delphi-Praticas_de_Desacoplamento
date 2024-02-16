unit fTestaDll;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnSomarInt: TButton;
    edtX: TEdit;
    edtY: TEdit;
    lblResultado: TLabel;
    btnSomarDouble: TButton;
    btnSubtrairInt: TButton;
    MemA: TMemo;
    MemB: TMemo;
    MemResultado: TMemo;
    btnConcatenar: TButton;
    btnSomarIntExplicito: TButton;
    btnAnotacao: TButton;
    procedure btnSomarIntClick(Sender: TObject);
    procedure btnSomarDoubleClick(Sender: TObject);
    procedure btnSubtrairIntClick(Sender: TObject);
    procedure btnConcatenarClick(Sender: TObject);
    procedure btnSomarIntExplicitoClick(Sender: TObject);
    procedure btnAnotacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TfncCalculoInt = function (pX, pY: integer): integer; stdcall;

  const
    DLL_CALCULO = 'Calculo.dll';
    DLL_ANOTACAO = 'Anotacao.dll';

  function SomarInt(pX, pY: integer): integer; stdcall; external DLL_CALCULO delayed;
  function SomarDouble(pX, pY: Double): Double; stdcall; external DLL_CALCULO delayed;
  function SubtrairInt(pX, pY: integer): integer; stdcall; external DLL_CALCULO delayed;
  function Concatenar(pTextoA, pTextoB: pChar): Pchar; stdcall; external DLL_CALCULO delayed;

  function FazerAnotacoes(out pAnotacao: pChar): boolean; stdcall; external DLL_ANOTACAO delayed;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAnotacaoClick(Sender: TObject);
var
  lAnotacao: pchar;
begin
  if FazerAnotacoes(lAnotacao) then
    MemResultado.Text := lAnotacao;

end;

procedure TForm1.btnConcatenarClick(Sender: TObject);
begin
  MemResultado.Text := Concatenar(pChar(MemA.Text),pChar(MemB.Text));
end;

procedure TForm1.btnSomarDoubleClick(Sender: TObject);
var
  lX, lY: Double;
begin
  lX := StrToFloat(edtX.Text);
  lY := StrToFloat(edtY.Text);

  lblResultado.Caption := SomarDouble(lX,lY).ToString;
end;

procedure TForm1.btnSomarIntClick(Sender: TObject);
var
  lX, lY: integer;
begin
  lX := StrToInt(edtX.Text);
  lY := StrToInt(edtY.Text);

  lblResultado.Caption := SomarInt(lX,lY).ToString;

end;

procedure TForm1.btnSomarIntExplicitoClick(Sender: TObject);
var
  lDllHandle: THandle;
  lfncSomarInt: TfncCalculoInt;
begin
  lDllHandle := LoadLibrary(DLL_CALCULO);
  if lDllHandle <> 0 then
  begin
    try
      lfncSomarInt := GetProcAddress(lDllHandle,'SomarInt');
      if Assigned(lfncSomarInt) then
      begin
        lblResultado.Caption := lfncSomarInt(StrToIntDef(edtX.Text,0),StrToIntDef(edtY.Text,0)).ToString;
      end;
    finally
      FreeLibrary(lDllHandle);
    end;
  end;

end;

procedure TForm1.btnSubtrairIntClick(Sender: TObject);
var
  lX, lY: integer;
begin
  lX := StrToInt(edtX.Text);
  lY := StrToInt(edtY.Text);

  lblResultado.Caption := SubtrairInt(lX,lY).ToString;
end;

end.
