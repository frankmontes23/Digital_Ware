object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'DigitalWare'
  ClientHeight = 283
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 219
    Height = 24
    Caption = 'Calculo Salarial Semanal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 72
    Width = 105
    Height = 16
    Caption = 'Nombre Empleado'
  end
  object Label3: TLabel
    Left = 48
    Top = 139
    Width = 102
    Height = 16
    Caption = 'Horas Trabajadas'
  end
  object Enom: TEdit
    Left = 48
    Top = 91
    Width = 497
    Height = 24
    TabOrder = 0
  end
  object Ehotra: TEdit
    Left = 48
    Top = 161
    Width = 121
    Height = 24
    TabOrder = 1
    Text = '0'
  end
  object Button1: TButton
    Left = 224
    Top = 224
    Width = 137
    Height = 25
    Caption = 'Calcular Salario'
    TabOrder = 2
    OnClick = Button1Click
  end
end
