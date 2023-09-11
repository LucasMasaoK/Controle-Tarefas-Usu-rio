object DataModule1: TDataModule1
  Height = 600
  Width = 800
  object conexaoBD: TFDConnection
    Params.Strings = (
      'Database=C:\Cursos\Delphi\Controle Tarefas Usu'#225'rio\BD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    Left = 698
    Top = 474
  end
end
