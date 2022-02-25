unit CSalarioSemanal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Enom: TEdit;
    Ehotra: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
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
const
  ValHorNor = 15000;
  ValHorExt = 19000;
   NHosExtMax = 35;
var NHorExt : integer;
    Salario : real;
    ValidaCampos : String;
begin
  ValidaCampos :='';
  if length(enom.Text)=0 then ValidaCampos := 'Nombre del Empleado, ';
  if Ehotra.Text='0' then ValidaCampos := ValidaCampos + ' Numero Horas Trabajadas';

 if ValidaCampos = '' then

  Begin
    NHorExt :=  strtoint(Ehotra.Text)- NHosExtMax;
    If NHorExt > 0 then
       Salario := (ValHorNor * NHosExtMax) + (ValHorExt * NHorExt)
  Else
    Salario := (ValHorNor * strtoint(Ehotra.Text));

     showmessage('Al empleado '+Enom.Text+CHR(13)+' Se le debe pagar la suma de '+
     FloatToStrF(Salario,ffnumber,15,0)+' Pesos');

  End else  showmessage('Error Verifique por favor '+chr(13)+ValidaCampos);

end;

end.
