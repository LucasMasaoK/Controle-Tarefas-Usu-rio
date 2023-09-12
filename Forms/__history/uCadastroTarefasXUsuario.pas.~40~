unit uCadastroTarefasXUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, uConsultaUsuario;

type
  TfrmCadastroTarefaXUsuario = class(TfrmModelConsulta)
    bdQueryCOD_TAREFA: TIntegerField;
    bdQueryNOME: TStringField;
    bdQueryTIPO: TStringField;
    btnConsultaUsuario: TSpeedButton;
    editID: TDBEdit;
    Label1: TLabel;
    bdComand: TFDCommand;
    Label2: TLabel;
    procedure btnConsultaUsuarioClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure editIDChange(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroTarefaXUsuario: TfrmCadastroTarefaXUsuario;

implementation

{$R *.dfm}

uses uConsultaTarefas;

procedure TfrmCadastroTarefaXUsuario.btnConsultaUsuarioClick(Sender: TObject);
begin
  inherited;
  frmConsultaUsuario := TfrmConsultaUsuario.Create(Self);
  frmConsultaUsuario.consultaOrigem := 'cadTarefa';
  frmConsultaUsuario.ShowModal;
  frmConsultaUsuario.Release;
end;

procedure TfrmCadastroTarefaXUsuario.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if editID.text <> EmptyStr then
  begin
    frmConsultaTarefas := TfrmConsultaTarefas.Create(Self);
    frmConsultaTarefas.origemConsulta := 'cadTarefa';
    frmConsultaTarefas.ShowModal;
    frmConsultaTarefas.Release;
  end
  else
    ShowMessage('Selecione um usuário!');
end;

procedure TfrmCadastroTarefaXUsuario.btnLimparClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  if MessageDlg('Deseja limpar todas as tarefas?', TMsgDlgType.mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    bdComand.CommandKind := skDelete;
    bdComand.CommandText.text :=
      'delete from usuario_tarefa where usuario_tarefa.cod_usuario=' +
      editID.text;
    bdComand.Active := false;
    bdComand.open;
    bdQuery.Refresh;
  end
  else
  begin
    abort;
  end
end;

procedure TfrmCadastroTarefaXUsuario.btnPesquisarClick(Sender: TObject);
var
  sql: String;
begin
  inherited;
  bdQuery.sql.Clear;
  bdQuery.sql.Add('SELECT tarefa.cod_tarefa,tarefa.nome,tarefa.tipo FROM USUARIO_TAREFA JOIN tarefa ON usuario_tarefa.cod_tarefa = tarefa.cod_tarefa where usuario_tarefa.cod_usuario= :pCodUsuario and  tarefa.tipo= :pTarefaTipo');
  bdQuery.ParamByName('pCodUsuario').AsString:=editID.Text;
  sql:=comboPesquisa.Text;
  bdQuery.ParamByName('pTarefaTipo').AsString:=sql[1];
  bdQuery.Open;


end;

procedure TfrmCadastroTarefaXUsuario.editIDChange(Sender: TObject);
begin
  inherited;
  bdQuery.Active := True;
  bdQuery.sql.Clear;
  bdQuery.sql.Add
    ('SELECT tarefa.cod_tarefa,tarefa.nome,tarefa.tipo FROM USUARIO_TAREFA JOIN tarefa ON usuario_tarefa.cod_tarefa = tarefa.cod_tarefa where usuario_tarefa.cod_usuario='
    + editID.text);
  bdQuery.open;

end;

end.
