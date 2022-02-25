program Proyecto_cliente;

uses
  Vcl.Forms,
  CL_Principal in 'CL_Principal.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
