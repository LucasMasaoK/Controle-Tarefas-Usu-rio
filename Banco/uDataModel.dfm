object DataModule1: TDataModule1
  Height = 438
  Width = 687
  PixelsPerInch = 120
  object conexaoBD: TFDConnection
    Params.Strings = (
      'Database=C:\Cursos\Delphi\Controle Tarefas Usu'#225'rio\BD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    Transaction = bdTransaction
    Left = 241
    Top = 233
  end
  object bdLogin: TFDQuery
    Active = True
    Connection = conexaoBD
    SQL.Strings = (
      'SELECT * FROM USUARIO;')
    Left = 368
    Top = 264
    object bdLoginCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'COD_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bdLoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object bdLoginDIREITO: TStringField
      FieldName = 'DIREITO'
      Origin = 'DIREITO'
      FixedChar = True
      Size = 1
    end
    object bdLoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 12
    end
  end
  object dsLogin: TDataSource
    DataSet = bdLogin
    Left = 448
    Top = 280
  end
  object bdTransaction: TFDTransaction
    Options.DisconnectAction = xdRollback
    Options.EnableNested = False
    Connection = conexaoBD
    Left = 264
    Top = 320
  end
end
