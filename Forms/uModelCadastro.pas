unit uModelCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uDataModel;

type
  TfrmModelCadastro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnLimpar: TBitBtn;
    btnFechar: TBitBtn;
    btnNovo: TBitBtn;
    bdQuery: TFDQuery;
    bdTransaction: TFDTransaction;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelCadastro: TfrmModelCadastro;

implementation

{$R *.dfm}

procedure TfrmModelCadastro.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja exccluir o cadastro da tarefa?',
    TMsgDlgType.mtConfirmation, [mbOk, mbNo], 0) = mrOk then
  begin
    bdQuery.Delete;
  end;

end;

procedure TfrmModelCadastro.btnFecharClick(Sender: TObject);
begin
  bdQuery.Close;
  Close;
end;

procedure TfrmModelCadastro.btnNovoClick(Sender: TObject);
begin
  DataModule1.conexaoBD.StartTransaction;
  bdQuery.Append;
end;

procedure TfrmModelCadastro.btnSalvarClick(Sender: TObject);
begin
  bdQuery.post;
  DataModule1.conexaoBD.Commit;

end;

procedure TfrmModelCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DataModule1.conexaoBD.InTransaction=true then
  begin
    if MessageDlg('Deseja sair sem salvar?', TMsgDlgType.mtConfirmation,
      [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
    begin
      DataModule1.conexaoBD.Rollback;
    end;

    bdQuery.Close;
  end;
end;

  procedure TfrmModelCadastro.FormShow(Sender: TObject);
  begin
    bdQuery.Active := true;
    //bdQuery.Edit;
    if DataModule1.usuarioTipo <> 'S' then
    begin
      btnSalvar.Enabled := false;
      btnExcluir.Enabled := false;
      btnLimpar.Enabled := false;
      btnNovo.Enabled := false;
    end;

  end;

end.
