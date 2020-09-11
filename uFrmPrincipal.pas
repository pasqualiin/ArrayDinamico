unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uVendedor, uGestor,
  uFuncionario;

type
  TFormPrincipal = class(TForm)
    edtNome: TEdit;
    edtCPF: TEdit;
    edtHoraExtra: TEdit;
    edtSalario: TEdit;
    CbCargo: TComboBox;
    MCadastro: TMemo;
    btnCadastrar: TButton;
    btnLimpar: TButton;
    btnListar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;
  Vendedor: TVendedor;
  Gestor: TGestor;
  Funcionario: TFuncionario;
  VetorFunc: array of TFuncionario;
  tamanho: integer = 0;

implementation

{$R *.dfm}

procedure TFormPrincipal.btnCadastrarClick(Sender: TObject);
begin
  try
    Funcionario := TFuncionario.Create;
    Vendedor := TVendedor.Create;
    Gestor := TGestor.Create;
    VetorFunc := Funcionario.Create;

    if CbCargo.ItemIndex = 0 then
    begin

      Vendedor.nome := edtNome.Text;
      Vendedor.cpf := edtCPF.Text;
      Vendedor.salario := StrToCurr(edtSalario.Text);

      tamanho := tamanho + 1;

      setLength(VetorFunc, tamanho);

      VetorFunc[tamanho - 1] := Vendedor;

      MCadastro.Lines.Add(VetorFunc[tamanho].nome);

    end
    else
    begin
      Gestor.nome := edtNome.Text;
      Gestor.cpf := edtCPF.Text;
      Gestor.salario := StrToCurr(edtSalario.Text);
      Gestor.horaExtra := StrToCurr(edtHoraExtra.Text);

      tamanho := tamanho + 1;

      setLength(VetorFunc, tamanho);

      VetorFunc[tamanho - 1] := Gestor;
    end;
  finally
    Funcionario.Free;
    Gestor.Free;
    Vendedor.Free;
  end;
end;

procedure TFormPrincipal.btnLimparClick(Sender: TObject);
begin
  edtNome.Clear;
  edtCPF.Clear;
  edtHoraExtra.Clear;
  edtSalario.Clear;
  CbCargo.ItemIndex := -1;
end;

procedure TFormPrincipal.btnListarClick(Sender: TObject);
var
  i, nRegistro: integer;

begin

  MCadastro.Lines.Add('');
  nRegistro := 0;

  for i := 0 to tamanho - 1 do
  begin
    Funcionario := VetorFunc[i];
    nRegistro := nRegistro + 1;

    MCadastro.Lines.Add(Funcionario.nome);
    MCadastro.Lines.Add(Funcionario.cpf);

  end;

  { MCadastro.Lines.Add(Gestor.nome + #13#10 + Gestor.cpf + #13#10 +
    CurrToStr(Gestor.salario) + #13#10 + CurrToStr(Gestor.CalculaHoraExtra));

    MCadastro.Lines.Add(Vendedor.nome + #13#10 + Vendedor.cpf + #13#10 +
    CurrToStr(Vendedor.salario) + #13#10 +
    CurrToStr(Vendedor.CalculaComissaoSalario)); }
end;

end.
