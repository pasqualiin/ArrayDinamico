program CalculoSalario;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FormPrincipal},
  uFuncionario in 'uFuncionario.pas',
  uVendedor in 'uVendedor.pas',
  uGestor in 'uGestor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
