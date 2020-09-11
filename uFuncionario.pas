unit uFuncionario;

interface

type

  TFuncionario = class
  private
    FNome: string;
    FCPF: string;
    FSalario: currency;

    function getNome: string;
    procedure setNome(Value: String);
    function getCpf: string;
    procedure setCpf(const Value: string);
    function getSalario: currency;
    procedure setSalario(const Value: currency);

  public
    property nome: string read getNome write setNome;
    property cpf: string read getCpf write setCpf;
    property salario: currency read getSalario write setSalario;

  end;

implementation

{ TFuncionario }

function TFuncionario.getCpf: string;
begin
  Result := FCPF;
end;

function TFuncionario.getNome: string;
begin
  Result := FNome;
end;

function TFuncionario.getSalario: currency;
begin
  Result := FSalario;
end;

procedure TFuncionario.setCpf(const Value: string);
begin
  FCPF := Value;
end;

procedure TFuncionario.setNome(Value: String);
begin
  FNome := Value;
end;

procedure TFuncionario.setSalario(const Value: currency);
begin
  FSalario := Value;
end;

end.
