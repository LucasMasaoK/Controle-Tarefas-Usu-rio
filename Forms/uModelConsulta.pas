unit uModelConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TfrmModelConsulta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbGrid: TDBGrid;
    editPesquisa: TLabeledEdit;
    comboPesquisa: TComboBox;
    btnPesquisar: TBitBtn;
    btnSair: TBitBtn;
    BitBtn2: TBitBtn;
    btnLimpar: TBitBtn;
    btnIncluir: TBitBtn;
    bdQuery: TFDQuery;
    dsQuery: TDataSource;
    bdTransaction: TFDTransaction;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelConsulta: TfrmModelConsulta;

implementation

{$R *.dfm}

uses uDataModel;

procedure TfrmModelConsulta.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmModelConsulta.FormShow(Sender: TObject);
begin
if DataModule1.usuarioTipo<>'S' then
  begin
  btnIncluir.Enabled:=false;
  end;
end;

end.
