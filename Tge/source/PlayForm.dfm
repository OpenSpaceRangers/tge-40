object Form6: TForm6
  Left = 70
  Top = 1
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1048#1075#1088#1072
  ClientHeight = 692
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object SpeedButton1: TSpeedButton
    Left = 12
    Top = 662
    Width = 75
    Height = 27
    Hint = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1085#1072#1079#1072#1076
    Caption = '<'
    Flat = True
    OnClick = MakeUndoButtonClick
  end
  object SpeedButton2: TSpeedButton
    Left = 849
    Top = 662
    Width = 38
    Height = 27
    Hint = #1055#1088#1077#1088#1074#1072#1090#1100' '#1080#1075#1088#1091
    Caption = #1061
    Flat = True
    OnClick = CancelButtonClick
  end
  object Shape3: TShape
    Left = 12
    Top = 10
    Width = 634
    Height = 363
    Brush.Color = clBlack
  end
  object Shape2: TShape
    Left = 5
    Top = 4
    Width = 640
    Height = 368
    Brush.Color = clWindow
  end
  object ParLabel1: TLabel
    Left = 651
    Top = 6
    Width = 233
    Height = 363
    Alignment = taCenter
    AutoSize = False
    WordWrap = True
  end
  object ProgressLabel: TLabel
    Left = 128
    Top = 670
    Width = 89
    Height = 16
    Caption = 'ProgressLabel'
  end
  object CancelButton: TButton
    Left = 604
    Top = 662
    Width = 168
    Height = 30
    Caption = #1055#1088#1077#1082#1088#1072#1090#1080#1090#1100' '#1080#1075#1088#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    OnClick = CancelButtonClick
  end
  object MakeUndoButton: TButton
    Left = 420
    Top = 663
    Width = 179
    Height = 29
    Caption = #1064#1072#1075' '#1085#1072#1079#1072#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = MakeUndoButtonClick
  end
  object AnswersGroupBox: TGroupBox
    Left = 6
    Top = 374
    Width = 881
    Height = 276
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Shape4: TShape
      Left = 0
      Top = 6
      Width = 881
      Height = 270
    end
    object Label1: TLabel
      Left = 12
      Top = 12
      Width = 863
      Height = 16
      Cursor = crHandPoint
      AutoSize = False
      Transparent = True
      WordWrap = True
      OnClick = Label1Click
      OnMouseMove = Label1MouseMove
    end
    object Label2: TLabel
      Left = 12
      Top = 42
      Width = 863
      Height = 16
      Cursor = crHandPoint
      AutoSize = False
      Transparent = True
      WordWrap = True
      OnClick = Label2Click
      OnMouseMove = Label2MouseMove
    end
    object Label3: TLabel
      Left = 12
      Top = 71
      Width = 863
      Height = 16
      Cursor = crHandPoint
      AutoSize = False
      Transparent = True
      WordWrap = True
      OnClick = Label3Click
      OnMouseMove = Label3MouseMove
    end
    object Label5: TLabel
      Left = 12
      Top = 129
      Width = 863
      Height = 16
      Cursor = crHandPoint
      AutoSize = False
      Transparent = True
      WordWrap = True
      OnClick = Label5Click
      OnMouseMove = Label5MouseMove
    end
    object Label6: TLabel
      Left = 12
      Top = 159
      Width = 863
      Height = 16
      Cursor = crHandPoint
      AutoSize = False
      Transparent = True
      WordWrap = True
      OnClick = Label6Click
      OnMouseMove = Label6MouseMove
    end
    object Label7: TLabel
      Left = 12
      Top = 188
      Width = 863
      Height = 16
      Cursor = crHandPoint
      AutoSize = False
      Transparent = True
      WordWrap = True
      OnClick = Label7Click
      OnMouseMove = Label7MouseMove
    end
    object Label8: TLabel
      Left = 12
      Top = 218
      Width = 863
      Height = 16
      Cursor = crHandPoint
      AutoSize = False
      Transparent = True
      WordWrap = True
      OnClick = Label8Click
      OnMouseMove = Label8MouseMove
    end
    object Label4: TLabel
      Left = 12
      Top = 100
      Width = 863
      Height = 16
      Cursor = crHandPoint
      AutoSize = False
      Transparent = True
      WordWrap = True
      OnClick = Label4Click
      OnMouseMove = Label4MouseMove
    end
  end
  object SDTRichEdit: TRichEdit
    Left = 11
    Top = 10
    Width = 629
    Height = 356
    BorderStyle = bsNone
    HideScrollBars = False
    Lines.Strings = (
      ''
      #1083#1103'-'#1083#1103'-'#1083#1103)
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
    WantTabs = True
  end
  object Panel1: TPanel
    Left = 222
    Top = 298
    Width = 408
    Height = 103
    TabOrder = 4
    Visible = False
    object Label9: TLabel
      Left = 47
      Top = 39
      Width = 351
      Height = 16
      Caption = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1087#1086#1076#1086#1078#1076#1080#1090#1077'. '#1048#1076#1077#1090' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1076#1072#1085#1085#1099#1093'.'
    end
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 73
    ActionBars = <>
    LinkedActionLists = <>
    Left = 648
    Top = 536
    object RichEditBold1: TRichEditBold
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 31
      ShortCut = 16450
    end
  end
  object StartGameTimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = StartGameTimerTimer
    Left = 304
    Top = 536
  end
end
