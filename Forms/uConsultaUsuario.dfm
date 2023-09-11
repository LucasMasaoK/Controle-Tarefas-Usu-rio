inherited frmConsultaUsuario: TfrmConsultaUsuario
  Caption = 'Consulta de Usuario'
  ClientWidth = 626
  OnShow = FormShow
  ExplicitWidth = 642
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 626
    ExplicitWidth = 624
  end
  inherited Panel2: TPanel
    Width = 626
    ExplicitTop = 362
    ExplicitWidth = 624
    inherited btnSair: TBitBtn
      OnClick = btnSairClick
    end
    inherited btnLimpar: TBitBtn
      Caption = '&Selecionar'
      OnClick = btnLimparClick
    end
    inherited btnIncluir: TBitBtn
      OnClick = btnIncluirClick
    end
  end
  inherited dbGrid: TDBGrid
    Width = 626
    OnDblClick = dbGridDblClick
  end
  inherited bdQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM USUARIO;')
    object bdQueryCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'COD_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bdQueryNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object bdQueryDIREITO: TStringField
      FieldName = 'DIREITO'
      Origin = 'DIREITO'
      FixedChar = True
      Size = 1
    end
    object bdQuerySENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 12
    end
  end
end
