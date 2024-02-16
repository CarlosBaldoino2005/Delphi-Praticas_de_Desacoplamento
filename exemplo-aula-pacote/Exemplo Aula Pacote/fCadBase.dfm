object frmCadBase: TfrmCadBase
  Left = 0
  Top = 0
  Caption = 'frmCadBase'
  ClientHeight = 437
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 192
    ExplicitTop = 216
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 633
      Height = 39
      DataSource = dscCadastro
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 120
      ExplicitTop = 10
      ExplicitWidth = 240
      ExplicitHeight = 25
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 635
    Height = 355
    Align = alClient
    DataSource = dscCadastro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    Caption = 'Titulo Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = -23
  end
  object dscCadastro: TDataSource
    DataSet = qryCadastro
    Left = 184
    Top = 192
  end
  object qryCadastro: TFDQuery
    Left = 296
    Top = 192
  end
end
