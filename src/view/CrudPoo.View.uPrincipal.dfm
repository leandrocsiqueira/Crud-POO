object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 211
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 211
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 110
    ExplicitTop = 110
    ExplicitWidth = 185
    ExplicitHeight = 41
    object ButtonPrincipal: TButton
      Left = 20
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Principal'
      TabOrder = 0
    end
    object MemoPrincipal: TMemo
      Left = 120
      Top = 23
      Width = 254
      Height = 180
      TabOrder = 1
    end
  end
end
