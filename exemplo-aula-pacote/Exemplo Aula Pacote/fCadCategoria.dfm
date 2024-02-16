inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'frmCadCategoria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Caption = 'Cadastro de Categoria'
  end
  inherited qryCadastro: TFDQuery
    Connection = dmdConexao.FDConCervejaria
    SQL.Strings = (
      'select *'
      'from Categoria')
  end
end
