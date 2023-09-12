unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCadastroUsuario, uCadastroTarefas, uCadastroTarefasXUsuario;

type
  TfrmPrincipal = class(TForm)
    menuPrincipal: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Usuario1: TMenuItem;
    arefa1: TMenuItem;
    CadastroUsuario1: TMenuItem;
    Cadastro1: TMenuItem;
    ControleTarefas1: TMenuItem;
    procedure CadastroUsuario1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure ControleTarefas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Cadastro1Click(Sender: TObject);
begin
frmCadastroTarefas:=TfrmCadastroTarefas.Create(Self);
frmCadastroTarefas.ShowModal;
frmCadastroTarefas.Release;
end;

procedure TfrmPrincipal.CadastroUsuario1Click(Sender: TObject);
begin
frmCadastroUsuario:=TfrmCadastroUsuario.Create(Self);
frmCadastroUsuario.ShowModal;
frmCadastroUsuario.Release;
end;

procedure TfrmPrincipal.ControleTarefas1Click(Sender: TObject);
begin
 frmCadastroTarefaXUsuario:=TfrmCadastroTarefaXUsuario.Create(Self);
 frmCadastroTarefaXUsuario.ShowModal;
 frmCadastroTarefaXUsuario.Release;
end;

end.
