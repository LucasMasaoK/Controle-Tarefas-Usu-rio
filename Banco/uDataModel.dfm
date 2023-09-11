object DataModule1: TDataModule1
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object conexaoBD: TFDConnection
    Params.Strings = (
      'Database=C:\Cursos\Delphi\Controle Tarefas Usu'#225'rio\BD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Left = 872
    Top = 592
  end
end
