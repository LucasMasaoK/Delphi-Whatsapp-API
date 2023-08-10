object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Tela Principal'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object memoBase64: TMemo
    Left = 0
    Top = 121
    Width = 628
    Height = 321
    Align = alClient
    Lines.Strings = (
      'memoBase64')
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitWidth = 622
    ExplicitHeight = 312
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 121
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 622
    object btnAPI: TBitBtn
      Left = 264
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Chamar API'
      TabOrder = 0
      OnClick = btnAPIClick
    end
  end
  object memoOut: TMemo
    Left = 336
    Top = 144
    Width = 185
    Height = 89
    Lines.Strings = (
      'memoOut')
    TabOrder = 2
  end
  object restClient: TRESTClient
    Authenticator = OAuth2Authenticator1
    BaseURL = 'https://cluster.apigratis.com/api/v1/whatsapp/sendText'
    Params = <>
    SynchronizedEvents = False
    Left = 488
    Top = 328
  end
  object restResponse: TRESTResponse
    Left = 552
    Top = 304
  end
  object restRequest: TRESTRequest
    Client = restClient
    Method = rmPOST
    Params = <>
    Response = restResponse
    SynchronizedEvents = False
    Left = 384
    Top = 264
  end
  object OAuth2Authenticator1: TOAuth2Authenticator
    AccessToken = 
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXR' +
      'hZm9ybWEuYXBpYnJhc2lsLmNvbS5ici9zb2NpYWwvZ29vZ2xlL2NhbGxiYWNrIiw' +
      'iaWF0IjoxNjkxNjM0NzI4LCJleHAiOjE3MjMxNzA3MjgsIm5iZiI6MTY5MTYzNDc' +
      'yOCwianRpIjoiM0tNNlBWY2owS285UmtqVCIsInN1YiI6IjQ1NDIiLCJwcnYiOiI' +
      'yM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.9zF-Alj' +
      'g-WTN_kOjelElqgfgqtrt7Vc4VznC2J-PmJ4'
    TokenType = ttBEARER
    Left = 424
    Top = 72
  end
end
