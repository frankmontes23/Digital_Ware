object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'DigitalWare'
  ClientHeight = 418
  ClientWidth = 422
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
    Left = 14
    Top = 10
    Width = 133
    Height = 24
    Caption = 'Serie Fibonacci'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 14
    Top = 47
    Width = 166
    Height = 16
    Caption = 'Digite Numero de Iteraciones'
  end
  object Label3: TLabel
    Left = 229
    Top = 47
    Width = 56
    Height = 16
    Caption = 'Resultado'
  end
  object Button1: TButton
    Left = 14
    Top = 341
    Width = 165
    Height = 25
    Caption = 'Ejecutar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Lista: TListBox
    Left = 227
    Top = 69
    Width = 165
    Height = 297
    TabOrder = 1
  end
  object nitem: TEdit
    Left = 14
    Top = 69
    Width = 166
    Height = 24
    NumbersOnly = True
    TabOrder = 2
  end
end
