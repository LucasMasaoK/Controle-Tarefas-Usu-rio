unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmLogin = class(TForm)
    editNome: TLabeledEdit;
    editSenha: TLabeledEdit;
    btnSair: TBitBtn;
    btnEntrar: TBitBtn;
    SpeedButton1: TSpeedButton;
    editID: TDBEdit;
    Label1: TLabel;
    procedure btnEntrarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDataModel, uPrincipal, uConsultaUsuario;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
DataModule1.bdLogin.Close;
DataModule1.bdLogin.SQL.Clear;
DataModule1.bdLogin.Params.Clear;
DataModule1.bdLogin.SQL.Add('');
DataModule1.bdLogin.SQL.Add('SELECT * FROM USUARIO WHERE NOME= :pNome AND SENHA= :pSenha');
DataModule1.bdLogin.ParamByName('pNome').AsString:=editNome.Text;
DataModule1.bdLogin.ParamByName('pSenha').AsString:=editSenha.Text;
DataModule1.bdLogin.Open;

if DataModule1.bdLogin.RecordCount>0 then
begin
DataModule1.usuarioCod:=DataModule1.bdLoginCOD_USUARIO.AsString;
DataModule1.usuarioLogado:=DataModule1.bdLoginNOME.AsString;
DataModule1.usuarioTipo:=DataModule1.bdLoginDIREITO.AsString;
frmPrincipal:=TfrmPrincipal.Create(Self);
frmPrincipal.ShowModal;
frmPrincipal.Release;
frmLogin.Hide;
end
else
begin
ShowMessage('Usuario e senha incorretos');
editSenha.SetFocus;
end;
end;

procedure TfrmLogin.SpeedButton1Click(Sender: TObject);
begin
frmconsultaUsuario:= TfrmconsultaUsuario.create(self);
frmConsultaUsuario.consultaOrigem:='login';
frmconsultaUsuario.showModal;
frmconsultaUsuario.release;
end;

end.
