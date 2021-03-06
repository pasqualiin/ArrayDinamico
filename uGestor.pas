unit uGestor;

interface

uses uFuncionario;

type

  TGestor = class(TFuncionario)

  private
    FHoraExtra: currency;
    function getHoraExtra: currency;
    procedure setHoraExtra(const Value: currency);

  public
    property horaExtra: currency read getHoraExtra write setHoraExtra;
    function CalculaHoraExtra: currency;

  end;

implementation

{ TVendedor }

{ TGestor }

function TGestor.CalculaHoraExtra: currency;
begin
  Result := salario + horaExtra;
end;

function TGestor.getHoraExtra: currency;
begin
  Result := FHoraExtra
end;

procedure TGestor.setHoraExtra(const Value: currency);
begin
  FHoraExtra := Value;
end;

end.
