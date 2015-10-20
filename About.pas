unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, UrlMon;

type
  TAboutForm = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Image1: TImage;
    Button1: TButton;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.dfm}

procedure TAboutForm.Timer1Timer(Sender: TObject);
begin
label1.Width:=168;
if label1.Left >= - label1.Width then
  label1.Left := Label1.Left-5
else
  Label1.Left := AboutForm.Width + label1.Width;
end;

procedure TAboutForm.Label1Click(Sender: TObject);
begin
HlinkNavigateString(Nil,'http://user.qzone.qq.com/654714226?ptlang=2052');
end;

procedure TAboutForm.Button1Click(Sender: TObject);
begin
close;
end;

procedure TAboutForm.Label3Click(Sender: TObject);
begin
HlinkNavigateString(Nil,'http://user.qzone.qq.com/654714226?ptlang=2052');
end;

end.
