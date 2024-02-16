object frmAnotacao: TfrmAnotacao
  Left = 0
  Top = 0
  Caption = 'Anota'#231#227'o'
  ClientHeight = 501
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 482
    Height = 13
    Margins.Left = 5
    Margins.Top = 5
    Align = alTop
    Caption = 'Anota'#231#227'o'
    ExplicitLeft = 16
    ExplicitTop = 8
    ExplicitWidth = 46
  end
  object pnlConfirmacao: TPanel
    Left = 0
    Top = 460
    Width = 490
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 344
    ExplicitWidth = 185
    object btnOk: TBitBtn
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 295
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object memAnotacao: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 24
    Width = 484
    Height = 433
    Align = alClient
    Lines.Strings = (
      'memAnotacao')
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 27
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
