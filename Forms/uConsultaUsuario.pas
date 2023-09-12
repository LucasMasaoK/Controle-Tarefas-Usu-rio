unit uConsultaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TfrmConsultaUsuario = class(TfrmModelConsulta)
    bdQueryCOD_USUARIO: TIntegerField;
    bdQueryNOME: TStringField;
    bdQueryDIREITO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);

  private
    { Private declarations }
  public
    consultaOrigem: string;
  end;

var
  frmConsultaUsuario: TfrmConsultaUsuario;

implementation

{$R *.dfm}

uses uCadastroUsuario, uCadastroTarefasXUsuario, uLogin;

procedure TfrmConsultaUsuario.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Close;
  frmCadastroUsuario.btnNovo.Click;
  frmCadastroUsuario.editNome.SetFocus;
end;

procedure TfrmConsultaUsuario.btnLimparClick(Sender: TObject);
begin
  inherited;
  if consultaOrigem = 'cadUser' then
  begin
    frmCadastroUsuario.bdQuery.Open;
    frmCadastroUsuario.bdQuery.Locate('COD_USUARIO',
      bdQueryCOD_USUARIO.AsString, []);
  end
  else if consultaOrigem = 'cadTarefa' then
  begin
    frmCadastroTarefaXUsuario.editID.Text := bdQueryCOD_USUARIO.AsString;
    frmCadastroTarefaXUsuario.editPesquisa.Text := bdQueryNOME.AsString;
  end
  else if consultaOrigem = 'login' then
  begin
    frmLogin.editID.Text := bdQueryCOD_USUARIO.AsString;
    frmLogin.editNome.Text := bdQueryNOME.AsString;
    frmLogin.editSenha.SetFocus;
  end;

  Close;
end;

procedure TfrmConsultaUsuario.btnPesquisarClick(Sender: TObject);
begin
bdQuery.Close;
 bdQuery.SQL.Clear;
 bdQuery.Params.Clear;
 bdQuery.SQL.Add('');
 case comboPesquisa.ItemIndex of
  0:
 begin
 bdQuery.SQL.Add('SELECT * FROM USUARIO WHERE COD_USUARIO= :pPesquisa');
 bdQuery.ParamByName('pPesquisa').AsString:=editPesquisa.Text;
 bdQuery.Open;
 end;
 1:
 begin
 bdQuery.SQL.Add('SELECT * FROM USUARIO WHERE NOME LIKE :pPesquisa');
 bdQuery.ParamByName('pPesquisa').AsString:=editPesquisa.Text+'%';
 bdQuery.Open;
 end;
 2:
 begin
 bdQuery.SQL.Add('SELECT * FROM USUARIO WHERE DIREITO=:pPesquisa');
 bdQuery.ParamByName('pPesquisa').AsString:=editPesquisa.Text;
 bdQuery.Open;
 end;

 end;

end;

procedure TfrmConsultaUsuario.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmConsultaUsuario.dbGridDblClick(Sender: TObject);
begin
  inherited;
   if consultaOrigem = 'cadUser' then
  begin
    frmCadastroUsuario.bdQuery.Open;
    frmCadastroUsuario.bdQuery.Locate('COD_USUARIO',
      bdQueryCOD_USUARIO.AsString, []);
      if frmCadastroUsuario.bdQueryDIREITO.AsString='O' then
      begin
      frmCadastroUsuario.comboDireito.ItemIndex:= 0;
      end
      else
      begin
      frmCadastroUsuario.comboDireito.ItemIndex:= 1;
      end;

  end
  else if consultaOrigem = 'cadTarefa' then
  begin
    frmCadastroTarefaXUsuario.editID.Text := bdQueryCOD_USUARIO.AsString;
    frmCadastroTarefaXUsuario.editPesquisa.Text := bdQueryNOME.AsString;
  end
  else if consultaOrigem = 'login' then
  begin
    frmLogin.editID.Text := bdQueryCOD_USUARIO.AsString;
    frmLogin.editNome.Text := bdQueryNOME.AsString;
    frmLogin.editSenha.SetFocus;
  end;

  Close;
end;

procedure TfrmConsultaUsuario.FormShow(Sender: TObject);
begin
  inherited;
  bdQuery.Active := true;
  bdQuery.SQL.Clear;
  bdQuery.SQL.Add('SELECT * FROM USUARIO');
  bdQuery.Open;
end;

end.
