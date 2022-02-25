unit Fibonacci;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm12 = class(TForm)
    Button1: TButton;
    Lista: TListBox;
    nitem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
Var f  : integer;
    a, b , c : int64;
begin

 a := 1; b := 1; c := 0;
 lista.Clear;

  for f := 1 to strtoint(nitem.Text) do
  Begin
    a := b;
    b := c;
    c := a + b;

    lista.Items.Add(f.ToString+'.  '+ c.ToString);

  end;

end;

end.
