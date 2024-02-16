inherited frmCadMarca: TfrmCadMarca
  Caption = 'frmCadMarca'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Caption = 'Cadastro de Marca'
  end
  inherited qryCadastro: TFDQuery
    Connection = dmdConexao.FDConCervejaria
    SQL.Strings = (
      'select *'
      'from Marca')
    Left = 280
  end
end
