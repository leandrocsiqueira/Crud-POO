program CrudPOO;

uses
  Vcl.Forms,
  CrudPoo.View.uPrincipal in 'view\CrudPoo.View.uPrincipal.pas' {FormPrincipal},
  CrudPoo.Model.uPessoa in 'model\CrudPoo.Model.uPessoa.pas',
  CrudPoo.Model.uEndereco in 'model\CrudPoo.Model.uEndereco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
