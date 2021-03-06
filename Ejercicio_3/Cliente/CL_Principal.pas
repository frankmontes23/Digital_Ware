unit CL_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Datasnap.Win.MConnect, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.Mask;

type
  TForm12 = class(TForm)
    DCOMConnection1: TDCOMConnection;
    CD_Cliente: TClientDataSet;
    Label5: TLabel;
    CD_Producto: TClientDataSet;
    CD_CAB_FACTURA: TClientDataSet;
    CD_DET_FACTURA: TClientDataSet;
    D_TMP_DET_FACTURA: TDataSource;
    TMP_DET_FACTURA: TClientDataSet;
    TMP_DET_FACTURACPRODUCTO: TStringField;
    TMP_DET_FACTURANPRODUCTO: TStringField;
    TMP_DET_FACTURACANTIDAD: TFloatField;
    TMP_DET_FACTURAVALOR: TCurrencyField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Configuraciones: TTabSheet;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    ECCliente: TEdit;
    ENcliente: TEdit;
    EDcliente: TEdit;
    Panel3: TPanel;
    Label6: TLabel;
    ECproducto: TEdit;
    ENProducto: TEdit;
    EVProducto: TEdit;
    Label7: TLabel;
    CanCompra: TEdit;
    Label8: TLabel;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button3: TButton;
    CLI_ID: TEdit;
    CLI_NOM: TEdit;
    CLI_DIR: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBG_clientes: TDBGrid;
    TabSheet4: TTabSheet;
    dts_clientes: TDataSource;
    dts_productos: TDataSource;
    DBGrid2: TDBGrid;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    PR_VALOR: TEdit;
    PR_NOM: TEdit;
    PR_ID: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    GenFac: TClientDataSet;
    DBEdit1: TDBEdit;
    TMP_DET_FACTURATotal: TAggregateField;
    Label15: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid3: TDBGrid;
    FACTURAS: TClientDataSet;
    DS_FACTURAS: TDataSource;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ECClienteExit(Sender: TObject);
    procedure ECproductoExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBG_clientesCellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
  If FACTURAS.Active=true Then
  Begin
    facturas.Close;
    Button1.Caption := 'Consultar';
    facturas.open;
  End Else
  Begin
    FACTURAS.Open;
     Button1.Caption := 'Actualizar';
  End;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
  if Not TMP_DET_FACTURA.Locate('CPRODUCTO',ECproducto.text, [loCaseInsensitive]) then
  Begin
  TMP_DET_FACTURA.Insert;
  TMP_DET_FACTURA.FieldByName('CPRODUCTO').asstring := ECproducto.Text ;
  TMP_DET_FACTURA.FieldByName('NPRODUCTO').asstring := ENProducto.Text ;
  TMP_DET_FACTURA.FieldByName('CANTIDAD').asfloat  := strtofloat(CanCompra.Text) ;
  TMP_DET_FACTURA.FieldByName('VALOR').asfloat :=  (strtofloat(CanCompra.Text) * strtofloat(EVProducto.Text)) ;
  TMP_DET_FACTURA.Post;
  ECproducto.Clear;   ENProducto.Clear;   CanCompra.Clear;    EVProducto.Clear;

  ECproducto.SetFocus;


 End Else showmessage('Codigo existente');

end;

procedure TForm12.Button3Click(Sender: TObject);
Var Valor_Factura : real;
    Numero_factura : string;
