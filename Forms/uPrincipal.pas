unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, IdCoderMIME,System.NetEncoding,
  Vcl.ExtCtrls ;

type
  TfrmPrincipal = class(TForm)
    btnAPI: TBitBtn;
    memoBase64: TMemo;
    Panel1: TPanel;
    procedure btnAPIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAPIClick(Sender: TObject);
begin
  var
    nomeArquivo, path: string;
  var
    encoder: TIdEncoderMIME;
  var
    inStream: TStream;
  var
    outStream: TStringStream;

  nomeArquivo := '51180811154534000199550010000013461000013465-nfe.pdf';
  path := 'C:\Sistemas\SAGA_Monitor\PDF\' + nomeArquivo;

  if FileExists(path) then
  begin
    inStream := TFileStream.Create(path, fmOpenRead);
    outStream := TStringStream.Create;
    TNetEncoding.base64.Encode(inStream, outStream);

    memoBase64.Text := outStream.DataString;
  end;

end;

end.
