unit apiDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    EditLayeraddrestapi: TEdit;
    Label2: TLabel;
    EditLayeraddconf: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditLayergroupAppendlayer: TEdit;
    EditLayergroupconf: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  responseStream: TStringStream;
  FIdHTTP: TIdHTTP;
begin
  FIdHTTP := TIdHTTP.Create;
  responseStream := TStringStream.Create;
  FIdHTTP.Post(EditLayeraddrestapi.Text, EditLayeraddconf.Text, responseStream);
  responseStream.Free;
  FIdHTTP.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  strm: TFileStream;
  FIdHTTP: TIdHTTP;
begin
  FIdHTTP := TIdHTTP.Create;
  strm := TFileStream.Create(EditLayergroupconf.Text, fmOpenRead);
  FIdHTTP.Put(EditLayergroupAppendlayer.Text, strm);
  strm.Free;
  FIdHTTP.Free;
end;

end.
