object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'DigitalWare Cliente DCOM'
  ClientHeight = 584
  ClientWidth = 1056
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object Label5: TLabel
    Left = 16
    Top = 8
    Width = 127
    Height = 24
    Caption = 'Ejercicio No. 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 50
    Width = 1042
    Height = 524
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Facturar  '
      DesignSize = (
        1034
        493)
      object Label3: TLabel
        Left = 31
        Top = 26
        Width = 39
        Height = 16
        Caption = 'Cliente'
      end
      object Label4: TLabel
        Left = 14
        Top = 66
        Width = 56
        Height = 16
        Caption = 'Productos'
      end
      object Label6: TLabel
        Left = 21
        Top = 133
        Width = 50
        Height = 16
        Caption = 'Producto'
      end
      object Label7: TLabel
        Left = 802
        Top = 133
        Width = 30
        Height = 16
        Caption = 'Valor'
      end
      object Label8: TLabel
        Left = 782
        Top = 163
        Width = 50
        Height = 16
        Caption = 'Cantidad'
      end
      object Label15: TLabel
        Left = 782
        Top = 428
        Width = 76
        Height = 16
        Caption = 'Total Factura'
      end
      object ECCliente: TEdit
        Left = 81
        Top = 25
        Width = 121
        Height = 24
        TabOrder = 0
        OnExit = ECClienteExit
      end
      object ENcliente: TEdit
        Left = 81
        Top = 59
        Width = 463
        Height = 24
        TabOrder = 1
      end
      object EDcliente: TEdit
        Left = 547
        Top = 59
        Width = 463
        Height = 24
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 9
        Top = 106
        Width = 1025
        Height = 2
        TabOrder = 3
      end
      object ECproducto: TEdit
        Left = 82
        Top = 130
        Width = 121
        Height = 24
        TabOrder = 4
        OnExit = ECproductoExit
      end
      object ENProducto: TEdit
        Left = 226
        Top = 130
        Width = 544
        Height = 24
        TabOrder = 5
      end
      object EVProducto: TEdit
        Left = 843
        Top = 130
        Width = 168
        Height = 24
        Alignment = taRightJustify
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 6
      end
      object CanCompra: TEdit
        Left = 843
        Top = 160
        Width = 168
        Height = 24
        NumbersOnly = True
        TabOrder = 7
      end
      object Button2: TButton
        Left = 843
        Top = 196
        Width = 168
        Height = 25
        Caption = 'Agregar'
        TabOrder = 8
        OnClick = Button2Click
      end
      object DBGrid1: TDBGrid
        Left = 18
        Top = 234
        Width = 993
        Height = 185
        DataSource = D_TMP_DET_FACTURA
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CPRODUCTO'
            Title.Alignment = taCenter
            Title.Caption = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NPRODUCTO'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRIPCION'
            Width = 600
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end>
      end
      object Button3: TButton
        Left = 21
        Top = 441
        Width = 168
        Height = 25
        Caption = 'Grabar'
        TabOrder = 10
        OnClick = Button3Click
      end
      object DBEdit1: TDBEdit
        Left = 864
        Top = 424
        Width = 146
        Height = 24
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = D_TMP_DET_FACTURA
        ParentBiDiMode = False
        TabOrder = 11
      end
    end
    object Configuraciones: TTabSheet
      Caption = 'Configuraciones'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 100
        Top = 24
        Width = 833
        Height = 433
        ActivePage = TabSheet2
        TabOrder = 0
        object TabSheet2: TTabSheet
          Caption = 'Clientes  '
          object Label9: TLabel
            Left = 159
            Top = 12
            Width = 75
            Height = 16
            Caption = 'Identificaci'#243'n'
          end
          object Label10: TLabel
            Left = 189
            Top = 41
            Width = 45
            Height = 16
            Caption = 'Nombre'
          end
          object Label11: TLabel
            Left = 182
            Top = 73
            Width = 52
            Height = 16
            Caption = 'Direcci'#243'n'
          end
          object CLI_ID: TEdit
            Left = 240
            Top = 8
            Width = 121
            Height = 24
            TabOrder = 0
          end
          object CLI_NOM: TEdit
            Left = 240
            Top = 38
            Width = 505
            Height = 24
            TabOrder = 1
          end
          object CLI_DIR: TEdit
            Left = 240
            Top = 69
            Width = 505
            Height = 24
            TabOrder = 2
          end
          object DBG_clientes: TDBGrid
            Left = 33
            Top = 105
            Width = 760
            Height = 250
            DataSource = dts_clientes
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBG_clientesCellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CLIENTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMBRE_CLIENTE'
                Title.Alignment = taCenter
                Title.Caption = 'NOMBRE'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 500
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DIRECCION'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
          object Button4: TButton
            Left = 282
            Top = 366
            Width = 75
            Height = 25
            Caption = 'Insertar'
            TabOrder = 4
            OnClick = Button4Click
          end
          object Button5: TButton
            Left = 375
            Top = 366
            Width = 75
            Height = 25
            Caption = 'Modificar'
            TabOrder = 5
            OnClick = Button5Click
          end
          object Button6: TButton
            Left = 467
            Top = 366
            Width = 75
            Height = 25
            Caption = 'Eliminar'
            TabOrder = 6
            OnClick = Button6Click
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Productos  '
          ImageIndex = 1
          object Label12: TLabel
            Left = 224
            Top = 12
            Width = 12
            Height = 16
            Caption = 'ID'
          end
          object Label13: TLabel
            Left = 171
            Top = 42
            Width = 65
            Height = 16
            Caption = 'Descripci'#243'n'
          end
          object Label14: TLabel
            Left = 206
            Top = 73
            Width = 30
            Height = 16
            Caption = 'Valor'
          end
          object DBGrid2: TDBGrid
            Left = 33
            Top = 105
            Width = 760
            Height = 250
            DataSource = dts_productos
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid2CellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'PRODUCTO'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMBRE_PRODUCTO'
                Title.Alignment = taCenter
                Title.Caption = 'NOMBRE PRODUCTO'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 500
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
          object PR_VALOR: TEdit
            Left = 240
            Top = 69
            Width = 121
            Height = 24
            TabOrder = 1
          end
          object PR_NOM: TEdit
            Left = 240
            Top = 38
            Width = 505
            Height = 24
            TabOrder = 2
          end
          object PR_ID: TEdit
            Left = 240
            Top = 8
            Width = 121
            Height = 24
            TabOrder = 3
          end
          object Button7: TButton
            Left = 282
            Top = 366
            Width = 75
            Height = 25
            Caption = 'Insertar'
            TabOrder = 4
            OnClick = Button7Click
          end
          object Button8: TButton
            Left = 375
            Top = 366
            Width = 75
            Height = 25
            Caption = 'Modificar'
            TabOrder = 5
            OnClick = Button8Click
          end
          object Button9: TButton
            Left = 467
            Top = 366
            Width = 75
            Height = 25
            Caption = 'Eliminar'
            TabOrder = 6
            OnClick = Button9Click
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Consulta Facturas  '
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 20
        Top = 34
        Width = 994
        Height = 355
        DataSource = DS_FACTURAS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE_CLIENTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIRECCION'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 189
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 480
        Top = 400
        Width = 75
        Height = 25
        Caption = 'Consultar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object Panel1: TPanel
    Left = 629
    Top = 8
    Width = 417
    Height = 63
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 8
      Width = 28
      Height = 16
      Caption = 'GUID'
    end
    object Label2: TLabel
      Left = 32
      Top = 35
      Width = 46
      Height = 16
      Caption = 'SERVER'
    end
    object Edit1: TEdit
      Left = 96
      Top = 5
      Width = 297
      Height = 24
      TabOrder = 0
      Text = '{87A16F6B-1C34-4068-ACD8-24B9EE21A014}'
    end
    object Edit2: TEdit
      Left = 96
      Top = 32
      Width = 297
      Height = 24
      TabOrder = 1
      Text = 'Project11.ServerDCOM'
    end
  end
  object DCOMConnection1: TDCOMConnection
    Connected = True
    ServerGUID = '{87A16F6B-1C34-4068-ACD8-24B9EE21A014}'
    ServerName = 'Project11.ServerDCOM'
    Left = 1016
    Top = 32
  end
  object CD_Cliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_clientes'
    RemoteServer = DCOMConnection1
    Left = 672
    Top = 528
  end
  object CD_Producto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Productos'
    RemoteServer = DCOMConnection1
    Left = 456
    Top = 520
  end
  object CD_CAB_FACTURA: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_CabezaFactura'
    RemoteServer = DCOMConnection1
    Left = 48
    Top = 520
  end
  object CD_DET_FACTURA: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_DetalleFactura'
    RemoteServer = DCOMConnection1
    Left = 176
    Top = 520
  end
  object D_TMP_DET_FACTURA: TDataSource
    DataSet = TMP_DET_FACTURA
    Left = 920
    Top = 496
  end
  object TMP_DET_FACTURA: TClientDataSet
    PersistDataPacket.Data = {
      890000009619E0BD010000001800000004000000000003000000890009435052
      4F445543544F0100490000000100055749445448020002001400094E50524F44
      5543544F01004900000001000557494454480200020064000843414E54494441
      4408000400000000000556414C4F520800040000000100075355425459504502
      00490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 560
    Top = 520
    object TMP_DET_FACTURACPRODUCTO: TStringField
      FieldName = 'CPRODUCTO'
    end
    object TMP_DET_FACTURANPRODUCTO: TStringField
      FieldName = 'NPRODUCTO'
      Size = 100
    end
    object TMP_DET_FACTURACANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object TMP_DET_FACTURAVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object TMP_DET_FACTURATotal: TAggregateField
      FieldName = 'Total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
  end
  object dts_clientes: TDataSource
    DataSet = CD_Cliente
    Left = 852
    Top = 278
  end
  object dts_productos: TDataSource
    DataSet = CD_Producto
    Left = 852
    Top = 358
  end
  object GenFac: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DSP_GFactura'
    RemoteServer = DCOMConnection1
    Left = 76
    Top = 389
  end
  object FACTURAS: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DSP_Facturas'
    RemoteServer = DCOMConnection1
    Left = 852
    Top = 109
  end
  object DS_FACTURAS: TDataSource
    DataSet = FACTURAS
    Left = 940
    Top = 101
  end
end
