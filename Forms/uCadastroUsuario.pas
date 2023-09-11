unit uCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroUsuario = class(TfrmModelCadastro)
    dsUsuario: TDataSource;
    bdQueryCOD_USUARIO: TIntegerField;
    bdQueryNOME: TStringField;
    bdQueryDIREITO: TStringField;
    bdQuerySENHA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    editSenha: TDBEdit;
    editConfirmaSenha: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    editDireito: TDBEdit;
    comboDireito: TComboBox;
    procedure editConfirmaSenhaExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfrmCadastroUsuario.btnSalvarClick(Sender: TObject);
begin
if comboDireito.ItemIndex=0 then
begin
  editDireito.Text:='O';
end
else
begin
editDireito.Text:='P';
end;

  inherited;

end;

procedure TfrmCadastroUsuario.editConfirmaSenhaExit(Sender: TObject);
begin
  inherited;
if editConfirmaSenha.Text<>editSenha.Text then
begin
ShowMessage('Senhas devem ser iguais!');
end;

end;

end.
