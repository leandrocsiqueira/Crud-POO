unit CrudPoo.View.uPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormPrincipal = class sealed(TForm)
    ButtonPrincipal: TButton;
    MemoPrincipal: TMemo;
    PnlPrincipal: TPanel;
    procedure ButtonPrincipalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses
  CrudPoo.Model.uEndereco,
  CrudPoo.Model.uPessoa;

procedure TFormPrincipal.ButtonPrincipalClick(Sender: TObject);
var
  LPessoa: TPessoa;
  LEndereco: TEndereco;
  I: Integer;
begin
  LPessoa := TPessoa.Create;
  try
    LPessoa.Id := 1;
    LPessoa.Nome := 'João';

    LEndereco := TEndereco.Create;
    LEndereco.Id := 1;
    LEndereco.IdPessoa := LPessoa.Id;
    LEndereco.Logradouro := 'Rua 1';
    LPessoa.Endereco.Add(LEndereco);

    LEndereco := TEndereco.Create;
    LEndereco.Id := 2;
    LEndereco.IdPessoa := LPessoa.Id;
    LEndereco.Logradouro := 'Rua 2';
    LPessoa.Endereco.Add(LEndereco);

    MemoPrincipal.Lines.Add('Id da Pessoa: ' + LPessoa.Id.ToString);
    MemoPrincipal.Lines.Add('Nome da Pessoa: ' + LPessoa.Nome);
    MemoPrincipal.Lines.Add('-------');

    for I := 0 to Pred(LPessoa.Endereco.Count) do
    begin
      MemoPrincipal.Lines.Add('Id do Endereço:' + LPessoa.Endereco[I]
        .Id.ToString);
      MemoPrincipal.Lines.Add('Id da Pessoa:' + LPessoa.Endereco[I]
        .IdPessoa.ToString);
      MemoPrincipal.Lines.Add('Logradouro:' + LPessoa.Endereco[I].Logradouro);
      MemoPrincipal.Lines.Add('-------');
    end;

  finally
    LPessoa.Free;
    LEndereco.Free;
  end;
end;

end.
