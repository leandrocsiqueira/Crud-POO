program CrudPOO;

uses
  Vcl.Forms,
  CrudPoo.View.uPrincipal in 'view\CrudPoo.View.uPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