begin
  Valor_Factura := 0;  Numero_factura := '1';


  GenFac.Close;   GenFac.Open;
  Numero_factura := floattostr(GenFac.FieldByName('gen_id').Value);


    With TMP_DET_FACTURA do
    Begin
      first;
      while not eof do
      Begin
        CD_DET_FACTURA.Append;
        CD_DET_FACTURA.FieldByName('NUMERO').asstring   :=  Numero_factura;
        CD_DET_FACTURA.FieldByName('PRODUCTO').asstring := FieldByName('cproducto').asstring ;
        CD_DET_FACTURA.FieldByName('CANTIDAD').asfloat  := FieldByName('CANTIDAD').asfloat ;
        CD_DET_FACTURA.FieldByName('VALOR').asfloat     :=  FieldByName('VALOR').asfloat  ;
        Valor_Factura := Valor_Factura + FieldByName('VALOR').asfloat;
        CD_DET_FACTURA.Post;
        next;
      End;

        CD_DET_FACTURA.ApplyUpdates(0);

        CD_CAB_FACTURA.Append;
        CD_CAB_FACTURA.FieldByName('NUMERO').asstring := Numero_factura ;
        CD_CAB_FACTURA.FieldByName('FECHA').AsDateTime := DATE ;
        CD_CAB_FACTURA.FieldByName('CLIENTE').AsString  := ECCliente.Text ;
        CD_CAB_FACTURA.FieldByName('TOTAL').asfloat := Valor_Factura;
        CD_CAB_FACTURA.Post;
        CD_CAB_FACTURA.ApplyUpdates(0);


        TMP_DET_FACTURA.EmptyDataSet;
        ECCliente.Clear;    ENcliente.Clear;  EDcliente.Clear;
    End;

  showmessage('Registro Guardado');

end;

procedure TForm12.Button4Click(Sender: TObject);
begin
  if CD_Cliente.RecordCount > 0 then  CD_Cliente.Edit else  CD_Cliente.Insert;

  if Not CD_Cliente.Locate('CLIENTE',CLI_ID.text, [loCaseInsensitive]) then
  Begin
    CD_Cliente.Insert;
    CD_Cliente.FieldByName('CLIENTE').asstring        := CLI_ID.Text;
    CD_Cliente.FieldByName('NOMBRE_CLIENTE').asstring := CLI_NOM.Text;
    CD_Cliente.FieldByName('DIRECCION').asstring      := CLI_DIR.Text;
    CD_Cliente.Post;
    CD_Cliente.ApplyUpdates(0);

    CLI_ID.Clear;   CLI_NOM.Clear;   CLI_DIR.Clear;

    CLI_ID.SetFocus;


 End Else showmessage('Codigo existente');


 end;

procedure TForm12.Button5Click(Sender: TObject);
begin
  if CD_Cliente.Locate('CLIENTE',CLI_ID.text, [loCaseInsensitive]) then
  Begin
    CD_Cliente.Edit;
    CD_Cliente.FieldByName('CLIENTE').asstring        := CLI_ID.Text;
    CD_Cliente.FieldByName('NOMBRE_CLIENTE').asstring := CLI_NOM.Text;
    CD_Cliente.FieldByName('DIRECCION').asstring      := CLI_DIR.Text;
    CD_Cliente.Post;
    CD_Cliente.ApplyUpdates(0);

    CLI_ID.Clear;   CLI_NOM.Clear;   CLI_DIR.Clear;

    CLI_ID.SetFocus;


 End Else showmessage('Codigo No existente');
end;

procedure TForm12.Button6Click(Sender: TObject);
begin
if CD_Cliente.Locate('CLIENTE',CLI_ID.text, [loCaseInsensitive]) then
  Begin
    CD_Cliente.Delete;
    CD_Cliente.ApplyUpdates(0);

    CLI_ID.Clear;   CLI_NOM.Clear;   CLI_DIR.Clear;

    CLI_ID.SetFocus;


 End Else showmessage('Codigo No existente');
end;

