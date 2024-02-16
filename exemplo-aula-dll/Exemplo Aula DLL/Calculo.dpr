library Calculo;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes;

{$R *.res}

function Somar(pX, pY: integer): integer; stdcall; overload;
begin
  result := pX + pY;
end;

function Somar(pX, pY: double): double; stdcall; overload;
begin
  result := pX + pY;
end;

function Subtrair(pX, pY: integer): integer; stdcall;
begin
  result := pX - pY;
end;

function Concatenar(pTextoA, pTextoB: pChar): Pchar; stdcall;
var
  lTextoA, lTextoB: string;
begin
  lTextoA := pTextoA;
  lTextoB := pTextoB;

  Result := pChar(lTextoA + lTextoB);
end;


exports
  Somar(pX, pY: integer) name 'SomarInt',
  Somar(pX, pY: double) name 'SomarDouble',
  Subtrair name 'SubtrairInt',
  Concatenar;


begin
end.
