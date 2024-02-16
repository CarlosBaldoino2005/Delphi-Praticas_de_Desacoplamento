object dmdConexao: TdmdConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 248
  Width = 305
  object FDConCervejaria: TFDConnection
    Params.Strings = (
      'Database=C:\Treinamento\Win32\Debug\CERVEJARIA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    ConnectedStoredUsage = []
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 32
  end
end
