object SlideSetForm: TSlideSetForm
  Left = 245
  Top = 177
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = #35774#32622#24187#28783#29255#26174#31034#21442#25968
  ClientHeight = 139
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFF99999FFFFFFFFFFFFFFFFFFFFFFFFFF99999999FFFFFFFFFFFFFFFFFF
    FFFFF99999999999FFFFFFFFFFFFFFFFFFF9999FFFF9999999FFFFFFFFFFFFFF
    FF999FFFFFFFFF9999FFFFFFFFFFFFFFF999FFFFFFFFFFF9999FFFFFFFFFFFFF
    999FFFFFFFFFFFFF999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999FFFFFFFFFFFF
    FFFFFFFFFFFFFFFFF9999FFFFFFFFFFFFFDFFFFFFFFFFFFFFF9999FFFFFFFFFF
    FFDFDFFFFFDDDDDFFFFF999FFFFFFFFFFFDFFDFFFFDFFFDFFFFFF99FFFFFFFFF
    FFDFFFDFFFDFFFDFFFFFFF9FFFFFFFFFFFDFFFDFFFDFFFDFFFFFFF99FFFFFFFF
    FFDFFFFDFFDFFFFFFFFFFF99FFFFFFFFFFDFFFFDFFDFFFFFFFFFFFF99FFFFFFF
    FFDFFFFDFFDFFFFFFFFFFFFF99FFFFFFDFDFFFFFDFDFFFFFFFFFFFFF999FFFFF
    FDDFFFFFDFDFFFFFFFFFFFFFF99FFFFFFDDDDDDDDDDDDFFFFFFFFFFFF99FFFFF
    FFDFFFFFDFFFFDFFFFFFFFFFF99FFFFFFFDFFFFFDFFFDFFFFFFFFFFFF999FFFF
    FFFDFFFFDFFDDFFFFFFFFFFFFF9FFFFFFFFDDFFFDFDFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 10
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 323
    Height = 139
    Align = alClient
    BevelOuter = bvSpace
    BorderStyle = bsSingle
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object Bevel1: TBevel
      Left = 116
      Top = 6
      Width = 3
      Height = 93
    end
    object Bevel2: TBevel
      Left = 6
      Top = 98
      Width = 307
      Height = 3
    end
    object RadioGroup1: TRadioGroup
      Left = 6
      Top = 6
      Width = 99
      Height = 62
      Caption = #25773#25918#39034#24207
      ItemIndex = 1
      Items.Strings = (
        #24448#21069#25773#25918
        #24448#21518#25773#25918)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object Panel2: TPanel
      Left = 6
      Top = 68
      Width = 99
      Height = 25
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 1
      object CheckBox1: TCheckBox
        Left = 6
        Top = 6
        Width = 75
        Height = 13
        Caption = #24490#29615#25773#25918
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox1Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 132
      Top = 6
      Width = 181
      Height = 87
      Caption = #22270#29255#33258#21160#26356#25442#26102#38388
      TabOrder = 2
      DesignSize = (
        181
        87)
      object Label1: TLabel
        Left = 135
        Top = 62
        Width = 30
        Height = 12
        Caption = #31186'(&S)'
      end
      object TrackBar1: TTrackBar
        Left = 12
        Top = 25
        Width = 161
        Height = 19
        Max = 600
        Min = 1
        Position = 2
        TabOrder = 0
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = TrackBar1Change
      end
      object Edit1: TEdit
        Left = 74
        Top = 58
        Width = 53
        Height = 17
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#26234#33021' ABC'
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '2'
        OnChange = Edit1Change
        OnKeyPress = Edit1KeyPress
      end
      object UpDown1: TUpDown
        Left = 62
        Top = 55
        Width = 12
        Height = 19
        Min = 1
        Max = 600
        Position = 2
        TabOrder = 2
        OnClick = UpDown1Click
      end
    end
    object Auto: TCheckBox
      Left = 12
      Top = 112
      Width = 69
      Height = 16
      Caption = #33258#21160#32553#25918
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = AutoClick
    end
    object OKBTN: TBitBtn
      Left = 147
      Top = 111
      Width = 44
      Height = 19
      Caption = #30830#23450
      TabOrder = 4
      OnClick = OKBTNClick
    end
    object CancelBTN: TBitBtn
      Left = 196
      Top = 111
      Width = 44
      Height = 19
      Caption = #21462#28040
      TabOrder = 5
      OnClick = CancelBTNClick
    end
    object SaveValueBTN: TBitBtn
      Left = 246
      Top = 111
      Width = 67
      Height = 19
      Caption = #23384#20026#40664#35748#20540
      TabOrder = 6
      OnClick = SaveValueBTNClick
    end
  end
end
