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
    TabOrder = 0
    ExplicitLeft = 296
    ExplicitTop = 296
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 121
    Align = alTop
    TabOrder = 1
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
end
