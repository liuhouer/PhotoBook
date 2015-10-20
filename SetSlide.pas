unit SetSlide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, ComCtrls, Buttons, Mask;

type
  TSlideSetForm = class(TForm)
    Auto: TCheckBox;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    TrackBar1: TTrackBar;
    Edit1: TEdit;
    Label1: TLabel;
    Bevel2: TBevel;
    OKBTN: TBitBtn;
    CancelBTN: TBitBtn;
    SaveValueBTN: TBitBtn;
    UpDown1: TUpDown;
    procedure Edit1Change(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure TrackBar1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure AutoClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveValueBTNClick(Sender: TObject);
    procedure OKBTNClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SlideSetForm: TSlideSetForm;
  SlideTimer : Integer;
  BackwardSlide, Circulate, AutoScaleImg : Boolean;
  SoftwareName, SoftwareVersion, AuthorName , AuthorEmail, AuthorWebSite : String; 

implementation
uses Inifiles;

{$R *.dfm}

procedure TSlideSetForm.Edit1Change(Sender: TObject);
begin
SlideTimer := strtoint(Edit1.Text);
UpDown1.Position := SlideTimer;
TrackBar1.Position := SlideTimer;
end;

procedure TSlideSetForm.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
Edit1.Text := inttostr(UpDown1.Position);
TrackBar1.Position := SlideTimer;
end;

procedure TSlideSetForm.TrackBar1Change(Sender: TObject);
begin
SlideTimer := TrackBar1.Position;
Edit1.Text := inttostr(SlideTimer);
UpDown1.Position := SlideTimer;
end;

procedure TSlideSetForm.CheckBox1Click(Sender: TObject);
begin
Circulate := CheckBox1.Checked;
end;

procedure TSlideSetForm.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex =1 then
BackwardSlide := True
else
BackwardSlide := False;
end;

procedure TSlideSetForm.AutoClick(Sender: TObject);
begin
 AutoScaleImg := Auto.Checked;
end;

procedure TSlideSetForm.CancelBTNClick(Sender: TObject);
begin
close;
end;

procedure TSlideSetForm.FormCreate(Sender: TObject);
var
  ImageIni: TIniFile;
begin
  //读入默认参数
  ImageIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Image.ini');
  with ImageIni do begin
    SlideTimer := StrToInt(ReadString('Slide', 'Slide Time', '2'));
    BackwardSlide := ReadBool('Slide', 'Backward Slide', TRUE);
    Circulate := ReadBool('Slide', 'Circulate Slide', TRUE);
    AutoScaleImg := ReadBool('Slide', 'Auto Scale Image', TRUE);
  end;
  ImageIni.Free;
  //初始化界面参数
  //图像切换时间
  Edit1.Text := inttostr(SlideTimer);
  TrackBar1.Position := SlideTimer;
  UpDown1.Position := SlideTimer;
  //是否播放顺序
  if BackwardSlide then RadioGroup1.ItemIndex := 1
  else RadioGroup1.ItemIndex := 0;
  //是否自动缩放
  Auto.Checked := AutoScaleImg;
  //是否循环播放
  CheckBox1.Checked := Circulate;
end;

procedure TSlideSetForm.SaveValueBTNClick(Sender: TObject);
var
  ImageIni: TIniFile;
begin
  ImageIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Image.ini');
  with ImageIni do begin
    ImageIni.WriteString('Software', 'Software Name', '优利数码影像浏览管理系统');
    ImageIni.WriteString('Software', 'Software Version', 'V1.0');
    ImageIni.WriteString('Author', 'Author Name', '优利');
    ImageIni.WriteString('Author', 'Author EMail', 'journer@163.com');
    ImageIni.WriteString('Author', 'Author WebSite', 'http://journer.yeah.net');
    ImageIni.WriteString('Slide', 'Slide Time', Edit1.Text);
    ImageIni.WriteBool('Slide', 'Backward Slide', BackwardSlide);
    ImageIni.WriteBool('Slide', 'Circulate Slide', Circulate);
    ImageIni.WriteBool('Slide', 'Auto Scale Image', AutoScaleImg);
  end;
  ImageIni.Free;
end;

procedure TSlideSetForm.OKBTNClick(Sender: TObject);
begin
 SaveValueBTNClick(Sender);
 close;
end;

procedure TSlideSetForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ((key<'0') or (key>'9'))and (key<>#8) then
   key:=#0;
end;

end.
