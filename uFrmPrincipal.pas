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

    if CbCargo.ItemIndex = 0 then
    begin

      Vendedor.nome := edtNome.Text;
      Vendedor.cpf := edtCPF.Text;
      Vendedor.salario := StrToCurr(edtSalario.Text);

      tamanho := tamanho + 1;

      setLength(VetorFunc, tamanho);

      VetorFunc[tamanho - 1] := Vendedor;

      MCadastro.Lines.Add('O Funcionário : ' + Vendedor.nome +
        ' foi cadastrado!');

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

    MCadastro.Lines.Add('Nome: ' + Funcionario.nome + #13#10 + 'CPF: ' +
      Funcionario.cpf + #13#10 + 'Salário R$ ' +
      CurrToStr(Funcionario.salario));

  end;

end;

end.
