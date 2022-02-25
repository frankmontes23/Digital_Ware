program Proyecto;

uses
  Vcl.Forms,
  Proyecto_DCOM_TLB in 'Servidor\Proyecto_DCOM_TLB.pas',
  DataModulo in 'DataModulo.pas' {ServerDCOM: TRemoteDataModule},
  UPrincipal in 'UPrincipal.pas' {Fppal};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFppal, Fppal);
  Application.Run;
end.
