unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCadastroUsuario;

type
  TfrmPrincipal = class(TForm)
    menuPrincipal: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Usuario1: TMenuItem;
    arefa1: TMenuItem;
    CadastroUsuario1: TMenuItem;
    procedure CadastroUsuario1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CadastroUsuario1Click(Sender: TObject);
begin
frmCadastroUsuario:=TfrmCadastroUsuario.Create(Self);
frmCadastroUsuario.ShowModal;
frmCadastroUsuario.Release;
end;

end.
