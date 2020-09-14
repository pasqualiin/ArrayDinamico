object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 348
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtNome: TEdit
    Left = 32
    Top = 32
    Width = 169
    Height = 21
    TabOrder = 0
    TextHint = 'Nome Completo'
  end
  object edtCPF: TEdit
    Left = 256
    Top = 32
    Width = 169
    Height = 21
    TabOrder = 1
    TextHint = 'CPF'
  end
  object edtHoraExtra: TEdit
    Left = 256
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Hora Extra'
  end
  object edtSalario: TEdit
    Left = 72
    Top = 80
    Width = 129
    Height = 21
    TabOrder = 3
    TextHint = 'Sal'#225'rio'
  end
  object CbCargo: TComboBox
    Left = 144
    Top = 128
    Width = 169
    Height = 21
    TabOrder = 4
    TextHint = 'Selecione o Cargo'
    Items.Strings = (
      'Vendedor'
      'Gestor')
  end
  object MCadastro: TMemo
    Left = 0
    Top = 223
    Width = 459
    Height = 125
    Align = alBottom
    Lines.Strings = (
      '')
    TabOrder = 5
    ExplicitTop = 224
    ExplicitWidth = 467
  end
  object btnCadastrar: TButton
    Left = 32
    Top = 176
    Width = 105
    Height = 34
    Caption = 'Cadastrar'
    TabOrder = 6
    OnClick = btnCadastrarClick
  end
  object btnLimpar: TButton
    Left = 184
    Top = 176
    Width = 105
    Height = 34
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = btnLimparClick
  end
  object btnListar: TButton
    Left = 328
    Top = 176
    Width = 105
    Height = 33
    Caption = 'Listar'
    TabOrder = 8
    OnClick = btnListarClick
  end
end
