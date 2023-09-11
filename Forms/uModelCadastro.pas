unit uModelCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    btnAjuda: TBitBtn;
    bdQuery: TFDQuery;
    bdTransaction: TFDTransaction;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
bdQuery.Delete;
end;

procedure TfrmModelCadastro.btnFecharClick(Sender: TObject);
begin
bdQuery.Close;
Close;
end;

procedure TfrmModelCadastro.btnLimparClick(Sender: TObject);
begin
bdQuery.Append;
end;

procedure TfrmModelCadastro.btnSalvarClick(Sender: TObject);
begin
bdQuery.post;
end;

procedure TfrmModelCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
bdQuery.Close;
end;

procedure TfrmModelCadastro.FormShow(Sender: TObject);
begin
bdQuery.Active:=true;
bdQuery.Edit;
end;

end.
