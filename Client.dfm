object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Client'
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
  object Label1: TLabel
    Left = 170
    Top = 8
    Width = 17
    Height = 13
    Caption = 'Log'
  end
  object eTextToSend: TEdit
    Left = 8
    Top = 106
    Width = 156
    Height = 21
    TabOrder = 0
    Text = 'Text To Send'
  end
  object bConnect: TButton
    Left = 8
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 1
    OnClick = bConnectClick
  end
  object eServer: TEdit
    Left = 8
    Top = 8
    Width = 156
    Height = 21
    TabOrder = 2
    Text = 'localhost'
  end
  object ePort: TEdit
    Left = 8
    Top = 35
    Width = 156
    Height = 21
    TabOrder = 3
    Text = '1234'
  end
  object mLog: TMemo
    Left = 170
    Top = 27
    Width = 457
    Height = 264
    TabOrder = 4
  end
  object bDisconnect: TButton
    Left = 89
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    TabOrder = 5
    OnClick = bDisconnectClick
  end
  object bSend: TButton
    Left = 8
    Top = 133
    Width = 156
    Height = 25
    Caption = 'Send Line'
    TabOrder = 6
    OnClick = bSendClick
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 64
    Top = 192
  end
end
