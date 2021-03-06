object ServerDCOM: TServerDCOM
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Height = 570
  Width = 574
  object Conectar: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\Delphi KACTUS\Ejercicio_3\Datos\VENTAS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 64
    Top = 56
  end
  object Qclientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from clientes')
    SQLConnection = Conectar
    Left = 64
    Top = 136
  end
  object DSP_Clientes: TDataSetProvider
    DataSet = Qclientes
    Left = 184
    Top = 144
  end
  object QProductos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from productos')
    SQLConnection = Conectar
    Left = 64
    Top = 216
  end
  object DSP_Productos: TDataSetProvider
    DataSet = QProductos
    Left = 184
    Top = 224
  end
  object QCabezaFactura: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cabeza_factura where numero='#39'0'#39)
    SQLConnection = Conectar
    Left = 56
    Top = 328
  end
  object DSP_CabezaFactura: TDataSetProvider
    DataSet = QCabezaFactura
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 192
    Top = 320
  end
  object QDetalleFactura: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from detalle_factura where numero='#39'0'#39)
    SQLConnection = Conectar
    Left = 56
    Top = 432
  end
  object DSP_DetalleFactura: TDataSetProvider
    DataSet = QDetalleFactura
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 184
    Top = 432
  end
  object QFacturas: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cabeza_factura cf'
      'join clientes cl  on cl.cliente=cf.cliente'
      '')
    SQLConnection = Conectar
    Left = 360
    Top = 144
  end
  object DSP_Facturas: TDataSetProvider
    DataSet = QFacturas
    Left = 448
    Top = 144
  end
  object Gen_Factura: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(NFACTURA, 1) FROM RDB$DATABASE')
    SQLConnection = Conectar
    Left = 360
    Top = 232
  end
  object DSP_GFactura: TDataSetProvider
    DataSet = Gen_Factura
    Left = 456
    Top = 232
  end
end
