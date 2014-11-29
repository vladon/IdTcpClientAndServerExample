unit Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient;

type
  TForm1 = class(TForm)
    IdTCPClient1: TIdTCPClient;
    eTextToSend: TEdit;
    bConnect: TButton;
    eServer: TEdit;
    ePort: TEdit;
    mLog: TMemo;
    bDisconnect: TButton;
    bSend: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bConnectClick(Sender: TObject);
    procedure Log(const s: string);
    procedure bDisconnectClick(Sender: TObject);
    procedure bSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bConnectClick(Sender: TObject);
begin
  IdTCPClient1.Host := eServer.Text;
  IdTCPClient1.Port := StrToInt(ePort.Text);
  IdTCPClient1.Connect;

  if IdTCPClient1.Connected then
  begin
    Log('Connected to ' + IdTCPClient1.Host + ':' +
      IntToStr(IdTCPClient1.Port));
    bConnect.Enabled := False;
    bDisconnect.Enabled := True;
    bSend.Enabled := True;
  end;
end;

procedure TForm1.bDisconnectClick(Sender: TObject);
begin
  IdTCPClient1.Disconnect;
  bDisconnect.Enabled := False;
  bConnect.Enabled := True;
  bSend.Enabled := False;
end;

procedure TForm1.bSendClick(Sender: TObject);
begin
  IdTCPClient1.IOHandler.WriteLn(eTextToSend.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  bDisconnect.Enabled := False;
  bSend.Enabled := False;
end;

procedure TForm1.Log(const s: string);
begin
  mLog.Lines.Add(s);
end;

end.
