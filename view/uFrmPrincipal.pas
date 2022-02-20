unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnCliente: TButton;
    procedure btnClienteClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCliente;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uFrmCadastrarCliente;

procedure TfrmPrincipal.AbrirCliente;
begin
  frmCadastrarCliente := TFrmCadastrarCliente.Create(nil);
  try
    FrmCadastrarCliente.ShowModal;
  finally
    FreeAndNil(FrmCadastrarCliente);
  end;
end;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
  AbrirCliente;
end;

end.
