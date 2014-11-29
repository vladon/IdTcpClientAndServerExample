object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Server'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 89
    Top = 8
    Width = 21
    Height = 13
    Caption = 'Log:'
  end
  object bStart: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = bStartClick
  end
  object bStop: TButton
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = bStopClick
  end
  object mLog: TMemo
    Left = 89
    Top = 27
    Width = 538
    Height = 264
    TabOrder = 2
  end
  object IdTCPServer1: TIdTCPServer
    Bindings = <>
    DefaultPort = 1234
    OnExecute = IdTCPServer1Execute
    Left = 24
    Top = 80
  end
end
