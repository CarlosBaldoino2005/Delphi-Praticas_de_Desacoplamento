object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 658
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 328
    Top = 35
    Width = 58
    Height = 13
    Caption = 'lblResultado'
  end
  object btnSomarInt: TButton
    Left = 48
    Top = 104
    Width = 105
    Height = 25
    Caption = 'SomarInt'
    TabOrder = 0
    OnClick = btnSomarIntClick
  end
  object edtX: TEdit
    Left = 48
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '5'
  end
  object edtY: TEdit
    Left = 192
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '10'
  end
  object btnSomarDouble: TButton
    Left = 184
    Top = 104
    Width = 105
    Height = 25
    Caption = 'SomarDouble'
    TabOrder = 3
    OnClick = btnSomarDoubleClick
  end
  object btnSubtrairInt: TButton
    Left = 328
    Top = 104
    Width = 113
    Height = 25
    Caption = 'SubtrairInt'
    TabOrder = 4
    OnClick = btnSubtrairIntClick
  end
  object MemA: TMemo
    Left = 48
    Top = 160
    Width = 393
    Height = 113
    Lines.Strings = (
      'Important note about DLL memory management: ShareMem must be the'
      
        'first unit in your library'#39's USES clause AND your project'#39's (sel' +
        'ect'
      
        'Project-View Source) USES clause if your DLL exports any procedu' +
        'res or'
      'functions that pass strings as parameters or function results.')
    ScrollBars = ssBoth
    TabOrder = 5
    WordWrap = False
  end
  object MemB: TMemo
    Left = 48
    Top = 296
    Width = 393
    Height = 105
    Lines.Strings = (
      
        'This applies to all strings passed to and from your DLL--even th' +
        'ose that'
      
        'are nested in records and classes. ShareMem is the interface uni' +
        't to'
      
        'the BORLNDMM.DLL shared memory manager, which must be deployed a' +
        'long'
      
        'with your DLL. To avoid using BORLNDMM.DLL, pass string informat' +
        'ion'
      'using PChar or ShortString parameters.eters.')
    ScrollBars = ssBoth
    TabOrder = 6
    WordWrap = False
  end
  object MemResultado: TMemo
    Left = 48
    Top = 432
    Width = 393
    Height = 161
    Lines.Strings = (
      'MemResultado')
    ScrollBars = ssBoth
    TabOrder = 7
    WordWrap = False
  end
  object btnConcatenar: TButton
    Left = 48
    Top = 608
    Width = 75
    Height = 25
    Caption = 'Concatenar'
    TabOrder = 8
    OnClick = btnConcatenarClick
  end
  object btnSomarIntExplicito: TButton
    Left = 488
    Top = 104
    Width = 113
    Height = 25
    Caption = 'SomarIntExplicito'
    TabOrder = 9
    OnClick = btnSomarIntExplicitoClick
  end
  object btnAnotacao: TButton
    Left = 176
    Top = 608
    Width = 75
    Height = 25
    Caption = 'Anota'#231#227'o'
    TabOrder = 10
    OnClick = btnAnotacaoClick
  end
end
