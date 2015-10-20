program Imageview;

uses
  Forms,
  Imageviewer in 'Imageviewer.pas' {ImageViewForm},
  SetSlide in 'SetSlide.pas' {SlideSetForm},
  About in 'About.pas' {AboutForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Bruce PhotoBook';
  Application.CreateForm(TImageViewForm, ImageViewForm);
  Application.CreateForm(TSlideSetForm, SlideSetForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
