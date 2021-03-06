unit DataModulo;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Vcl.Forms, Variants, Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, Proyecto_DCOM_TLB, StdVcl, Data.DBXFirebird, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr,  System.IniFiles;


type
  TServerDCOM = class(TRemoteDataModule, IServerDCOM)
    Conectar: TSQLConnection;
    Qclientes: TSQLQuery;
    DSP_Clientes: TDataSetProvider;
    QProductos: TSQLQuery;
    DSP_Productos: TDataSetProvider;
    QCabezaFactura: TSQLQuery;
    DSP_CabezaFactura: TDataSetProvider;
    QDetalleFactura: TSQLQuery;
    DSP_DetalleFactura: TDataSetProvider;
    QFacturas: TSQLQuery;
    DSP_Facturas: TDataSetProvider;
    Gen_Factura: TSQLQuery;
    DSP_GFactura: TDataSetProvider;
    procedure RemoteDataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TServerDCOM.RemoteDataModuleCreate(Sender: TObject);
var
  ruta : string;
  Driver, Server, Name, User, Password : string;
  ini: TIniFile;
begin
(*
    ruta := ExtractFilePath(Application.ExeName);
      ini := TIniFile.Create(ruta + 'config.ini');
       Driver := ini.ReadString('DB', 'driver', '');
       Server := ini.ReadString('DB', 'servidor', '');
         Name := ini.ReadString('DB', 'nombre', '');
         User := ini.ReadString('DB', 'usuario', '');
     Password := ini.ReadString('DB', 'clave', '');
        conectar.DriverName := driver;
        conectar.Params.Clear;
        conectar.Params.Values['HostName'] := server;
        conectar.Params.Values['Database'] := name;
        conectar.Params.Values['User_Name'] := user;
        conectar.Params.Values['Password'] := password;
      //  conectar.Params.Values['LibraryName'] := libName;
      //  conectar.Params.Values['VendorLib'] := libVendor;

        conectar.Connected := True;
*)

end;

class procedure TServerDCOM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

initialization
  TComponentFactory.Create(ComServer, TServerDCOM,
    Class_ServerDCOM, ciMultiInstance, tmApartment);
end.