procedure TForm12.Button7Click(Sender: TObject);
begin


  if CD_Producto.RecordCount > 0 then  CD_Producto.Edit else  CD_Producto.Insert;

  if Not CD_Producto.Locate('PRODUCTO', PR_ID.Text, [loCaseInsensitive]) then
  Begin
    CD_Producto.Insert;
    CD_Producto.FieldByName('PRODUCTO').asstring        := PR_ID.Text;
    CD_Producto.FieldByName('NOMBRE_PRODUCTO').asstring := PR_NOM.Text;
    CD_Producto.FieldByName('VALOR').asfloat            := STRTOFLOAT(PR_VALOR.Text);
    CD_Producto.Post;
    CD_Producto.ApplyUpdates(0);

    PR_ID.Clear;   PR_NOM.Clear;   PR_VALOR.Clear;

    PR_ID.SetFocus;
 End Else showmessage('Codigo existente');



end;

procedure TForm12.Button8Click(Sender: TObject);
begin
  if CD_Producto.Locate('PRODUCTO',PR_ID.text, [loCaseInsensitive]) then
  Begin
    CD_Producto.Edit;
    CD_Producto.FieldByName('PRODUCTO').asstring        := PR_ID.Text;
    CD_Producto.FieldByName('NOMBRE_PRODUCTO').asstring := PR_NOM.Text;
    CD_Producto.FieldByName('VALOR').asfloat            := strtofloat(PR_VALOR.Text);
    CD_Producto.Post;
    CD_Producto.ApplyUpdates(0);

    PR_ID.Clear;   PR_NOM.Clear;   PR_VALOR.Clear;

    PR_ID.SetFocus;

 End Else showmessage('Codigo No existente');
end;

procedure TForm12.Button9Click(Sender: TObject);
begin
  if CD_Producto.Locate('PRODUCTO',PR_ID.text, [loCaseInsensitive]) then
  Begin
    CD_Producto.Delete;

    CD_Producto.ApplyUpdates(0);

    PR_ID.Clear;   PR_NOM.Clear;   PR_VALOR.Clear;

    PR_ID.SetFocus;

 End Else showmessage('Codigo No existente');
end;

procedure TForm12.DBGrid2CellClick(Column: TColumn);
begin
    PR_ID.Text :=  CD_Producto.FieldByName('PRODUCTO').asstring;
    PR_NOM.Text := CD_Producto.FieldByName('NOMBRE_PRODUCTO').asstring;
    PR_VALOR.Text := CD_Producto.FieldByName('VALOR').Value;
end;

procedure TForm12.DBG_clientesCellClick(Column: TColumn);
begin
  CLI_ID.Text  := CD_Cliente.FieldByName('CLIENTE').asstring;
  CLI_NOM.Text := CD_Cliente.FieldByName('NOMBRE_CLIENTE').asstring;
  CLI_DIR.Text := CD_Cliente.FieldByName('DIRECCION').asstring;
end;

procedure TForm12.ECClienteExit(Sender: TObject);
begin
  if Length(ECCliente.Text)>0 then
  Begin
    if CD_Cliente.Locate('cliente',ECCliente.text, [loCaseInsensitive]) then
    Begin
      ENcliente.Text := CD_Cliente.FieldByName('nombre_cliente').AsString;
      EDcliente.Text := CD_Cliente.FieldByName('direccion').AsString;
      ECproducto.SetFocus;
    End Else
    Begin
      showmessage('codigo no encontrado');
      ECCliente.Clear; ECCliente.SetFocus;
    End;
  End;
end;

procedure TForm12.ECproductoExit(Sender: TObject);
begin
  if Length(ECproducto.Text)>0 then
  Begin
    if CD_Producto.Locate('producto',ECproducto.text, [loCaseInsensitive]) then
    Begin
      ENProducto.Text := CD_Producto.FieldByName('nombre_producto').AsString;
      EVProducto.Text := CD_Producto.FieldByName('valor').Value;
      CanCompra.SetFocus;
    End Else
    Begin
      showmessage('codigo no encontrado');
      ECproducto.Clear; ECproducto.SetFocus;
    End;
  End;


end;

procedure TForm12.FormActivate(Sender: TObject);
begin
  with CD_Cliente do

end;

end.
