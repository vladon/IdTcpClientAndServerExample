unit Server;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdTCPServer, Vcl.StdCtrls, IdContext;

type
  TForm2 = class(TForm)
    bStart: TButton;
    bStop: TButton;
    mLog: TMemo;
    Label2: TLabel;
    IdTCPServer1: TIdTCPServer;
    procedure bStartClick(Sender: TObject);
    procedure bStopClick(Sender: TObject);
    procedure Log(const s: string);
    procedure IdTCPServer1Execute(AContext: TIdContext);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.bStartClick(Sender: TObject);
begin
  if not IdTCPServer1.Active then
  begin
    IdTCPServer1.Active := True;
    Log('Server started on port ' + IntToStr(IdTCPServer1.DefaultPort));
    bStart.Enabled := False;
    bStop.Enabled := True;
  end;
end;

procedure TForm2.bStopClick(Sender: TObject);
begin
  if IdTCPServer1.Active then
  begin
    IdTCPServer1.Active := False;
    Log('Server stopped');
    bStop.Enabled := False;
    bStart.Enabled := True;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  bStart.Enabled := True;
  bStop.Enabled := False;
end;

procedure TForm2.IdTCPServer1Execute(AContext: TIdContext);
var
  s: string;
begin
  s := AContext.Connection.IOHandler.ReadLn();
  if s <> EmptyStr then
  begin
    mLog.Lines.Add(s);
  end;
end;

procedure TForm2.Log(const s: string);
begin
  mLog.Lines.Add(s);
end;

end.
