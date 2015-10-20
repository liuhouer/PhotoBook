
unit Imageviewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Jpeg, ExtDlgs, Menus, ToolWin, ComCtrls,
  ActnList, GraphicEx, GraphicCompression, FileCtrl, ImgList, Printers, Registry;
type
  TImageViewForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    FilterComboBox1: TFilterComboBox;
    FileEdit: TEdit;
    SavePic: TSavePictureDialog;
    CheckBox1: TCheckBox;
    ToolBarView: TCoolBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    PrintSetup1: TMenuItem;
    Print1: TMenuItem;
    N2: TMenuItem;
    SaveAs1: TMenuItem;
    Open1: TMenuItem;
    View1: TMenuItem;
    Tool1: TMenuItem;
    Help1: TMenuItem;
    NextMenu: TMenuItem;
    PrevMenu: TMenuItem;
    N8: TMenuItem;
    SlidingMenu: TMenuItem;
    N10: TMenuItem;
    View1to1Menu: TMenuItem;
    AutoScaleMenu: TMenuItem;
    View2vs1Menu: TMenuItem;
    View1vs2Menu: TMenuItem;
    SetAsWallPaperMenu: TMenuItem;
    SaveAsMenu: TMenuItem;
    AboutMenu: TMenuItem;
    ActionList1: TActionList;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ImageView: TPanel;
    BrowserView: TPanel;
    StatusBarView: TStatusBar;
    ToolBar1: TToolBar;
    OpenImgToolBTN: TToolButton;
    BrowserToolBTN: TToolButton;
    PrintToolBTN: TToolButton;
    SlidingToolBTN: TToolButton;
    NextImgToolBTN: TToolButton;
    ToolButton6: TToolButton;
    PrevImgToolBTN: TToolButton;
    LastImgToolBTN: TToolButton;
    ZoomInToolBTN: TToolButton;
    ZoomOutToolBTN: TToolButton;
    View1vs1ToolBTN: TToolButton;
    ToolButton12: TToolButton;
    Image1: TImage;
    Panel2: TPanel;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter1: TSplitter;
    OPD: TOpenDialog;
    PrintImgAction: TAction;
    FileSaveAsAction: TAction;
    PrevImgAction: TAction;
    NextImgAction: TAction;
    View1vs1Action: TAction;
    View1vs2Action: TAction;
    View2vs1Action: TAction;
    AutoScaleAction: TAction;
    FileOpenAction: TAction;
    PrinterSettingAction: TAction;
    SlideSettingAction: TAction;
    SlidingAction: TAction;
    AboutAction: TAction;
    SetAsWallPaperAction: TAction;
    N6: TMenuItem;
    Cut1: TMenuItem;
    FileDelAction: TAction;
    N7: TMenuItem;
    ShowToolbarMenu: TMenuItem;
    ShowStatusBarMenu: TMenuItem;
    ShowBrowserMenu: TMenuItem;
    N9: TMenuItem;
    FullScreenViewMenu: TMenuItem;
    PopupMenu1: TPopupMenu;
    SlidingPopup: TMenuItem;
    ViewPopup: TMenuItem;
    SetAsWallPaperPopup: TMenuItem;
    View1vs1Popup: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    AboutPopup: TMenuItem;
    ExitPopup: TMenuItem;
    SlideSetPopup: TMenuItem;
    SaveAsPopup: TMenuItem;
    View1Vs2Popup: TMenuItem;
    View2vs1Popup: TMenuItem;
    AutoScalePopup: TMenuItem;
    ShowToolbarPopup: TMenuItem;
    ShowStatusBarPopup: TMenuItem;
    ShowBrowserPopup: TMenuItem;
    N26: TMenuItem;
    DelPopup: TMenuItem;
    FullDisplayPopup: TMenuItem;
    ResizeDisplayPopup: TMenuItem;
    ShowToolBarAction: TAction;
    ShowStatusBarAction: TAction;
    ShowBrowserAction: TAction;
    ImageList1: TImageList;
    SlideSetToolBTN: TToolButton;
    DelImgToolBTN: TToolButton;
    SetASWallpaperToolBTN: TToolButton;
    ToolButton18: TToolButton;
    SaveAsToolBTN: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton16: TToolButton;
    FullDisplayToolBTN: TToolButton;
    AboutToolBTN: TToolButton;
    FullDisplayAction: TAction;
    ExitAction: TAction;
    ResetDisplayAction: TAction;
    SetSlideMenu: TMenuItem;
    Timer1: TTimer;
    ImgListChangeAction: TAction;
    ZoomInAction: TAction;
    ZoomOutAction: TAction;
    ZoomOutMenu: TMenuItem;
    ZoomInAction1: TMenuItem;
    ZoomInAction2: TMenuItem;
    ZoomOutAction1: TMenuItem;
    ShowMenuPopup: TMenuItem;
    ShowMenuMenu: TMenuItem;
    Panel3: TPanel;
    ImgCtrlLabel: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure FileOpenActionExecute(Sender: TObject);
    procedure ShowToolBarMenuClick(Sender: TObject);
    procedure ShowToolbarPopupClick(Sender: TObject);
    procedure BrowserToolBTNClick(Sender: TObject);
    procedure FullDisplayActionExecute(Sender: TObject);
    procedure ShowBrowserActionExecute(Sender: TObject);
    procedure ShowStatusBarActionExecute(Sender: TObject);
    procedure ExitActionExecute(Sender: TObject);
    procedure ResetDisplayActionExecute(Sender: TObject);
    procedure AboutActionExecute(Sender: TObject);
    procedure PrintImgActionExecute(Sender: TObject);
    procedure PrinterSettingActionExecute(Sender: TObject);
    procedure FileSaveAsActionExecute(Sender: TObject);
    procedure SetAsWallPaperActionExecute(Sender: TObject);
    procedure SlideSettingActionExecute(Sender: TObject);
    procedure FileDelActionExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure NextImgActionExecute(Sender: TObject);
    procedure PrevImgActionExecute(Sender: TObject);
    procedure SlidingActionExecute(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure LastImgToolBTNClick(Sender: TObject);
    procedure AutoScaleActionExecute(Sender: TObject);
    procedure View1vs2ActionExecute(Sender: TObject);
    procedure View1vs1ActionExecute(Sender: TObject);
    procedure View2vs1ActionExecute(Sender: TObject);
    procedure ZoomInActionExecute(Sender: TObject);
    procedure ZoomOutActionExecute(Sender: TObject);
    procedure ImgCtrlLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgCtrlLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgCtrlLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShowMenuPopupClick(Sender: TObject);
    procedure ShowMenuMenuClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure DoLoad(const FileName: String);

  public
    { Public declarations }
end;
    Function GetImgList(Sender: TObject): Boolean;
    
var
  ImageViewForm: TImageViewForm;
  tmpBitmap:TBitmap;
  iBitmapValide:Boolean;
  FileExt:string[4];
  JPEGImage:TJPEGImage;
  WinWidth,WinHeight,WinLeft,WinTop:Integer;//窗口大小、位置
  FileIndex : Integer;//正在显示的文件序号
  FileNum : Integer;//要显示的文件总数
  Circulation: Boolean;//是否要循环显示;
  //以下用于图像漫游
  Origin: Tpoint;
  ImageLeft: integer;
  ImageTop: integer;
  Visa1: Tpoint;   //鼠标当前位置相对图像右下角的坐标
  Visa2: Tpoint;   //鼠标当前位置相对图像左上角的坐标
  Canmove: Boolean;
  hm: HMENU;

implementation

uses SetSlide, About, MMSystem, ShellAPI;

{$R *.dfm}

procedure TImageViewForm.FormCreate(Sender: TObject);
begin
  DragAcceptFiles(Handle, True);
  //初始化
  WinWidth:=600;WinHeight:=430;WinLeft:=127;WinTop:=67;
  SetWindowLong(Application.Handle,GWL_EXSTYLE,WS_EX_TOOLWINDOW);
  ModifyMenu(MainMenu1.Handle, 3, mf_ByPosition or mf_Popup or mf_Help,
      Help1.Handle, '帮助(&H)');
  Circulation := SetSlide.Circulate;
  hm := Getmenu(Handle);//保存菜单
  Image1.Align := alNone;
  Image1.Width :=  Panel3.Width;
  Image1.Height := Panel3.Height;
end;

procedure TImageViewForm.CheckBox1Click(Sender: TObject);
begin
   Image1.Stretch:=CheckBox1.Checked;
   if CheckBox1.Checked then
   begin
     AutoScaleMenu.Checked := True;
     AutoScalePopup.Checked := True;
     Image1.Align := alClient;
   end
   else
   begin
     AutoScaleMenu.Checked := False;
     AutoScalePopup.Checked := False;
     Image1.Align := alNone;
     Image1.Width :=  Panel3.Width;
     Image1.Height := Panel3.Height;
   end;
end;

procedure TImageViewForm.Splitter1Moved(Sender: TObject);
var tmpWidth : Integer;
begin
tmpWidth :=  BrowserView.Width-1;
DriveComboBox1.Width := tmpWidth;
FileEdit.Width := tmpWidth;
FilterComboBox1.Width := tmpWidth;
end;

procedure TImageViewForm.DoLoad(const FileName: String);
var
tmpFileExt : string[4];
begin
tmpFileExt := AnsiLowerCase(ExtractFileExt(FileName));
try
  if (tmpFileExt='.bw') or (tmpFileExt='.cel') or (tmpFileExt='.cut') or
  (tmpFileExt='.dib') or (tmpFileExt='.gif') or (tmpFileExt='.icb') or
  (tmpFileExt='.pcc') or (tmpFileExt='.pcd') or (tmpFileExt='.pdd') or
  (tmpFileExt='.pcx') or (tmpFileExt='.pic') or (tmpFileExt='.pbm') or
  (tmpFileExt='.pgm') or (tmpFileExt='.ppm') or (tmpFileExt='.psd') or
  (tmpFileExt='.rgb') or (tmpFileExt='.rgba') or (tmpFileExt='.rla') or
  (tmpFileExt='.rle') or (tmpFileExt='.rpf') or (tmpFileExt='.scr') or
  (tmpFileExt='.sgi') or (tmpFileExt='.tga') or (tmpFileExt='.tif') or
  (tmpFileExt='.tiff') or (tmpFileExt='.vda') or (tmpFileExt='.vst') or
  (tmpFileExt='.win') or (tmpFileExt='.jpg') or (tmpFileExt='.jpeg') or
  (tmpFileExt='.bmp') or (tmpFileExt='.ico') or (tmpFileExt='.emf') or
  (tmpFileExt='.wmf')  then
  begin
  Image1.Picture.LoadFromFile(FileName);
  if Image1.Picture.Graphic is TJPEGImage then
     begin
      //创建JPEG图像对象
      JPEGImage:=TJPEGImage.Create;
      try
      //从文件中装载图像
       JPEGImage.LoadFromFile(FileName);
      //使Image1显示JPEG图像
       Image1.Picture.Graphic:=JPEGImage;
      finally
      //释放对象
      JPEGImage.Free;
      end;
     end;
  end;
except
//显示错误信息
end;
end;

procedure TImageViewForm.FileOpenActionExecute(Sender: TObject);
begin
if OPD.Execute then
  begin
    DoLoad(OPD.FileName);
    StatusBarView.Panels[1].Text := OPD.FileName;
    GetImgList(Sender);
  end;
end;

Function GetImgList(Sender: TObject) : Boolean;
var k: Integer;
begin
   if FileNum <> 0 then
     begin
      FileNum :=0;
     end;
   if Sender is TDirectoryListBox then
     begin
     //设置文件列表位置为第一个图像文件
     ImageViewForm.FileListBox1.ItemIndex := 0;
     FileIndex := 0;
     end
   else{ if Sender is TOpenDialog then}
     begin
       //获得当前驱动器、目录,将所有图像文件添加到显示列表
       ImageViewForm.FileListBox1.ApplyFilePath(ImageViewForm.OPD.FileName);
       //设置文件列表位置为当前打开的文件的位置
       k:= 0;
       try
         repeat
         ImageViewForm.FileListBox1.ItemIndex := k;
         k:=k+1;
         until ImageViewForm.FileListBox1.FileName = ImageViewForm.OPD.FileName;
       finally
       ImageViewForm.FileListBox1.ItemIndex := k-1;
       FileIndex :=k-1;
       end;
end;
   //获得当前图像文件的个数
   FileNum := ImageViewForm.FileListBox1.Count-1;
   //返回正确值
   Result := True;
end;

procedure TImageViewForm.ShowToolBarMenuClick(Sender: TObject);
begin
  if ShowToolbarMenu.Checked then
   begin
      ToolBarView.Visible := True;
      ShowToolbarPopup.Checked := True;
   end
  else
    begin
      ToolBarView.Visible := False;
      ShowToolbarPopup.Checked := False;
    end;
end;

procedure TImageViewForm.ShowToolbarPopupClick(Sender: TObject);
begin
  if ShowToolbarPopup.Checked then
   begin
      ToolBarView.Visible := True;
      ShowToolbarMenu.Checked := True;
   end
  else
    begin
      ToolBarView.Visible := False;
      ShowToolbarMenu.Checked := False;
    end;
end;

procedure TImageViewForm.BrowserToolBTNClick(Sender: TObject);
begin
  if BrowserView.Visible=True then
  BrowserView.Visible:= False
  else
  BrowserView.Visible:= True;
end;

procedure TImageViewForm.ShowBrowserActionExecute(Sender: TObject);
begin
  if ShowBrowserMenu.Checked then
   begin
      BrowserView.Visible := True;
      ShowBrowserPopup.Checked := True;
   end
  else
    begin
      BrowserView.Visible := False;
      ShowBrowserPopup.Checked := False;
    end;
end;

procedure TImageViewForm.ShowStatusBarActionExecute(Sender: TObject);
begin
  if ShowStatusBarMenu.Checked then
   begin
      StatusBarView.Visible := True;
      ShowStatusBarPopup.Checked := True;
   end
  else
    begin
      StatusBarView.Visible := False;
      ShowStatusBarPopup.Checked := False;
    end;

end;

procedure TImageViewForm.FullDisplayActionExecute(Sender: TObject);
begin
//暂时保存当前位置和大小
WinWidth := ImageViewForm.Width;
WinHeight := ImageViewForm.Height;
WinLeft := ImageViewForm.Left;
WinTop := ImageViewForm.Top;
//隐藏工具栏、浏览区、状态栏、菜单等
ToolBarView.Visible := False;
BrowserView.Visible := False;
StatusBarView.Visible := False;
ShowBrowserMenu.Checked := False;
ShowToolbarMenu.Checked := False;
ShowStatusBarMenu.Checked := False;
ShowBrowserPopup.Checked := False;
ShowToolbarPopup.Checked := False;
ShowStatusBarPopup.Checked := False;
Splitter1.Visible := False;
setmenu(Self.Handle,HMENU(0));    //隐藏菜单
ShowMenuPopup.Checked := False;
ShowMenuMenu.Checked := False;
//最大化
ImageViewForm.BorderStyle := bsNone;
ImageViewForm.BorderIcons := [];
ImageViewForm.WindowState := wsMaximized;
ImageViewForm.Refresh;
end;

procedure TImageViewForm.ShowMenuPopupClick(Sender: TObject);
begin
  if ShowMenuPopup.Checked then
   begin
      setmenu(Handle,hm);           //恢复菜单
      ShowMenuMenu.Checked := True;
   end
  else
    begin
      setmenu(Self.Handle,HMENU(0));    //隐藏菜单
      ShowMenuMenu.Checked := False;
    end;
end;

procedure TImageViewForm.ShowMenuMenuClick(Sender: TObject);
begin
  if ShowMenuMenu.Checked then
   begin
      setmenu(Handle,hm);          //恢复菜单
      ShowMenuPopup.Checked := True;
   end
  else
    begin
      setmenu(Self.Handle,HMENU(0));    //隐藏菜单
      ShowMenuPopup.Checked := False;
    end;
end;

procedure TImageViewForm.ExitActionExecute(Sender: TObject);
begin
close;
end;

procedure TImageViewForm.ResetDisplayActionExecute(Sender: TObject);
begin
//恢复工具栏、浏览区、状态栏、菜单
ToolBarView.Visible := True;
BrowserView.Visible := True;
StatusBarView.Visible := True;
ShowBrowserMenu.Checked := True;
ShowToolbarMenu.Checked := True;
ShowStatusBarMenu.Checked := True;
ShowBrowserPopup.Checked := True;
ShowToolbarPopup.Checked := True;
ShowStatusBarPopup.Checked := True;
Splitter1.Visible := True;
setmenu(Handle,hm);          //恢复菜单
ShowMenuPopup.Checked := True;
ShowMenuMenu.Checked := True;
//还原显示
ImageViewForm.BorderStyle := bsSizeable;
ImageViewForm.BorderIcons := [biSystemMenu,biMinimize,biMaximize];
ImageViewForm.WindowState := wsNormal;
//还原窗口位置和大小
ImageViewForm.Width := WinWidth;
ImageViewForm.Height := WinHeight;
ImageViewForm.Left := WinLeft;
ImageViewForm.Top := WinTop;
//刷新显示
ImageViewForm.Refresh;
end;

procedure TImageViewForm.AboutActionExecute(Sender: TObject);
begin
AboutForm.Show;
end;

procedure TImageViewForm.PrintImgActionExecute(Sender: TObject);
var
tmpBitmap : TBitmap; 
begin
  inherited;
  if (Image1.Picture.Bitmap.HandleType = bmDib) then
    begin
      with Image1.Picture.Bitmap do
       begin
         Printer.BeginDoc;
         Printer.Canvas.StretchDraw(Canvas.ClipRect,Image1.Picture.Bitmap);
         Printer.EndDoc;
       end;
    end
  else
     {非DIB格式图像先复制一个为DIB再打印}
    try
      begin
      tmpBitmap := TBitmap.Create;
      Bitblt(Image1.Canvas.Handle,0,0,Image1.Picture.Width,Image1.Picture.Height,
      tmpBitmap.Canvas.Handle,0,0,srccopy);
      tmpBitmap.HandleType := bmDib;
      with Image1.Picture.Bitmap do
        begin
         Printer.BeginDoc;
         Printer.Canvas.StretchDraw(Canvas.ClipRect,tmpBitmap);
         Printer.EndDoc;
         tmpBitmap.Free;
        end;
      end;
     finally
     //显示无法打印信息
     ShowMessage('现在无法打印该图像!!!'+#13#10
         +'1、是否选择了图像文件?'+#13#10
         +'2、打印机是否处于联机状态？'+#13#10
         +'3、打印机出现意外错误?'+#13#10
         +'4、操作系统运行情况正常?');
    end;
end;

procedure TImageViewForm.PrinterSettingActionExecute(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TImageViewForm.FileSaveAsActionExecute(Sender: TObject);
begin
if Image1.Picture.Width <> 0 then
  begin
  if SavePic.Execute then
    begin
     Image1.Picture.SaveToFile(SavePic.FileName);
    end;
  end;
end;

procedure TImageViewForm.SetAsWallPaperActionExecute(Sender: TObject);
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  with Reg do
    begin
      RootKey := HKey_Current_User;
      if OpenKey('Control Panel\Desktop',False) then
         begin
           WriteString('TileWallPaper','0'); //非平铺方式
           WriteString('Wallpaper',
            ExPandFileName(FileListBox1.Items[FileListBox1.ItemIndex])); //改变墙纸
           WriteString('WallpaperStyle','2'); //拉伸方式
         end
      else
         begin
           ShowMessage('无法将该图像设置为墙纸！');
         end;
      CloseKey;
      Free;
      //广播注册表改动的消息
      Systemparametersinfo(SPI_SETDESKWALLPAPER,0,Nil,SPIF_SENDCHANGE);
    end;
  end;

procedure TImageViewForm.SlideSettingActionExecute(Sender: TObject);
begin
  SlideSetForm.Show;
end;

procedure TImageViewForm.FileDelActionExecute(Sender: TObject);
begin
If MessageDlg('确定删除该文件吗？',mtConfirmation,[mbYes,mbNo],mryes) =mrYes then
 begin
   if DeleteFile(ExPandFileName(FileListBox1.Items[FileListBox1.ItemIndex]))=False then
      ShowMessage('该文件无法删除!');
 end;
end;

procedure TImageViewForm.Timer1Timer(Sender: TObject);
begin
if SetSlide.BackwardSlide then
   NextImgActionExecute(Sender)
else
   PrevImgActionExecute(Sender);
end;

procedure TImageViewForm.NextImgActionExecute(Sender: TObject);
begin
  if FileIndex = FileNum then
    begin
      if Circulation then
         FileIndex := 0
      else
         begin
         //不执行任何操作
         end;
    end
  else
    FileIndex := FileIndex + 1;
  FileListBox1.ItemIndex := FileIndex;
  Doload(ExPandFileName(FileListBox1.Items[FileListBox1.ItemIndex]));
end;

procedure TImageViewForm.PrevImgActionExecute(Sender: TObject);
begin
  if FileIndex = 0 then
    begin
      if Circulation then
         FileIndex := FileNum
      else
         begin
         //不执行任何操作
         end;
    end
  else
    FileIndex := FileIndex - 1;
  FileListBox1.ItemIndex := FileIndex;
  Doload(ExPandFileName(FileListBox1.Items[FileListBox1.ItemIndex]));
end;

procedure TImageViewForm.SlidingActionExecute(Sender: TObject);
begin
Timer1.Interval := SetSlide.SlideTimer * 1000;
if SlidingMenu.Checked then
   begin
     SlidingMenu.Checked := False;
     SlidingPopup.Checked := False;
   end
else
   begin
     SlidingMenu.Checked := True;
     SlidingPopup.Checked := True;
   end;
Timer1.Enabled := SlidingMenu.Checked;
end;

procedure TImageViewForm.FileListBox1Change(Sender: TObject);
begin
Doload(FileListBox1.FileName);
end;

procedure TImageViewForm.DirectoryListBox1Change(Sender: TObject);
begin
GetImgList(Sender);
Doload(FileListBox1.FileName);
end;

procedure TImageViewForm.LastImgToolBTNClick(Sender: TObject);
begin
FileIndex := FileNum;
FileListBox1.ItemIndex := FileIndex;
Doload(ExPandFileName(FileListBox1.Items[FileListBox1.ItemIndex]));
end;

procedure TImageViewForm.AutoScaleActionExecute(Sender: TObject);
begin
if CheckBox1.Checked then
   begin
     CheckBox1.Checked := False;
   end
else
   begin
     CheckBox1.Checked := True;
   end;
CheckBox1Click(Sender);
end;

procedure TImageViewForm.View1vs2ActionExecute(Sender: TObject);
begin
Image1.Width := Image1.Picture.Width div 2;
Image1.Height := Image1.Picture.Height div 2;
Image1.Stretch := True;
Image1.Repaint;
end;

procedure TImageViewForm.View1vs1ActionExecute(Sender: TObject);
begin
Image1.Width := Image1.Picture.Width;
Image1.Height := Image1.Picture.Height;
Image1.Stretch := True;
Image1.Repaint;
end;

procedure TImageViewForm.View2vs1ActionExecute(Sender: TObject);
begin
Image1.Width := Image1.Picture.Width * 2;
Image1.Height := Image1.Picture.Height * 2;
Image1.Stretch := True;
Image1.Repaint;
end;

procedure TImageViewForm.ZoomInActionExecute(Sender: TObject);
begin
Image1.Width := Image1.Width * 2;
Image1.Height := Image1.Height * 2;
Image1.Stretch := True;
Image1.Repaint;
end;

procedure TImageViewForm.ZoomOutActionExecute(Sender: TObject);
begin
Image1.Width := Image1.Width div 2;
Image1.Height := Image1.Height div 2;
Image1.Stretch := True;
Image1.Repaint;
end;

procedure TImageViewForm.ImgCtrlLabelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Button=mbLeft then
  begin
    Origin.x := X;
    Origin.y := Y;
    ImageLeft := Image1.Left;
    ImageTop := Image1.Top;
    Visa1.x := X- (Image1.Width - Panel3.Width + Image1.Left);
    Visa1.y := Y- (Image1.Height - Panel3.Height + Image1.Top);
    Visa2.x := X- Image1.Left;
    Visa2.y := Y- Image1.Top;
    Canmove := True;
  end;
end;

procedure TImageViewForm.ImgCtrlLabelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if Canmove then
  begin
    if X < Visa1.x then X := Visa1.x;
    if X > Visa2.x then X := Visa2.x;
    if Y < Visa1.y then Y := Visa1.y;
    if Y > Visa2.y then Y := Visa2.y;
    Image1.Left := ImageLeft + (X - Origin.x);
    Image1.Top := ImageTop + (Y - Origin.y);
  end;
end;

procedure TImageViewForm.ImgCtrlLabelMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Canmove := False;
end;

procedure TImageViewForm.FormResize(Sender: TObject);
begin
  Image1.Width :=  Panel3.Width;
  Image1.Height := Panel3.Height;
end;

procedure TImageViewForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key in [VK_UP, VK_PRIOR, VK_LEFT] then PrevImgActionExecute(Sender)
else if Key in [VK_DOWN, VK_NEXT, VK_RIGHT] then NextImgActionExecute(Sender)
else if Key in [VK_END] then LastImgToolBTNClick(Sender);
//else if Key in [VK_HOME] then FirstImgActionExecute(Sender) ;
end;

end.
