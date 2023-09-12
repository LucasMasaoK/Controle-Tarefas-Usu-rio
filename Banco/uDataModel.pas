unit uDataModel;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    conexaoBD: TFDConnection;
    bdLogin: TFDQuery;
    dsLogin: TDataSource;
    bdLoginCOD_USUARIO: TIntegerField;
    bdLoginNOME: TStringField;
    bdLoginDIREITO: TStringField;
    bdLoginSENHA: TStringField;
  private
    { Private declarations }
  public
   var usuarioCod, usuarioLogado, usuarioTipo:String;
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
