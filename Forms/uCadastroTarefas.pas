unit uCadastroTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelCadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uConsultaTarefas;

type
  TfrmCadastroTarefas = class(TfrmModelCadastro)
    bdQueryCOD_TAREFA: TFDAutoIncField;
    bdQueryNOME: TStringField;
    bdQueryTIPO: TStringField;
    Codigo: TLabel;
    DBEdit1: TDBEdit;
    dsTarefas: TDataSource;
    Label2: TLabel;
    editNome: TDBEdit;
    Label3: TLabel;
    editTipo: TDBEdit;
    comboTipo: TComboBox;
    SpeedButton1: TSpeedButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroTarefas: TfrmCadastroTarefas;

implementation

{$R *.dfm}

procedure TfrmCadastroTarefas.btnSalvarClick(Sender: TObject);
begin
  case comboTipo.ItemIndex of
    0:
      editTipo.Text := 'D';
    1:
      editTipo.Text := 'S';
    2:
      editTipo.Text := 'Q';
    3:
      editTipo.Text := 'M';
  end;
  inherited;

end;

procedure TfrmCadastroTarefas.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frmConsultaTarefas:=TfrmConsultaTarefas.Create(Self);
  frmConsultaTarefas.ShowModal;
  frmConsultaTarefas.origemConsulta:='cadTarefa';
  frmConsultaTarefas.Release;
end;

end.
