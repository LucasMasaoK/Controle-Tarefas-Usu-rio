object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema Controle Tarefas'
  ClientHeight = 487
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = menuPrincipal
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 456
    Width = 721
    Height = 31
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object menuPrincipal: TMainMenu
    Left = 248
    Top = 184
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Usuario1: TMenuItem
      Caption = 'Usuario'
      object CadastroUsuario1: TMenuItem
        Caption = 'Cadastro'
        OnClick = CadastroUsuario1Click
      end
    end
    object arefa1: TMenuItem
      Caption = 'Tarefa'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro1Click
      end
      object ControleTarefas1: TMenuItem
        Caption = 'Controle Tarefas'
        OnClick = ControleTarefas1Click
      end
    end
  end
end
