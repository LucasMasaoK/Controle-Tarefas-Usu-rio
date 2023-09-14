object frmModelCadastro: TfrmModelCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de '
  ClientHeight = 431
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 349
    Width = 626
    Height = 82
    Align = alBottom
    TabOrder = 0
    object btnSalvar: TBitBtn
      Left = 163
      Top = 24
      Width = 91
      Height = 41
      Caption = '&Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnExcluir: TBitBtn
      Left = 275
      Top = 24
      Width = 91
      Height = 41
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = btnExcluirClick
    end
    object btnLimpar: TBitBtn
      Left = 387
      Top = 24
      Width = 91
      Height = 41
      Caption = '&Limpar'
      TabOrder = 2
    end
    object btnFechar: TBitBtn
      Left = 499
      Top = 24
      Width = 91
      Height = 41
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btnFecharClick
    end
    object btnNovo: TBitBtn
      Left = 55
      Top = 25
      Width = 91
      Height = 41
      Caption = '&Novo'
      TabOrder = 4
      OnClick = btnNovoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 626
    Height = 349
    Align = alClient
    TabOrder = 1
  end
  object bdQuery: TFDQuery
    Connection = DataModule1.conexaoBD
    Transaction = DataModule1.bdTransaction
    Left = 488
    Top = 328
  end
  object bdTransaction: TFDTransaction
    Connection = DataModule1.conexaoBD
    Left = 536
    Top = 320
  end
end
