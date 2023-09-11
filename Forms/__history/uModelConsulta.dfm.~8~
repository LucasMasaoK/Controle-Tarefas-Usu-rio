object frmModelConsulta: TfrmModelConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta de'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 89
    Align = alTop
    TabOrder = 0
    object LabeledEdit1: TLabeledEdit
      Left = 24
      Top = 34
      Width = 273
      Height = 23
      EditLabel.Width = 38
      EditLabel.Height = 15
      EditLabel.Caption = 'Buscar:'
      TabOrder = 0
      Text = ''
    end
    object comboPesquisa: TComboBox
      Left = 320
      Top = 34
      Width = 145
      Height = 23
      ItemIndex = 1
      TabOrder = 1
      Text = 'Descri'#231#227'o'
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o'
        'Tipo')
    end
    object btnPesquisar: TBitBtn
      Left = 512
      Top = 33
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 384
    Width = 628
    Height = 58
    Align = alBottom
    TabOrder = 1
    object btnSair: TBitBtn
      Left = 528
      Top = 6
      Width = 91
      Height = 41
      Caption = '&Sair'
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 424
      Top = 6
      Width = 91
      Height = 41
      Caption = '&Incluir'
      TabOrder = 1
    end
    object btnLimpar: TBitBtn
      Left = 424
      Top = 6
      Width = 91
      Height = 41
      Caption = '&Limpar'
      TabOrder = 2
    end
    object btnIncluir: TBitBtn
      Left = 320
      Top = 6
      Width = 91
      Height = 41
      Caption = '&Incluir'
      TabOrder = 3
    end
  end
  object dbGrid: TDBGrid
    Left = 0
    Top = 89
    Width = 628
    Height = 295
    Align = alClient
    DataSource = dsQuery
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object bdQuery: TFDQuery
    Connection = DataModule1.conexaoBD
    Transaction = bdTransaction
    Left = 456
    Top = 328
  end
  object bdTransaction: TFDTransaction
    Connection = DataModule1.conexaoBD
    Left = 528
    Top = 328
  end
  object dsQuery: TDataSource
    DataSet = bdQuery
    Left = 392
    Top = 328
  end
end
