﻿unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, IdCoderMIME,
  System.NetEncoding,
  Vcl.ExtCtrls, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Authenticator.OAuth.WebForm.Win,
  REST.Authenticator.OAuth, System.JSON;

type
  TfrmPrincipal = class(TForm)
    btnAPI: TBitBtn;
    memoBase64: TMemo;
    Panel1: TPanel;
    restClient: TRESTClient;
    restResponse: TRESTResponse;
    restRequest: TRESTRequest;
    OAuth2Authenticator1: TOAuth2Authenticator;
    memoOut: TMemo;
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
    nomeArquivo, path, barear1, barear2: String;
  var
    encoder: TIdEncoderMIME;
  var
    inStream: TStream;
  var
    outStream: TStringStream;
  var
    bodyJson,bodyJson64: TJSONObject;

  nomeArquivo := '51180811154534000199550010000013461000013465-nfe.pdf';
  path := 'C:\Sistemas\SAGA_Monitor\PDF\' + nomeArquivo;

  if FileExists(path) then
  begin
    inStream := TFileStream.Create(path, fmOpenRead);
    outStream := TStringStream.Create;
    TNetEncoding.base64.Encode(inStream, outStream);
    memoOut.Text := outStream.DataString;

    restRequest.Params.AddItem('SecretKey', 'e3b0e4b8-7670-47b6-8543-47f869ccc90e', TRESTRequestParameterKind.pkHTTPHEADER);
    restRequest.Params.AddItem('PublicToken', '412d3280-c93a-11ed-afa1-0242ac120002', TRESTRequestParameterKind.pkHTTPHEADER);
    restRequest.Params.AddItem('DeviceToken', '8b55d631-5ade-410e-94bb-faf32eab8fde', TRESTRequestParameterKind.pkHTTPHEADER);

    bodyJson:= TJSONObject.Create;
    bodyJson.AddPair('number', '5565996739474');
    bodyJson.AddPair('text', '📃Sua nota fiscal Nº5938 foi gerada com sucesso! Confira abaixo👇');


    restRequest.AddBody(bodyJson);
    restRequest.Execute;

    //ENVIAR BASE64
    restClient.BaseURL:='https://cluster.apigratis.com/api/v1/whatsapp/sendFile64';
    bodyJson64:=TJSONObject.Create;
    bodyJson64.AddPair('number','5565996739474');
    bodyJson64.AddPair('path','data:application/pdf;base64,'+ outStream.DataString);
        bodyJson64.AddPair('caption','51180811154534000199550010000013461000013465');
    restRequest.AddBody(bodyJson64);
    restRequest.Execute;
     memoBase64.Text:=restResponse.JSONText;
  end;

end;

end.
