object Form3: TForm3
  Left = 202
  Top = 55
  ActiveControl = CancelButton
  Anchors = [akTop]
  BorderStyle = bsDialog
  Caption = 'Редактирование перехода'
  ClientHeight = 533
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CancelButton: TButton
    Left = 655
    Top = 500
    Width = 95
    Height = 26
    Hint = 'Отменить ввод данных'
    Caption = 'Отменить'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = CancelButtonClick
  end
  object OKButton: TButton
    Left = 550
    Top = 500
    Width = 91
    Height = 26
    Hint = 'Подтвердить ввод данных'
    Caption = 'Сохранить'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = OKButtonClick
  end
  object VoidFlagPanel: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 497
    BevelOuter = bvNone
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Shape31: TShape
      Left = 12
      Top = 123
      Width = 739
      Height = 144
      Brush.Color = clBlack
    end
    object Shape29: TShape
      Left = 11
      Top = 41
      Width = 740
      Height = 58
      Brush.Color = clBlack
    end
    object Label4: TLabel
      Left = 8
      Top = 101
      Width = 114
      Height = 13
      Caption = 'Сообщение перехода :'
    end
    object Label3: TLabel
      Left = 8
      Top = 21
      Width = 176
      Height = 13
      Caption = 'Вопрос для совершения перехода:'
    end
    object Shape28: TShape
      Left = 6
      Top = 35
      Width = 744
      Height = 63
    end
    object Shape30: TShape
      Left = 6
      Top = 115
      Width = 744
      Height = 151
    end
    object StatisticsLabel: TLabel
      Left = 9
      Top = 5
      Width = 736
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Текстовое описание локации :'
      Color = clSilver
      ParentColor = False
    end
    object EndMessageEdit: TMemo
      Left = 13
      Top = 122
      Width = 735
      Height = 141
      Hint = 'Введите текст сообщения'
      BorderStyle = bsNone
      Lines.Strings = (
        'EndMessageEdit')
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = True
      TabOrder = 0
      OnChange = EndMessageEditChange
    end
    object StartMessageEdit: TMemo
      Left = 13
      Top = 41
      Width = 735
      Height = 55
      Hint = 'Введите вопрос для совершения перехода'
      BorderStyle = bsNone
      Lines.Strings = (
        'StartMessageEdit')
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = True
      TabOrder = 1
      OnChange = StartMessageEditChange
    end
    object ParSelectPanel: TPanel
      Left = 6
      Top = 275
      Width = 341
      Height = 214
      TabOrder = 2
      object ParBevel3: TBevel
        Left = 7
        Top = 57
        Width = 326
        Height = 18
      end
      object ParBevel1: TBevel
        Left = 7
        Top = 17
        Width = 326
        Height = 18
      end
      object ParBevel2: TBevel
        Left = 7
        Top = 37
        Width = 326
        Height = 18
      end
      object ParBevel9: TBevel
        Left = 7
        Top = 177
        Width = 326
        Height = 18
      end
      object ParGateLabel1: TLabel
        Left = 192
        Top = 20
        Width = 27
        Height = 13
        Caption = '[0..1] '
      end
      object ParBevel4: TBevel
        Left = 7
        Top = 77
        Width = 326
        Height = 18
      end
      object ParBevel5: TBevel
        Left = 7
        Top = 97
        Width = 326
        Height = 18
      end
      object ParBevel6: TBevel
        Left = 7
        Top = 117
        Width = 326
        Height = 18
      end
      object ParBevel7: TBevel
        Left = 7
        Top = 137
        Width = 326
        Height = 18
      end
      object ParBevel8: TBevel
        Left = 7
        Top = 157
        Width = 326
        Height = 18
      end
      object ParDeltaLabel1: TLabel
        Left = 314
        Top = 21
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParGateLabel3: TLabel
        Left = 192
        Top = 60
        Width = 27
        Height = 13
        Caption = '[1..1] '
      end
      object ParDeltaLabel3: TLabel
        Left = 317
        Top = 61
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = ' -1'
      end
      object ParGateLabel2: TLabel
        Left = 192
        Top = 40
        Width = 27
        Height = 13
        Caption = '[0..1] '
      end
      object ParGateLabel4: TLabel
        Left = 192
        Top = 81
        Width = 27
        Height = 13
        Caption = '[0..1] '
      end
      object ParGateLabel5: TLabel
        Left = 192
        Top = 101
        Width = 27
        Height = 13
        Caption = '[0..1] '
      end
      object ParGateLabel6: TLabel
        Left = 192
        Top = 121
        Width = 27
        Height = 13
        Caption = '[1..1] '
      end
      object ParGateLabel7: TLabel
        Left = 192
        Top = 140
        Width = 27
        Height = 13
        Caption = '[0..1] '
      end
      object ParGateLabel8: TLabel
        Left = 192
        Top = 160
        Width = 27
        Height = 13
        Caption = '[0..1] '
      end
      object ParGateLabel9: TLabel
        Left = 192
        Top = 180
        Width = 27
        Height = 13
        Caption = '[1..1] '
      end
      object ParDeltaLabel2: TLabel
        Left = 314
        Top = 40
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel4: TLabel
        Left = 314
        Top = 81
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel5: TLabel
        Left = 314
        Top = 100
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel6: TLabel
        Left = 317
        Top = 121
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = ' -1'
      end
      object ParDeltaLabel7: TLabel
        Left = 314
        Top = 141
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel8: TLabel
        Left = 314
        Top = 160
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel9: TLabel
        Left = 317
        Top = 181
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = ' -1'
      end
      object ParRadioButton1: TRadioButton
        Left = 12
        Top = 19
        Width = 176
        Height = 13
        Caption = 'Молоток'
        TabOrder = 0
        OnClick = ParRadioButton1Click
      end
      object ParRadioButton3: TRadioButton
        Left = 12
        Top = 59
        Width = 176
        Height = 13
        Caption = 'Гранаты'
        TabOrder = 1
        OnClick = ParRadioButton3Click
      end
      object ParRadioButton2: TRadioButton
        Left = 12
        Top = 39
        Width = 176
        Height = 13
        Caption = 'Лопатка'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = ParRadioButton2Click
      end
      object ParRadioButton4: TRadioButton
        Left = 12
        Top = 79
        Width = 176
        Height = 13
        Caption = 'Молоток'
        TabOrder = 3
        OnClick = ParRadioButton4Click
      end
      object ParRadioButton5: TRadioButton
        Left = 12
        Top = 99
        Width = 176
        Height = 13
        Caption = 'Молоток'
        TabOrder = 4
        OnClick = ParRadioButton5Click
      end
      object ParRadioButton6: TRadioButton
        Left = 12
        Top = 119
        Width = 176
        Height = 13
        Caption = 'Молоток'
        TabOrder = 5
        OnClick = ParRadioButton6Click
      end
      object ParRadioButton7: TRadioButton
        Left = 12
        Top = 140
        Width = 176
        Height = 13
        Caption = 'Молоток'
        TabOrder = 6
        OnClick = ParRadioButton7Click
      end
      object ParRadioButton8: TRadioButton
        Left = 12
        Top = 159
        Width = 176
        Height = 13
        Caption = 'Молоток'
        TabOrder = 7
        OnClick = ParRadioButton8Click
      end
      object ParRadioButton9: TRadioButton
        Left = 12
        Top = 178
        Width = 176
        Height = 13
        Caption = 'Молоток'
        TabOrder = 8
        OnClick = ParRadioButton9Click
      end
    end
    object ParCustomizePanel: TPanel
      Left = 351
      Top = 275
      Width = 399
      Height = 214
      TabOrder = 3
      object TrackBarRightImage: TImage
        Left = 179
        Top = 69
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
        OnMouseDown = TrackBarRightImageMouseDown
        OnMouseUp = TrackBarRightImageMouseUp
      end
      object TrackBarLeftImage: TImage
        Left = 10
        Top = 69
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
        OnMouseDown = TrackBarLeftImageMouseDown
        OnMouseUp = TrackBarLeftImageMouseUp
      end
      object CriticalMessageBackgroundShape: TShape
        Left = 12
        Top = 122
        Width = 382
        Height = 85
        Brush.Color = clBlack
      end
      object ParMinLabel: TLabel
        Left = 7
        Top = 95
        Width = 27
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = '-100%'
      end
      object ParValueLabel: TLabel
        Left = 91
        Top = 95
        Width = 25
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
      end
      object ParMaxLabel: TLabel
        Left = 174
        Top = 95
        Width = 26
        Height = 13
        Alignment = taCenter
        Caption = '100%'
      end
      object Shape19: TShape
        Left = 211
        Top = 9
        Width = 181
        Height = 16
        Brush.Color = clBtnFace
      end
      object Label9: TLabel
        Left = 225
        Top = 37
        Width = 14
        Height = 13
        Caption = 'от:'
      end
      object Label10: TLabel
        Left = 306
        Top = 38
        Width = 15
        Height = 13
        Caption = 'до:'
      end
      object Shape21: TShape
        Left = 211
        Top = 10
        Width = 181
        Height = 50
        Brush.Color = clBtnFace
      end
      object Shape22: TShape
        Left = 211
        Top = 9
        Width = 181
        Height = 16
        Brush.Color = clBtnFace
      end
      object Label11: TLabel
        Left = 215
        Top = 10
        Width = 174
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = 'необходимо иметь в диапазоне'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 225
        Top = 37
        Width = 14
        Height = 13
        Caption = 'от:'
      end
      object Label13: TLabel
        Left = 306
        Top = 38
        Width = 15
        Height = 13
        Caption = 'до:'
      end
      object TrackBarGroundShape: TShape
        Left = 25
        Top = 69
        Width = 154
        Height = 18
        OnMouseDown = TrackBarGroundShapeMouseDown
        OnMouseMove = TrackBarGroundShapeMouseMove
        OnMouseUp = TrackBarGroundShapeMouseUp
      end
      object ParCritcalTypeShape: TShape
        Left = 6
        Top = 117
        Width = 387
        Height = 89
        Pen.Color = clRed
      end
      object TrackBarButtonShape: TShape
        Left = 102
        Top = 69
        Width = 2
        Height = 18
        Brush.Color = clInfoBk
      end
      object ParDeltaTrackBar: TTrackBar
        Left = 198
        Top = 54
        Width = 195
        Height = 24
        Cursor = crArrow
        DragCursor = crDefault
        Max = 100
        Min = -100
        Orientation = trHorizontal
        PageSize = 1
        Frequency = 1
        Position = 0
        SelEnd = 0
        SelStart = 0
        TabOrder = 0
        TickMarks = tmBottomRight
        TickStyle = tsNone
        Visible = False
        OnChange = ParDeltaTrackBarChange
      end
      object DeltaTypeGroupBox: TGroupBox
        Left = 211
        Top = 62
        Width = 182
        Height = 47
        TabOrder = 1
        object DeltaValueRadioBtn: TRadioButton
          Left = 10
          Top = 20
          Width = 69
          Height = 13
          Caption = 'Единицы'
          TabOrder = 0
          OnClick = DeltaValueRadioBtnClick
        end
        object DeltaPercentRadioBtn: TRadioButton
          Left = 92
          Top = 24
          Width = 74
          Height = 11
          Caption = 'Проценты'
          TabOrder = 1
          OnClick = DeltaPercentRadioBtnClick
        end
      end
      object MinGateEdit: TEdit
        Left = 244
        Top = 31
        Width = 48
        Height = 21
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '0'
        OnChange = MinGateEditChange
      end
      object MaxGateEdit: TEdit
        Left = 327
        Top = 32
        Width = 51
        Height = 21
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '1'
        OnChange = MaxGateEditChange
      end
      object ParViewActionRG: TRadioGroup
        Left = 11
        Top = 4
        Width = 182
        Height = 55
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Не трогать'
          'Показать '
          'Скрыть')
        TabOrder = 4
        OnClick = ParViewActionRGClick
      end
      object ParCriticalMessageMemo: TMemo
        Left = 11
        Top = 121
        Width = 379
        Height = 81
        BorderStyle = bsNone
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssVertical
        TabOrder = 5
        OnChange = ParCriticalMessageMemoChange
      end
    end
  end
  object AlwaysShowWhenPlayCheckBox: TCheckBox
    Left = 6
    Top = 504
    Width = 377
    Height = 17
    Caption = 'Показывать переход даже если его нельзя совершить'
    TabOrder = 3
    OnClick = AlwaysShowWhenPlayCheckBoxClick
  end
  object RedrawStatistsicsTimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = RedrawStatistsicsTimerTimer
    Left = 540
    Top = 28
  end
end
