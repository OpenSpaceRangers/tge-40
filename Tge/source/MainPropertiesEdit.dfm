object Form4: TForm4
  Left = 248
  Top = 83
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1082#1074#1077#1089#1090#1072
  ClientHeight = 451
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CancelButton: TButton
    Left = 642
    Top = 424
    Width = 105
    Height = 25
    Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = CancelButtonClick
  end
  object OkButton: TButton
    Left = 510
    Top = 424
    Width = 105
    Height = 25
    Hint = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100' '#1074#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    Caption = #1043#1086#1090#1086#1074#1086
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = OkButtonClick
  end
  object PageControl1: TPageControl
    Left = 3
    Top = 2
    Width = 744
    Height = 417
    ActivePage = TabSheet1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabIndex = 0
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #1043#1083#1072#1074#1085#1099#1077' '
      object Label1: TLabel
        Left = 5
        Top = 161
        Width = 315
        Height = 13
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099', '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077' '#1074' '#1090#1077#1082#1089#1090#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1080' '#1087#1086#1079#1076#1088#1072#1074#1083#1077#1085#1080#1103
      end
      object Label2: TLabel
        Left = 5
        Top = 175
        Width = 75
        Height = 13
        Caption = #1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077
      end
      object Label11: TLabel
        Left = 372
        Top = 175
        Width = 87
        Height = 13
        Caption = #1053#1077#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077
      end
      object Edit1: TEdit
        Left = 4
        Top = 188
        Width = 350
        Height = 15
        BorderStyle = bsNone
        ReadOnly = True
        TabOrder = 7
      end
      object Edit2: TEdit
        Left = 371
        Top = 188
        Width = 359
        Height = 15
        BorderStyle = bsNone
        ReadOnly = True
        TabOrder = 8
      end
      object PageControl2: TPageControl
        Left = 3
        Top = 212
        Width = 729
        Height = 177
        ActivePage = TabSheet8
        TabIndex = 0
        TabOrder = 9
        object TabSheet8: TTabSheet
          Caption = #1058#1077#1082#1089#1090' '#1079#1072#1076#1072#1085#1080#1103
          object Shape1: TShape
            Left = 6
            Top = 12
            Width = 713
            Height = 131
            Brush.Color = clBlack
          end
          object Shape2: TShape
            Left = 1
            Top = 3
            Width = 717
            Height = 139
          end
          object QuestDescriptionEdit: TMemo
            Left = 9
            Top = 8
            Width = 704
            Height = 129
            Hint = #1069#1090#1086#1090' '#1090#1077#1082#1089#1090' '#1089#1086#1076#1077#1088#1078#1080#1090' '#1079#1072#1076#1072#1085#1080#1077' '#1087#1088#1072#1074#1080#1090#1077#1083#1100#1089#1090#1074#1072
            BorderStyle = bsNone
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1058#1077#1082#1089#1090' '#1087#1086#1079#1076#1088#1072#1074#1083#1077#1085#1080#1103
          ImageIndex = 1
          object Shape3: TShape
            Left = 6
            Top = 12
            Width = 713
            Height = 131
            Brush.Color = clBlack
          end
          object Shape4: TShape
            Left = 1
            Top = 3
            Width = 717
            Height = 139
          end
          object QuestSuccessGovMessageEdit: TMemo
            Left = 9
            Top = 8
            Width = 704
            Height = 129
            Hint = #1069#1090#1086#1090' '#1090#1077#1082#1089#1090' '#1089#1086#1076#1077#1088#1078#1080#1090' '#1079#1072#1076#1072#1085#1080#1077' '#1087#1088#1072#1074#1080#1090#1077#1083#1100#1089#1090#1074#1072
            BorderStyle = bsNone
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
          end
        end
      end
      object PlanetReactionGroupBox: TGroupBox
        Left = 304
        Top = 56
        Width = 428
        Height = 57
        Caption = #1048' '#1082#1072#1082' '#1080#1079#1084#1077#1085#1080#1090#1089#1103' '#1086#1090#1085#1086#1096#1077#1085#1080#1077' '#1082' '#1080#1075#1088#1086#1082#1091' '#1087#1086#1089#1083#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1082#1074#1077#1089#1090#1072
        TabOrder = 4
        object PlanetReactionLabel1: TLabel
          Left = 390
          Top = 13
          Width = 29
          Height = 13
          Caption = '-100%'
        end
        object PlanetReactionLabel2: TLabel
          Left = 390
          Top = 37
          Width = 32
          Height = 13
          Caption = '+100%'
        end
        object PlanetReactionGauge: TGauge
          Left = 12
          Top = 19
          Width = 333
          Height = 17
          ForeColor = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Progress = 0
        end
        object PlanetReactionLabel3: TLabel
          Left = 13
          Top = 38
          Width = 331
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = #1054#1090#1085#1086#1096#1077#1085#1080#1077' '#1086#1089#1090#1072#1085#1077#1090#1089#1103' '#1085#1077#1080#1079#1084#1077#1085#1085#1099#1084
        end
        object PlanetReactionTrackBar: TTrackBar
          Left = 360
          Top = 7
          Width = 25
          Height = 48
          Max = 40
          Orientation = trVertical
          Frequency = 20
          Position = 20
          SelEnd = 0
          SelStart = 0
          TabOrder = 0
          TickMarks = tmBottomRight
          TickStyle = tsNone
          OnChange = PlanetReactionTrackBarChange
        end
      end
      object NeedToReturnGroupBox: TGroupBox
        Left = 3
        Top = 115
        Width = 422
        Height = 44
        Caption = #1050#1086#1075#1076#1072' '#1082#1074#1077#1089#1090' '#1089#1095#1080#1090#1072#1090#1100' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1084
        TabOrder = 5
        object NeedToReturnNoRadioButton: TRadioButton
          Left = 8
          Top = 18
          Width = 329
          Height = 17
          Caption = #1057#1088#1072#1079#1091' '#1087#1086#1089#1083#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
          TabOrder = 0
          OnClick = NeedToReturnNoRadioButtonClick
        end
        object NeedToReturnYesRadioButton: TRadioButton
          Left = 176
          Top = 18
          Width = 243
          Height = 17
          Caption = #1055#1086' '#1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1080' '#1085#1072' '#1087#1083#1072#1085#1077#1090#1091' '#1076#1072#1074#1096#1091#1102' '#1082#1074#1077#1089#1090
          TabOrder = 1
          OnClick = NeedToReturnYesRadioButtonClick
        end
      end
      object RaceGroupBox: TGroupBox
        Left = 3
        Top = -1
        Width = 215
        Height = 57
        Caption = #1056#1072#1089#1072', '#1076#1072#1102#1097#1072#1103' '#1082#1074#1077#1089#1090
        TabOrder = 0
        object RMaloc: TCheckBox
          Left = 9
          Top = 16
          Width = 64
          Height = 17
          Caption = #1052#1072#1083#1086#1082#1080
          TabOrder = 0
        end
        object RPeleng: TCheckBox
          Left = 9
          Top = 35
          Width = 64
          Height = 17
          Caption = #1055#1077#1083#1077#1085#1075#1080
          TabOrder = 1
        end
        object RPeople: TCheckBox
          Left = 81
          Top = 16
          Width = 56
          Height = 17
          Caption = #1051#1102#1076#1080
          TabOrder = 2
        end
        object RFei: TCheckBox
          Left = 81
          Top = 35
          Width = 49
          Height = 17
          Caption = #1060#1101#1081
          TabOrder = 3
        end
        object RGaal: TCheckBox
          Left = 140
          Top = 16
          Width = 65
          Height = 17
          Caption = #1043#1072#1072#1083#1100#1094#1099
          TabOrder = 4
        end
      end
      object TargetRaceGroupBox: TGroupBox
        Left = 3
        Top = 56
        Width = 298
        Height = 57
        Caption = #1053#1072' '#1095#1100#1077#1081' '#1087#1083#1072#1085#1077#1090#1077' '#1074#1099#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1082#1074#1077#1089#1090
        TabOrder = 3
        object TPeleng: TCheckBox
          Left = 126
          Top = 15
          Width = 64
          Height = 17
          Caption = #1055#1077#1083#1077#1085#1075#1080
          TabOrder = 2
        end
        object TMaloc: TCheckBox
          Left = 11
          Top = 35
          Width = 59
          Height = 17
          Caption = #1052#1072#1083#1086#1082#1080
          TabOrder = 1
        end
        object TPeople: TCheckBox
          Left = 126
          Top = 35
          Width = 53
          Height = 17
          Caption = #1051#1102#1076#1080
          TabOrder = 3
        end
        object TFei: TCheckBox
          Left = 215
          Top = 15
          Width = 57
          Height = 17
          Caption = #1060#1101#1103#1085#1077
          TabOrder = 4
        end
        object TGaal: TCheckBox
          Left = 215
          Top = 35
          Width = 73
          Height = 17
          Caption = #1043#1072#1072#1083#1100#1094#1099
          TabOrder = 5
        end
        object TNone: TCheckBox
          Left = 11
          Top = 15
          Width = 97
          Height = 17
          Caption = #1053#1077#1079#1072#1089#1077#1083#1077#1085#1085#1072#1103
          TabOrder = 0
        end
      end
      object RSGroupBox: TGroupBox
        Left = 222
        Top = -1
        Width = 217
        Height = 57
        Caption = #1057#1090#1072#1090#1091#1089' '#1080#1075#1088#1086#1082#1072
        TabOrder = 1
        object RSWarrior: TCheckBox
          Left = 113
          Top = 16
          Width = 81
          Height = 17
          Caption = #1042#1086#1080#1085
          TabOrder = 1
        end
        object RSTrader: TCheckBox
          Left = 9
          Top = 16
          Width = 71
          Height = 17
          Caption = #1058#1086#1088#1075#1086#1074#1077#1094
          TabOrder = 0
        end
        object RSPirate: TCheckBox
          Left = 9
          Top = 35
          Width = 80
          Height = 17
          Caption = #1055#1080#1088#1072#1090
          TabOrder = 2
        end
      end
      object RRGroupBox: TGroupBox
        Left = 443
        Top = 0
        Width = 289
        Height = 57
        Caption = #1056#1072#1089#1072' '#1080#1075#1088#1086#1082#1072
        TabOrder = 2
        object RRMaloc: TCheckBox
          Left = 9
          Top = 16
          Width = 64
          Height = 17
          Caption = #1052#1072#1083#1086#1082
          TabOrder = 0
        end
        object RRPeople: TCheckBox
          Left = 100
          Top = 16
          Width = 65
          Height = 17
          Caption = #1063#1077#1083#1086#1074#1077#1082
          TabOrder = 2
        end
        object RRGaal: TCheckBox
          Left = 192
          Top = 16
          Width = 65
          Height = 17
          Caption = #1043#1072#1083#1077#1094
          TabOrder = 4
        end
        object RRFei: TCheckBox
          Left = 100
          Top = 35
          Width = 64
          Height = 17
          Caption = #1060#1101#1103#1085#1080#1085
          TabOrder = 3
        end
        object RRPeleng: TCheckBox
          Left = 9
          Top = 35
          Width = 64
          Height = 17
          Caption = #1055#1077#1083#1077#1085#1075
          TabOrder = 1
        end
      end
      object QuestDifficultyGroupBox: TGroupBox
        Left = 428
        Top = 115
        Width = 304
        Height = 44
        Caption = #1057#1083#1086#1078#1085#1086#1089#1090#1100' '#1082#1074#1077#1089#1090#1072
        TabOrder = 6
        object QuestDifficultyGauge: TGauge
          Left = 8
          Top = 17
          Width = 226
          Height = 17
          ForeColor = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Progress = 0
        end
        object QuestDifficultyTrackBar: TTrackBar
          Tag = 5
          Left = 236
          Top = 14
          Width = 63
          Height = 23
          Max = 100
          Orientation = trHorizontal
          PageSize = 5
          Frequency = 1
          Position = 0
          SelEnd = 0
          SelStart = 0
          TabOrder = 0
          TickMarks = tmBottomRight
          TickStyle = tsNone
          OnChange = QuestDifficultyTrackBarChange
        end
      end
    end
    object TabSheet14: TTabSheet
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 5
      object ParCustomizePanel: TPanel
        Left = 323
        Top = 31
        Width = 412
        Height = 346
        TabOrder = 1
        object PageControl3: TPageControl
          Left = 0
          Top = 0
          Width = 412
          Height = 347
          ActivePage = TabSheet2
          TabIndex = 0
          TabOrder = 0
          OnChange = PageControl3Change
          object TabSheet2: TTabSheet
            Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
            object TrackBarLeftImage: TImage
              Left = 255
              Top = 162
              Width = 15
              Height = 18
              Picture.Data = {
                07544269746D617056050000424D560500000000000036040000280000000F00
                000012000000010008000000000020010000C40E0000C40E0000000100000000
                0000000000004000000080000000FF000000002000004020000080200000FF20
                0000004000004040000080400000FF400000006000004060000080600000FF60
                0000008000004080000080800000FF80000000A0000040A0000080A00000FFA0
                000000C0000040C0000080C00000FFC0000000FF000040FF000080FF0000FFFF
                0000000020004000200080002000FF002000002020004020200080202000FF20
                2000004020004040200080402000FF402000006020004060200080602000FF60
                2000008020004080200080802000FF80200000A0200040A0200080A02000FFA0
                200000C0200040C0200080C02000FFC0200000FF200040FF200080FF2000FFFF
                2000000040004000400080004000FF004000002040004020400080204000FF20
                4000004040004040400080404000FF404000006040004060400080604000FF60
                4000008040004080400080804000FF80400000A0400040A0400080A04000FFA0
                400000C0400040C0400080C04000FFC0400000FF400040FF400080FF4000FFFF
                4000000060004000600080006000FF006000002060004020600080206000FF20
                6000004060004040600080406000FF406000006060004060600080606000FF60
                6000008060004080600080806000FF80600000A0600040A0600080A06000FFA0
                600000C0600040C0600080C06000FFC0600000FF600040FF600080FF6000FFFF
                6000000080004000800080008000FF008000002080004020800080208000FF20
                8000004080004040800080408000FF408000006080004060800080608000FF60
                8000008080004080800080808000FF80800000A0800040A0800080A08000FFA0
                800000C0800040C0800080C08000FFC0800000FF800040FF800080FF8000FFFF
                80000000A0004000A0008000A000FF00A0000020A0004020A0008020A000FF20
                A0000040A0004040A0008040A000FF40A0000060A0004060A0008060A000FF60
                A0000080A0004080A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0
                A00000C0A00040C0A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFF
                A0000000C0004000C0008000C000FF00C0000020C0004020C0008020C000FF20
                C0000040C0004040C0008040C000FF40C0000060C0004060C0008060C000FF60
                C0000080C0004080C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0
                C00000C0C00040C0C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFF
                C0000000FF004000FF008000FF00FF00FF000020FF004020FF008020FF00FF20
                FF000040FF004040FF008040FF00FF40FF000060FF004060FF008060FF00FF60
                FF000080FF004080FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0
                FF0000C0FF0040C0FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFF
                FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
                FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00FFFFFF
                FF0000FFFFFFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFFFFFFFF00FF00FFFFFF
                FF0000FFFFFFFFFFFF00FFFF00FFFFFFFF0000FFFFFFFFFF00FFFFFF00FFFFFF
                FF0000FFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFFFF00FFFFFFFFFF00FFFFFF
                FF0000FFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFFFFFFFF00FFFFFF00FFFFFF
                FF0000FFFFFFFFFFFF00FFFF00FFFFFFFF0000FFFFFFFFFFFFFF00FF00FFFFFF
                FF0000FFFFFFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFFFFFFFFFFFF00FFFFFF
                FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
                0000}
              Visible = False
              OnMouseDown = TrackBarLeftImageMouseDown
              OnMouseUp = TrackBarLeftImageMouseUp
            end
            object TrackBarRightImage: TImage
              Left = 391
              Top = 162
              Width = 15
              Height = 18
              Picture.Data = {
                07544269746D617056050000424D560500000000000036040000280000000F00
                000012000000010008000000000020010000C40E0000C40E0000000100000000
                0000000000004000000080000000FF000000002000004020000080200000FF20
                0000004000004040000080400000FF400000006000004060000080600000FF60
                0000008000004080000080800000FF80000000A0000040A0000080A00000FFA0
                000000C0000040C0000080C00000FFC0000000FF000040FF000080FF0000FFFF
                0000000020004000200080002000FF002000002020004020200080202000FF20
                2000004020004040200080402000FF402000006020004060200080602000FF60
                2000008020004080200080802000FF80200000A0200040A0200080A02000FFA0
                200000C0200040C0200080C02000FFC0200000FF200040FF200080FF2000FFFF
                2000000040004000400080004000FF004000002040004020400080204000FF20
                4000004040004040400080404000FF404000006040004060400080604000FF60
                4000008040004080400080804000FF80400000A0400040A0400080A04000FFA0
                400000C0400040C0400080C04000FFC0400000FF400040FF400080FF4000FFFF
                4000000060004000600080006000FF006000002060004020600080206000FF20
                6000004060004040600080406000FF406000006060004060600080606000FF60
                6000008060004080600080806000FF80600000A0600040A0600080A06000FFA0
                600000C0600040C0600080C06000FFC0600000FF600040FF600080FF6000FFFF
                6000000080004000800080008000FF008000002080004020800080208000FF20
                8000004080004040800080408000FF408000006080004060800080608000FF60
                8000008080004080800080808000FF80800000A0800040A0800080A08000FFA0
                800000C0800040C0800080C08000FFC0800000FF800040FF800080FF8000FFFF
                80000000A0004000A0008000A000FF00A0000020A0004020A0008020A000FF20
                A0000040A0004040A0008040A000FF40A0000060A0004060A0008060A000FF60
                A0000080A0004080A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0
                A00000C0A00040C0A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFF
                A0000000C0004000C0008000C000FF00C0000020C0004020C0008020C000FF20
                C0000040C0004040C0008040C000FF40C0000060C0004060C0008060C000FF60
                C0000080C0004080C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0
                C00000C0C00040C0C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFF
                C0000000FF004000FF008000FF00FF00FF000020FF004020FF008020FF00FF20
                FF000040FF004040FF008040FF00FF40FF000060FF004060FF008060FF00FF60
                FF000080FF004080FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0
                FF0000C0FF0040C0FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFF
                FF0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFF00FFFFFFFFFFFFFFFFFF
                0000FFFFFFFF0000FFFFFFFFFFFFFFFF0000FFFFFFFF00FF00FFFFFFFFFFFFFF
                0000FFFFFFFF00FFFF00FFFFFFFFFFFF0000FFFFFFFF00FFFFFF00FFFFFFFFFF
                0000FFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFFFFFF00FFFFFFFFFF00FFFFFF
                0000FFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFFFFFF00FFFFFF00FFFFFFFFFF
                0000FFFFFFFF00FFFF00FFFFFFFFFFFF0000FFFFFFFF00FF00FFFFFFFFFFFFFF
                0000FFFFFFFF0000FFFFFFFFFFFFFFFF0000FFFFFFFF00FFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
                0000}
              Visible = False
              OnMouseDown = TrackBarRightImageMouseDown
              OnMouseUp = TrackBarRightImageMouseUp
            end
            object Shape6: TShape
              Left = 6
              Top = 193
              Width = 396
              Height = 100
              Brush.Color = clBlack
            end
            object Shape5: TShape
              Left = 1
              Top = 187
              Width = 401
              Height = 106
            end
            object ParValueLabel: TLabel
              Left = 289
              Top = 184
              Width = 85
              Height = 11
              Alignment = taCenter
              AutoSize = False
              Caption = '0'
              Visible = False
            end
            object Label20: TLabel
              Left = 4
              Top = 19
              Width = 93
              Height = 13
              Caption = #1056#1072#1073#1086#1095#1077#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
            end
            object TrackBarGroundShape: TShape
              Left = 270
              Top = 162
              Width = 121
              Height = 18
              Visible = False
              OnMouseDown = TrackBarGroundShapeMouseDown
              OnMouseMove = TrackBarGroundShapeMouseMove
            end
            object TrackBarButtonShape: TShape
              Left = 325
              Top = 162
              Width = 2
              Height = 18
              Brush.Color = clInfoBk
              Visible = False
            end
            object RadioGroup1: TRadioGroup
              Left = 4
              Top = 43
              Width = 253
              Height = 57
              Caption = #1058#1080#1087
              Columns = 2
              Items.Strings = (
                #1054#1073#1099#1095#1085#1099#1081
                #1055#1088#1086#1074#1072#1083#1100#1085#1099#1081
                #1059#1089#1087#1077#1096#1085#1099#1081
                #1057#1084#1077#1088#1090#1077#1083#1100#1085#1099#1081)
              TabOrder = 1
              OnClick = RadioGroup1Click
            end
            object ParViewActionRG: TRadioGroup
              Left = 80
              Top = 203
              Width = 136
              Height = 63
              Caption = #1042#1080#1076
              ItemIndex = 0
              Items.Strings = (
                #1042#1080#1076#1080#1084#1099#1081' '
                #1057#1082#1088#1099#1090#1099#1081)
              TabOrder = 7
              Visible = False
              OnClick = ParViewActionRGClick
            end
            object ParDeltaTrackBar: TTrackBar
              Left = 246
              Top = 138
              Width = 154
              Height = 24
              Max = 100
              Min = -100
              Orientation = trHorizontal
              PageSize = 1
              Frequency = 1
              Position = 0
              SelEnd = 0
              SelStart = 0
              TabOrder = 8
              TickMarks = tmBottomRight
              TickStyle = tsNone
              Visible = False
              OnChange = ParDeltaTrackBarChange
            end
            object ParNameEdit: TEdit
              Left = 111
              Top = 16
              Width = 273
              Height = 21
              TabOrder = 0
              Text = 'ParNameEdit'
              OnChange = ParNameEditChange
            end
            object RadioGroup2: TRadioGroup
              Left = 262
              Top = 105
              Width = 140
              Height = 75
              Caption = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1084' '#1103#1074#1083#1103#1077#1090#1089#1103
              Items.Strings = (
                #1052#1080#1085#1080#1084#1091#1084
                #1052#1072#1082#1089#1080#1084#1091#1084)
              TabOrder = 4
              OnClick = RadioGroup2Click
            end
            object ShowIfZeroRadioGroup: TRadioGroup
              Left = 262
              Top = 43
              Width = 140
              Height = 57
              Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1088#1080' '#1085#1091#1083#1077
              Items.Strings = (
                #1044#1072
                #1053#1077#1090)
              TabOrder = 2
              OnClick = ShowIfZeroRadioGroupClick
            end
            object ParCriticalMessageMemo: TMemo
              Left = 5
              Top = 192
              Width = 394
              Height = 99
              BorderStyle = bsNone
              ScrollBars = ssVertical
              TabOrder = 5
              OnChange = ParCriticalMessageMemoChange
            end
            object IsPlayerMoneyParCheckBox: TCheckBox
              Left = 2
              Top = 299
              Width = 163
              Height = 17
              Caption = #1071#1074#1083#1103#1077#1090#1089#1103' '#1076#1077#1085#1100#1075#1072#1084#1080' '#1080#1075#1088#1086#1082#1072
              TabOrder = 6
              OnClick = IsPlayerMoneyParCheckBoxClick
            end
            object GroupBox4: TGroupBox
              Left = 4
              Top = 105
              Width = 253
              Height = 75
              Caption = #1057#1090#1072#1088#1090#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103':'
              TabOrder = 3
              object Label4: TLabel
                Left = 39
                Top = 58
                Width = 16
                Height = 13
                Caption = 'min'
              end
              object Label5: TLabel
                Left = 197
                Top = 58
                Width = 19
                Height = 13
                Caption = 'max'
              end
              object Shape7: TShape
                Left = 7
                Top = 16
                Width = 239
                Height = 19
              end
              object Shape8: TShape
                Left = 7
                Top = 39
                Width = 81
                Height = 19
              end
              object Shape9: TShape
                Left = 165
                Top = 39
                Width = 81
                Height = 19
              end
              object MinGateEdit: TEdit
                Left = 11
                Top = 40
                Width = 73
                Height = 15
                AutoSize = False
                BorderStyle = bsNone
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = '0'
                OnChange = MinGateEditChange
              end
              object MaxGateEdit: TEdit
                Left = 169
                Top = 40
                Width = 74
                Height = 15
                AutoSize = False
                BorderStyle = bsNone
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                Text = '0'
                OnChange = MaxGateEditChange
              end
              object AltStartValuesEdit: TEdit
                Left = 11
                Top = 17
                Width = 231
                Height = 15
                BorderStyle = bsNone
                TabOrder = 2
                OnChange = AltStartValuesEditChange
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = #1060#1086#1088#1084#1072#1090' '#1074#1099#1074#1086#1076#1072' '#1087#1088#1080' '#1080#1075#1088#1077' ('#1087#1086' '#1076#1080#1072#1087#1072#1079#1086#1085#1072#1084')'
            ImageIndex = 1
            object VFValTrackBarLeftImage: TImage
              Left = 170
              Top = 13
              Width = 15
              Height = 18
              Picture.Data = {
                07544269746D617056050000424D560500000000000036040000280000000F00
                000012000000010008000000000020010000C40E0000C40E0000000100000000
                0000000000004000000080000000FF000000002000004020000080200000FF20
                0000004000004040000080400000FF400000006000004060000080600000FF60
                0000008000004080000080800000FF80000000A0000040A0000080A00000FFA0
                000000C0000040C0000080C00000FFC0000000FF000040FF000080FF0000FFFF
                0000000020004000200080002000FF002000002020004020200080202000FF20
                2000004020004040200080402000FF402000006020004060200080602000FF60
                2000008020004080200080802000FF80200000A0200040A0200080A02000FFA0
                200000C0200040C0200080C02000FFC0200000FF200040FF200080FF2000FFFF
                2000000040004000400080004000FF004000002040004020400080204000FF20
                4000004040004040400080404000FF404000006040004060400080604000FF60
                4000008040004080400080804000FF80400000A0400040A0400080A04000FFA0
                400000C0400040C0400080C04000FFC0400000FF400040FF400080FF4000FFFF
                4000000060004000600080006000FF006000002060004020600080206000FF20
                6000004060004040600080406000FF406000006060004060600080606000FF60
                6000008060004080600080806000FF80600000A0600040A0600080A06000FFA0
                600000C0600040C0600080C06000FFC0600000FF600040FF600080FF6000FFFF
                6000000080004000800080008000FF008000002080004020800080208000FF20
                8000004080004040800080408000FF408000006080004060800080608000FF60
                8000008080004080800080808000FF80800000A0800040A0800080A08000FFA0
                800000C0800040C0800080C08000FFC0800000FF800040FF800080FF8000FFFF
                80000000A0004000A0008000A000FF00A0000020A0004020A0008020A000FF20
                A0000040A0004040A0008040A000FF40A0000060A0004060A0008060A000FF60
                A0000080A0004080A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0
                A00000C0A00040C0A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFF
                A0000000C0004000C0008000C000FF00C0000020C0004020C0008020C000FF20
                C0000040C0004040C0008040C000FF40C0000060C0004060C0008060C000FF60
                C0000080C0004080C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0
                C00000C0C00040C0C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFF
                C0000000FF004000FF008000FF00FF00FF000020FF004020FF008020FF00FF20
                FF000040FF004040FF008040FF00FF40FF000060FF004060FF008060FF00FF60
                FF000080FF004080FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0
                FF0000C0FF0040C0FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFF
                FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
                FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00FFFFFF
                FF0000FFFFFFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFFFFFFFF00FF00FFFFFF
                FF0000FFFFFFFFFFFF00FFFF00FFFFFFFF0000FFFFFFFFFF00FFFFFF00FFFFFF
                FF0000FFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFFFF00FFFFFFFFFF00FFFFFF
                FF0000FFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFFFFFFFF00FFFFFF00FFFFFF
                FF0000FFFFFFFFFFFF00FFFF00FFFFFFFF0000FFFFFFFFFFFFFF00FF00FFFFFF
                FF0000FFFFFFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFFFFFFFFFFFF00FFFFFF
                FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
                0000}
              OnMouseDown = VFValTrackBarLeftImageMouseDown
              OnMouseUp = VFValTrackBarLeftImageMouseUp
            end
            object VFValTrackBarRightImage: TImage
              Left = 339
              Top = 13
              Width = 15
              Height = 18
              Picture.Data = {
                07544269746D617056050000424D560500000000000036040000280000000F00
                000012000000010008000000000020010000C40E0000C40E0000000100000000
                0000000000004000000080000000FF000000002000004020000080200000FF20
                0000004000004040000080400000FF400000006000004060000080600000FF60
                0000008000004080000080800000FF80000000A0000040A0000080A00000FFA0
                000000C0000040C0000080C00000FFC0000000FF000040FF000080FF0000FFFF
                0000000020004000200080002000FF002000002020004020200080202000FF20
                2000004020004040200080402000FF402000006020004060200080602000FF60
                2000008020004080200080802000FF80200000A0200040A0200080A02000FFA0
                200000C0200040C0200080C02000FFC0200000FF200040FF200080FF2000FFFF
                2000000040004000400080004000FF004000002040004020400080204000FF20
                4000004040004040400080404000FF404000006040004060400080604000FF60
                4000008040004080400080804000FF80400000A0400040A0400080A04000FFA0
                400000C0400040C0400080C04000FFC0400000FF400040FF400080FF4000FFFF
                4000000060004000600080006000FF006000002060004020600080206000FF20
                6000004060004040600080406000FF406000006060004060600080606000FF60
                6000008060004080600080806000FF80600000A0600040A0600080A06000FFA0
                600000C0600040C0600080C06000FFC0600000FF600040FF600080FF6000FFFF
                6000000080004000800080008000FF008000002080004020800080208000FF20
                8000004080004040800080408000FF408000006080004060800080608000FF60
                8000008080004080800080808000FF80800000A0800040A0800080A08000FFA0
                800000C0800040C0800080C08000FFC0800000FF800040FF800080FF8000FFFF
                80000000A0004000A0008000A000FF00A0000020A0004020A0008020A000FF20
                A0000040A0004040A0008040A000FF40A0000060A0004060A0008060A000FF60
                A0000080A0004080A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0
                A00000C0A00040C0A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFF
                A0000000C0004000C0008000C000FF00C0000020C0004020C0008020C000FF20
                C0000040C0004040C0008040C000FF40C0000060C0004060C0008060C000FF60
                C0000080C0004080C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0
                C00000C0C00040C0C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFF
                C0000000FF004000FF008000FF00FF00FF000020FF004020FF008020FF00FF20
                FF000040FF004040FF008040FF00FF40FF000060FF004060FF008060FF00FF60
                FF000080FF004080FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0
                FF0000C0FF0040C0FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFF
                FF0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFF00FFFFFFFFFFFFFFFFFF
                0000FFFFFFFF0000FFFFFFFFFFFFFFFF0000FFFFFFFF00FF00FFFFFFFFFFFFFF
                0000FFFFFFFF00FFFF00FFFFFFFFFFFF0000FFFFFFFF00FFFFFF00FFFFFFFFFF
                0000FFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFFFFFF00FFFFFFFFFF00FFFFFF
                0000FFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFFFFFF00FFFFFF00FFFFFFFFFF
                0000FFFFFFFF00FFFF00FFFFFFFFFFFF0000FFFFFFFF00FF00FFFFFFFFFFFFFF
                0000FFFFFFFF0000FFFFFFFFFFFFFFFF0000FFFFFFFF00FFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
                0000}
              OnMouseDown = VFValTrackBarRightImageMouseDown
              OnMouseUp = VFValTrackBarRightImageMouseUp
            end
            object Label3: TLabel
              Left = 30
              Top = 63
              Width = 14
              Height = 13
              Caption = #1086#1090':'
            end
            object Label6: TLabel
              Left = 102
              Top = 63
              Width = 15
              Height = 13
              Caption = #1076#1086':'
            end
            object Label9: TLabel
              Left = 11
              Top = 12
              Width = 125
              Height = 13
              Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1076#1080#1072#1087#1072#1079#1086#1085#1086#1074':'
            end
            object Label10: TLabel
              Left = 174
              Top = 32
              Width = 6
              Height = 13
              Caption = '1'
            end
            object Label12: TLabel
              Left = 341
              Top = 32
              Width = 12
              Height = 13
              Alignment = taCenter
              Caption = '10'
            end
            object ParVolVFStringsLabel: TLabel
              Left = 244
              Top = 32
              Width = 38
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = '5'
            end
            object Label8: TLabel
              Left = 47
              Top = 51
              Width = 51
              Height = 13
              Caption = #1044#1080#1072#1087#1072#1079#1086#1085
            end
            object Label7: TLabel
              Left = 141
              Top = 51
              Width = 261
              Height = 13
              Caption = #1057#1090#1088#1086#1082#1072' '#1074#1099#1074#1086#1076#1072' '#1074' '#1080#1075#1088#1077', '#1075#1076#1077' <> '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072':'
            end
            object VFValTrackBarGroundShape: TShape
              Left = 185
              Top = 13
              Width = 154
              Height = 18
              OnMouseDown = VFValTrackBarGroundShapeMouseDown
              OnMouseMove = VFValTrackBarGroundShapeMouseMove
            end
            object VFValTrackBarButtonShape: TShape
              Left = 262
              Top = 13
              Width = 2
              Height = 18
              Brush.Color = clInfoBk
            end
            object ParVolVFStringsTrackBar: TTrackBar
              Left = -105
              Top = 25
              Width = 244
              Height = 20
              Min = 1
              Orientation = trHorizontal
              PageSize = 1
              Frequency = 1
              Position = 1
              SelEnd = 0
              SelStart = 0
              TabOrder = 30
              TickMarks = tmBottomRight
              TickStyle = tsAuto
              Visible = False
              OnChange = ParVolVFStringsTrackBarChange
            end
            object VFGateMin1Edit: TEdit
              Left = 2
              Top = 77
              Width = 69
              Height = 21
              TabOrder = 29
              Text = 'VFGateMin1Edit'
            end
            object VFGateMax1Edit: TEdit
              Left = 74
              Top = 77
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 0
              Text = 'VFGateMax1Edit'
              OnClick = VFGateMax1EditClick
            end
            object VF1Edit: TEdit
              Left = 149
              Top = 77
              Width = 252
              Height = 21
              TabOrder = 1
              Text = 'VF1Edit'
              OnChange = VF1EditChange
            end
            object VFGateMin2Edit: TEdit
              Left = 2
              Top = 101
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 2
              Text = 'Edit3'
              OnClick = VFGateMin2EditClick
            end
            object VFGateMax2Edit: TEdit
              Left = 74
              Top = 101
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 3
              Text = 'Edit4'
              OnClick = VFGateMax2EditClick
            end
            object VF2Edit: TEdit
              Left = 149
              Top = 101
              Width = 252
              Height = 21
              TabOrder = 4
              Text = 'Edit5'
              OnChange = VF2EditChange
            end
            object VFGateMin3Edit: TEdit
              Left = 2
              Top = 125
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 5
              Text = 'Edit3'
              OnClick = VFGateMin3EditClick
            end
            object VFGateMax3Edit: TEdit
              Left = 74
              Top = 125
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 6
              Text = 'Edit4'
              OnClick = VFGateMax3EditClick
            end
            object VF3Edit: TEdit
              Left = 149
              Top = 125
              Width = 252
              Height = 21
              TabOrder = 7
              Text = 'Edit5'
              OnChange = VF3EditChange
            end
            object VFGateMin4Edit: TEdit
              Left = 2
              Top = 149
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 8
              Text = 'Edit3'
              OnClick = VFGateMin4EditClick
            end
            object VFGateMax4Edit: TEdit
              Left = 74
              Top = 149
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 9
              Text = 'Edit4'
              OnClick = VFGateMax4EditClick
            end
            object VF4Edit: TEdit
              Left = 149
              Top = 149
              Width = 252
              Height = 21
              TabOrder = 10
              Text = 'Edit5'
              OnChange = VF4EditChange
            end
            object VFGateMin8Edit: TEdit
              Left = 2
              Top = 245
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 20
              Text = 'Edit3'
              OnClick = VFGateMin8EditClick
            end
            object VFGateMin7Edit: TEdit
              Left = 2
              Top = 221
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 17
              Text = 'Edit3'
              OnClick = VFGateMin7EditClick
            end
            object VFGateMin6Edit: TEdit
              Left = 2
              Top = 197
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 14
              Text = 'Edit3'
              OnClick = VFGateMin6EditClick
            end
            object VFGateMin5Edit: TEdit
              Left = 2
              Top = 173
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 11
              Text = 'Edit3'
              OnClick = VFGateMin5EditClick
            end
            object VFGateMax8Edit: TEdit
              Left = 74
              Top = 245
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 21
              Text = 'Edit4'
              OnClick = VFGateMax8EditClick
            end
            object VFGateMax7Edit: TEdit
              Left = 74
              Top = 221
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 18
              Text = 'Edit4'
              OnClick = VFGateMax7EditClick
            end
            object VFGateMax6Edit: TEdit
              Left = 74
              Top = 197
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 15
              Text = 'Edit4'
              OnClick = VFGateMax6EditClick
            end
            object VFGateMax5Edit: TEdit
              Left = 74
              Top = 173
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 12
              Text = 'Edit4'
              OnClick = VFGateMax5EditClick
            end
            object VF5Edit: TEdit
              Left = 149
              Top = 173
              Width = 252
              Height = 21
              TabOrder = 13
              Text = 'Edit5'
              OnChange = VF5EditChange
            end
            object VF6Edit: TEdit
              Left = 149
              Top = 197
              Width = 252
              Height = 21
              TabOrder = 16
              Text = 'Edit5'
              OnChange = VF6EditChange
            end
            object VF7Edit: TEdit
              Left = 149
              Top = 221
              Width = 252
              Height = 21
              TabOrder = 19
              Text = 'Edit5'
              OnChange = VF7EditChange
            end
            object VF8Edit: TEdit
              Left = 149
              Top = 245
              Width = 252
              Height = 21
              TabOrder = 22
              Text = 'Edit5'
              OnChange = VF8EditChange
            end
            object VFGateMin10Edit: TEdit
              Left = 2
              Top = 293
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 26
              Text = 'Edit3'
              OnClick = VFGateMin10EditClick
            end
            object VFGateMin9Edit: TEdit
              Left = 2
              Top = 269
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 23
              Text = 'Edit3'
              OnClick = VFGateMin9EditClick
            end
            object VFGateMax9Edit: TEdit
              Left = 74
              Top = 269
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 24
              Text = 'Edit4'
              OnClick = VFGateMax9EditClick
            end
            object VFGateMax10Edit: TEdit
              Left = 74
              Top = 293
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 27
              Text = 'Edit4'
            end
            object VF10Edit: TEdit
              Left = 149
              Top = 293
              Width = 252
              Height = 21
              TabOrder = 28
              Text = 'Edit5'
              OnChange = VF10EditChange
            end
            object VF9Edit: TEdit
              Left = 149
              Top = 269
              Width = 252
              Height = 21
              TabOrder = 25
              Text = 'Edit5'
              OnChange = VF9EditChange
            end
          end
        end
      end
      object ParSelectPanel: TPanel
        Left = 1
        Top = 31
        Width = 317
        Height = 330
        TabOrder = 0
        object ParBevel3: TBevel
          Left = 7
          Top = 69
          Width = 271
          Height = 18
        end
        object ParBevel1: TBevel
          Left = 7
          Top = 29
          Width = 271
          Height = 18
        end
        object ParBevel2: TBevel
          Left = 7
          Top = 49
          Width = 271
          Height = 18
        end
        object ParBevel9: TBevel
          Left = 7
          Top = 189
          Width = 271
          Height = 18
        end
        object ParBevel4: TBevel
          Left = 7
          Top = 89
          Width = 271
          Height = 18
        end
        object ParBevel5: TBevel
          Left = 7
          Top = 109
          Width = 271
          Height = 18
        end
        object ParBevel6: TBevel
          Left = 7
          Top = 129
          Width = 271
          Height = 18
        end
        object ParBevel7: TBevel
          Left = 7
          Top = 149
          Width = 271
          Height = 18
        end
        object ParBevel8: TBevel
          Left = 7
          Top = 169
          Width = 271
          Height = 18
        end
        object Label13: TLabel
          Left = 8
          Top = 8
          Width = 105
          Height = 13
          Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1072#1088#1072#1084#1077#1090#1088':'
        end
        object ParBevel12: TBevel
          Left = 7
          Top = 249
          Width = 271
          Height = 18
        end
        object ParBevel10: TBevel
          Left = 7
          Top = 209
          Width = 271
          Height = 18
        end
        object ParBevel11: TBevel
          Left = 7
          Top = 229
          Width = 271
          Height = 18
        end
        object Bevel1: TBevel
          Left = 7
          Top = 69
          Width = 271
          Height = 18
        end
        object Bevel2: TBevel
          Left = 7
          Top = 29
          Width = 271
          Height = 18
        end
        object Bevel3: TBevel
          Left = 7
          Top = 49
          Width = 271
          Height = 18
        end
        object Bevel4: TBevel
          Left = 7
          Top = 189
          Width = 271
          Height = 18
        end
        object Bevel5: TBevel
          Left = 7
          Top = 89
          Width = 271
          Height = 18
        end
        object Bevel6: TBevel
          Left = 7
          Top = 109
          Width = 271
          Height = 18
        end
        object Bevel7: TBevel
          Left = 7
          Top = 129
          Width = 271
          Height = 18
        end
        object Bevel8: TBevel
          Left = 7
          Top = 149
          Width = 271
          Height = 18
        end
        object Bevel9: TBevel
          Left = 7
          Top = 169
          Width = 271
          Height = 18
        end
        object Bevel10: TBevel
          Left = 7
          Top = 249
          Width = 271
          Height = 18
        end
        object Bevel11: TBevel
          Left = 7
          Top = 209
          Width = 271
          Height = 18
        end
        object Bevel12: TBevel
          Left = 7
          Top = 229
          Width = 271
          Height = 18
        end
        object CL1: TLabel
          Left = 284
          Top = 32
          Width = 19
          Height = 13
          Caption = 'CL1'
        end
        object CL4: TLabel
          Left = 285
          Top = 92
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL3: TLabel
          Left = 285
          Top = 73
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL2: TLabel
          Left = 285
          Top = 53
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL5: TLabel
          Left = 285
          Top = 112
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL6: TLabel
          Left = 285
          Top = 133
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL7: TLabel
          Left = 285
          Top = 153
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL8: TLabel
          Left = 285
          Top = 172
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL9: TLabel
          Left = 285
          Top = 192
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL10: TLabel
          Left = 285
          Top = 213
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL11: TLabel
          Left = 285
          Top = 233
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object CL12: TLabel
          Left = 285
          Top = 252
          Width = 29
          Height = 13
          Caption = 'parlab'
        end
        object ParRadioButton1: TRadioButton
          Left = 34
          Top = 32
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 1
          OnClick = ParRadioButton1Click
          OnMouseUp = ParRadioButton1MouseUp
        end
        object ParRadioButton3: TRadioButton
          Left = 34
          Top = 72
          Width = 240
          Height = 13
          Caption = #1043#1088#1072#1085#1072#1090#1099
          TabOrder = 5
          OnClick = ParRadioButton3Click
          OnMouseUp = ParRadioButton3MouseUp
        end
        object ParRadioButton2: TRadioButton
          Left = 34
          Top = 52
          Width = 240
          Height = 13
          Caption = #1051#1086#1087#1072#1090#1082#1072
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = ParRadioButton2Click
          OnMouseUp = ParRadioButton2MouseUp
        end
        object ParRadioButton4: TRadioButton
          Left = 34
          Top = 91
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 7
          OnClick = ParRadioButton4Click
          OnMouseUp = ParRadioButton4MouseUp
        end
        object ParRadioButton5: TRadioButton
          Left = 34
          Top = 111
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 9
          OnClick = ParRadioButton5Click
          OnMouseUp = ParRadioButton5MouseUp
        end
        object ParRadioButton6: TRadioButton
          Left = 34
          Top = 131
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 11
          OnClick = ParRadioButton6Click
          OnMouseUp = ParRadioButton6MouseUp
        end
        object ParRadioButton7: TRadioButton
          Left = 34
          Top = 152
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 13
          OnClick = ParRadioButton7Click
          OnMouseUp = ParRadioButton7MouseUp
        end
        object ParRadioButton8: TRadioButton
          Left = 34
          Top = 171
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 15
          OnClick = ParRadioButton8Click
          OnMouseUp = ParRadioButton8MouseUp
        end
        object ParRadioButton9: TRadioButton
          Left = 34
          Top = 191
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 17
          OnClick = ParRadioButton9Click
          OnMouseUp = ParRadioButton9MouseUp
        end
        object ParEnabledCB1: TCheckBox
          Left = 10
          Top = 31
          Width = 18
          Height = 15
          TabOrder = 0
          OnClick = ParEnabledCB1Click
        end
        object ParEnabledCB2: TCheckBox
          Left = 10
          Top = 51
          Width = 18
          Height = 16
          Caption = 'ParEnabledCB2'
          TabOrder = 2
          OnClick = ParEnabledCB2Click
        end
        object ParEnabledCB3: TCheckBox
          Left = 10
          Top = 71
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB3'
          TabOrder = 4
          OnClick = ParEnabledCB3Click
        end
        object ParEnabledCB4: TCheckBox
          Left = 10
          Top = 91
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB4'
          TabOrder = 6
          OnClick = ParEnabledCB4Click
        end
        object ParEnabledCB5: TCheckBox
          Left = 10
          Top = 111
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB5'
          TabOrder = 8
          OnClick = ParEnabledCB5Click
        end
        object ParEnabledCB6: TCheckBox
          Left = 10
          Top = 131
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB6'
          TabOrder = 10
          OnClick = ParEnabledCB6Click
        end
        object ParEnabledCB9: TCheckBox
          Left = 10
          Top = 191
          Width = 18
          Height = 15
          Caption = 'CheckBox6'
          TabOrder = 16
          OnClick = ParEnabledCB9Click
        end
        object ParEnabledCB8: TCheckBox
          Left = 10
          Top = 171
          Width = 18
          Height = 15
          Caption = 'CheckBox5'
          TabOrder = 14
          OnClick = ParEnabledCB8Click
        end
        object ParEnabledCB7: TCheckBox
          Left = 10
          Top = 151
          Width = 18
          Height = 15
          Caption = 'CheckBox4'
          TabOrder = 12
          OnClick = ParEnabledCB7Click
        end
        object ParRadioButton10: TRadioButton
          Left = 34
          Top = 212
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 19
          OnClick = ParRadioButton10Click
          OnMouseUp = ParRadioButton10MouseUp
        end
        object ParRadioButton11: TRadioButton
          Left = 34
          Top = 231
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 21
          OnClick = ParRadioButton11Click
          OnMouseUp = ParRadioButton11MouseUp
        end
        object ParRadioButton12: TRadioButton
          Left = 34
          Top = 251
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 23
          OnClick = ParRadioButton12Click
          OnMouseUp = ParRadioButton12MouseUp
        end
        object ParEnabledCB12: TCheckBox
          Left = 10
          Top = 251
          Width = 18
          Height = 15
          Caption = 'CheckBox6'
          TabOrder = 22
          OnClick = ParEnabledCB12Click
        end
        object ParEnabledCB11: TCheckBox
          Left = 10
          Top = 231
          Width = 18
          Height = 15
          Caption = 'CheckBox5'
          TabOrder = 20
          OnClick = ParEnabledCB11Click
        end
        object ParEnabledCB10: TCheckBox
          Left = 10
          Top = 211
          Width = 18
          Height = 15
          Caption = 'CheckBox4'
          TabOrder = 18
          OnClick = ParEnabledCB10Click
        end
        object ParRadioButton13: TRadioButton
          Left = 34
          Top = 32
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 25
          OnClick = ParRadioButton13Click
          OnMouseUp = ParRadioButton13MouseUp
        end
        object ParRadioButton15: TRadioButton
          Left = 34
          Top = 72
          Width = 240
          Height = 13
          Caption = #1043#1088#1072#1085#1072#1090#1099
          TabOrder = 29
          OnClick = ParRadioButton15Click
          OnMouseUp = ParRadioButton15MouseUp
        end
        object ParRadioButton14: TRadioButton
          Left = 34
          Top = 52
          Width = 240
          Height = 13
          Caption = #1051#1086#1087#1072#1090#1082#1072
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
          OnClick = ParRadioButton14Click
          OnMouseUp = ParRadioButton14MouseUp
        end
        object ParRadioButton16: TRadioButton
          Left = 34
          Top = 91
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 31
          OnClick = ParRadioButton16Click
          OnMouseUp = ParRadioButton16MouseUp
        end
        object ParRadioButton17: TRadioButton
          Left = 34
          Top = 111
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 33
          OnClick = ParRadioButton17Click
          OnMouseUp = ParRadioButton17MouseUp
        end
        object ParRadioButton18: TRadioButton
          Left = 34
          Top = 131
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 35
          OnClick = ParRadioButton18Click
          OnMouseUp = ParRadioButton18MouseUp
        end
        object ParRadioButton19: TRadioButton
          Left = 34
          Top = 152
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 37
          OnClick = ParRadioButton19Click
          OnMouseUp = ParRadioButton19MouseUp
        end
        object ParRadioButton20: TRadioButton
          Left = 34
          Top = 171
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 39
          OnClick = ParRadioButton20Click
          OnMouseUp = ParRadioButton20MouseUp
        end
        object ParRadioButton21: TRadioButton
          Left = 34
          Top = 191
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 41
          OnClick = ParRadioButton21Click
          OnMouseUp = ParRadioButton21MouseUp
        end
        object ParEnabledCB13: TCheckBox
          Left = 10
          Top = 31
          Width = 18
          Height = 15
          TabOrder = 24
          OnClick = ParEnabledCB13Click
        end
        object ParEnabledCB14: TCheckBox
          Left = 10
          Top = 51
          Width = 18
          Height = 16
          Caption = 'ParEnabledCB14'
          TabOrder = 26
          OnClick = ParEnabledCB14Click
        end
        object ParEnabledCB15: TCheckBox
          Left = 10
          Top = 71
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB15'
          TabOrder = 28
          OnClick = ParEnabledCB15Click
        end
        object ParEnabledCB16: TCheckBox
          Left = 10
          Top = 91
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB16'
          TabOrder = 30
          OnClick = ParEnabledCB16Click
        end
        object ParEnabledCB17: TCheckBox
          Left = 10
          Top = 111
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB17'
          TabOrder = 32
          OnClick = ParEnabledCB17Click
        end
        object ParEnabledCB18: TCheckBox
          Left = 10
          Top = 131
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB18'
          TabOrder = 34
          OnClick = ParEnabledCB18Click
        end
        object ParEnabledCB21: TCheckBox
          Left = 10
          Top = 191
          Width = 18
          Height = 15
          Caption = 'CheckBox6'
          TabOrder = 40
          OnClick = ParEnabledCB21Click
        end
        object ParEnabledCB20: TCheckBox
          Left = 10
          Top = 171
          Width = 18
          Height = 15
          Caption = 'CheckBox5'
          TabOrder = 38
          OnClick = ParEnabledCB20Click
        end
        object ParEnabledCB19: TCheckBox
          Left = 10
          Top = 151
          Width = 18
          Height = 15
          Caption = 'CheckBox4'
          TabOrder = 36
          OnClick = ParEnabledCB19Click
        end
        object ParRadioButton22: TRadioButton
          Left = 34
          Top = 212
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 43
          OnClick = ParRadioButton22Click
          OnMouseUp = ParRadioButton22MouseUp
        end
        object ParRadioButton23: TRadioButton
          Left = 34
          Top = 231
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 45
          OnClick = ParRadioButton23Click
          OnMouseUp = ParRadioButton23MouseUp
        end
        object ParRadioButton24: TRadioButton
          Left = 34
          Top = 251
          Width = 240
          Height = 13
          Caption = #1052#1086#1083#1086#1090#1086#1082
          TabOrder = 47
          OnClick = ParRadioButton24Click
          OnMouseUp = ParRadioButton24MouseUp
        end
        object ParEnabledCB24: TCheckBox
          Left = 10
          Top = 251
          Width = 18
          Height = 15
          Caption = 'CheckBox6'
          TabOrder = 46
          OnClick = ParEnabledCB24Click
        end
        object ParEnabledCB23: TCheckBox
          Left = 10
          Top = 231
          Width = 18
          Height = 15
          Caption = 'CheckBox5'
          TabOrder = 44
          OnClick = ParEnabledCB23Click
        end
        object ParEnabledCB22: TCheckBox
          Left = 10
          Top = 211
          Width = 18
          Height = 15
          Caption = 'CheckBox4'
          TabOrder = 42
          OnClick = ParEnabledCB22Click
        end
      end
      object ParTabSet: TTabSet
        Left = 4
        Top = 360
        Width = 313
        Height = 17
        DitherBackground = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentShowHint = False
        ShowHint = False
        SoftTop = True
        Tabs.Strings = (
          '1 - 12'
          '13 - 24')
        TabIndex = 0
        OnChange = ParTabSetChange
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1090#1088#1086#1082#1086#1074#1099#1077' '#1087#1086#1076#1089#1090#1072#1085#1086#1074#1082#1080
      ImageIndex = 2
      object Label27: TLabel
        Left = 44
        Top = 107
        Width = 55
        Height = 13
        Caption = '<ToPlanet>'
      end
      object Label29: TLabel
        Left = 44
        Top = 145
        Width = 44
        Height = 13
        Caption = '<ToStar>'
      end
      object Label32: TLabel
        Left = 44
        Top = 187
        Width = 65
        Height = 13
        Caption = '<FromPlanet>'
      end
      object Label33: TLabel
        Left = 44
        Top = 227
        Width = 54
        Height = 13
        Caption = '<FromStar>'
      end
      object Label34: TLabel
        Left = 44
        Top = 67
        Width = 47
        Height = 13
        Caption = '<Ranger>'
      end
      object ToStarEdit: TEdit
        Left = 177
        Top = 141
        Width = 513
        Height = 21
        TabOrder = 2
        Text = 'ToStarEdit'
        OnChange = ToStarEditChange
      end
      object ToPlanetEdit: TEdit
        Left = 177
        Top = 103
        Width = 513
        Height = 21
        TabOrder = 1
        Text = 'ToPlanetEdit'
        OnChange = ToPlanetEditChange
      end
      object FromPlanetEdit: TEdit
        Left = 177
        Top = 183
        Width = 513
        Height = 21
        TabOrder = 3
        Text = 'FromPlanetEdit'
        OnChange = FromPlanetEditChange
      end
      object FromStarEdit: TEdit
        Left = 177
        Top = 223
        Width = 513
        Height = 21
        TabOrder = 4
        Text = 'FromStarEdit'
        OnChange = FromStarEditChange
      end
      object RangerEdit: TEdit
        Left = 177
        Top = 63
        Width = 513
        Height = 21
        TabOrder = 0
        Text = 'RangerEdit'
        OnChange = RangerEditChange
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1056#1072#1079#1084#1077#1088' '#1079#1077#1088#1085#1072' '#1089#1077#1090#1082#1080
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 23
        Top = 32
        Width = 689
        Height = 81
        Caption = #1055#1086' '#1096#1080#1088#1080#1085#1077':'
        TabOrder = 0
        object X1RB: TRadioButton
          Left = 48
          Top = 40
          Width = 113
          Height = 17
          Caption = #1052#1077#1083#1082#1080#1081
          TabOrder = 0
          OnClick = X1RBClick
        end
        object X2RB: TRadioButton
          Left = 208
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1088#1077#1076#1085#1080#1081
          TabOrder = 1
          OnClick = X2RBClick
        end
        object X3RB: TRadioButton
          Left = 384
          Top = 40
          Width = 113
          Height = 17
          Caption = #1050#1088#1091#1087#1085#1099#1081
          TabOrder = 2
          OnClick = X3RBClick
        end
        object X4RB: TRadioButton
          Left = 560
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1072#1084#1099#1081' '#1082#1088#1091#1087#1085#1099#1081
          TabOrder = 3
          OnClick = X4RBClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 23
        Top = 152
        Width = 689
        Height = 81
        Caption = #1055#1086' '#1074#1099#1089#1086#1090#1077':'
        TabOrder = 1
        object Y1RB: TRadioButton
          Left = 48
          Top = 40
          Width = 113
          Height = 17
          Caption = #1052#1077#1083#1082#1080#1081
          TabOrder = 0
          OnClick = X1RBClick
        end
        object Y2RB: TRadioButton
          Left = 208
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1088#1077#1076#1085#1080#1081
          TabOrder = 1
          OnClick = X2RBClick
        end
        object Y3RB: TRadioButton
          Left = 384
          Top = 40
          Width = 113
          Height = 17
          Caption = #1050#1088#1091#1087#1085#1099#1081
          TabOrder = 2
          OnClick = X3RBClick
        end
        object Y4RB: TRadioButton
          Left = 560
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1072#1084#1099#1081' '#1082#1088#1091#1087#1085#1099#1081
          TabOrder = 3
          OnClick = X4RBClick
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1055#1077#1088#1077#1093#1086#1076#1099
      ImageIndex = 4
      object GroupBox3: TGroupBox
        Left = 15
        Top = 16
        Width = 241
        Height = 57
        Caption = #1055#1088#1086#1093#1086#1076#1080#1084#1086#1089#1090#1100' '#1087#1077#1088#1077#1093#1086#1076#1086#1074' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102':'
        TabOrder = 0
        object DefUnlPathGoTimesCheck: TCheckBox
          Left = 16
          Top = 24
          Width = 97
          Height = 17
          Caption = #1053#1077#1086#1075#1088#1072#1085#1080#1095#1077#1085#1085#1072#1103
          TabOrder = 0
          OnClick = DefUnlPathGoTimesCheckClick
        end
        object DefPathGoTimesEdit: TEdit
          Left = 144
          Top = 24
          Width = 57
          Height = 21
          TabOrder = 1
          Text = ' '
          OnChange = DefPathGoTimesEditChange
        end
      end
    end
  end
end
