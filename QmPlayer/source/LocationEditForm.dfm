object Form1: TForm1
  Left = -69
  Top = 47
  ActiveControl = CancelButton
  BorderStyle = bsDialog
  Caption = 'Редактирование локации'
  ClientHeight = 509
  ClientWidth = 752
  Color = clBtnFace
  ParentFont = True
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = OnShow
  PixelsPerInch = 96
  TextHeight = 13
  object VoidFlagPanel: TPanel
    Left = 2
    Top = 0
    Width = 748
    Height = 475
    TabOrder = 0
    object Shape2: TShape
      Left = 15
      Top = 36
      Width = 727
      Height = 194
      Brush.Color = clBlack
    end
    object Shape1: TShape
      Left = 7
      Top = 32
      Width = 734
      Height = 197
    end
    object StatisticsLabel: TLabel
      Left = 9
      Top = 10
      Width = 728
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Текстовое описание локации :'
      Color = clSilver
      ParentColor = False
    end
    object IsLocationStartCheck: TCheckBox
      Left = 13
      Top = 452
      Width = 177
      Height = 18
      Hint = 'Поставьте флажок чтобы сделать локацию начальной'
      Caption = 'Локация является начальной'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = IsLocationStartCheckClick
    end
    object IsLocationEndCheck: TCheckBox
      Left = 497
      Top = 448
      Width = 233
      Height = 25
      Hint = 'Поставьте флажок чтобы сделать локацию конечной'
      Caption = 'В локации квест завершается успехом'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = IsLocationEndCheckClick
    end
    object IsLocationFailCheck: TCheckBox
      Left = 251
      Top = 452
      Width = 217
      Height = 17
      Caption = 'Локация является провальной'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = IsLocationFailCheckClick
    end
    object LocationDescriptionEdit: TMemo
      Left = 16
      Top = 39
      Width = 722
      Height = 187
      Hint = 'Введите описание локации'
      BorderStyle = bsNone
      Lines.Strings = (
        'LocationDescriptionEdit')
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = True
      TabOrder = 0
      OnChange = LocationDescriptionEditChange
    end
    object ParCustomizePanel: TPanel
      Left = 342
      Top = 235
      Width = 399
      Height = 214
      TabOrder = 4
      object TrackBarGroundShape: TShape
        Left = 25
        Top = 69
        Width = 154
        Height = 18
        OnMouseDown = TrackBarGroundShapeMouseDown
        OnMouseMove = TrackBarGroundShapeMouseMove
        OnMouseUp = TrackBarGroundShapeMouseUp
      end
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
      object ParCritcalTypeShape: TShape
        Left = 6
        Top = 117
        Width = 387
        Height = 89
        Pen.Color = clRed
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
        Visible = False
      end
      object Label9: TLabel
        Left = 225
        Top = 37
        Width = 14
        Height = 13
        Caption = 'от:'
        Visible = False
      end
      object Label10: TLabel
        Left = 306
        Top = 38
        Width = 15
        Height = 13
        Caption = 'до:'
        Visible = False
      end
      object Shape21: TShape
        Left = 211
        Top = 10
        Width = 181
        Height = 50
        Brush.Color = clBtnFace
        Visible = False
      end
      object Shape22: TShape
        Left = 211
        Top = 9
        Width = 181
        Height = 16
        Brush.Color = clBtnFace
        Visible = False
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
        Visible = False
      end
      object Label12: TLabel
        Left = 225
        Top = 37
        Width = 14
        Height = 13
        Caption = 'от:'
        Visible = False
      end
      object Label13: TLabel
        Left = 306
        Top = 38
        Width = 15
        Height = 13
        Caption = 'до:'
        Visible = False
      end
      object TrackBarButtonShape: TShape
        Left = 102
        Top = 69
        Width = 2
        Height = 18
        Brush.Color = clInfoBk
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
      object ParDeltaTrackBar: TTrackBar
        Left = 206
        Top = 54
        Width = 195
        Height = 24
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
          Top = 21
          Width = 74
          Height = 14
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
        Visible = False
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
        Visible = False
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
    end
    object ParSelectPanel: TPanel
      Left = 7
      Top = 235
      Width = 326
      Height = 214
      TabOrder = 5
      object ParBevel3: TBevel
        Left = 7
        Top = 57
        Width = 311
        Height = 18
      end
      object ParBevel1: TBevel
        Left = 7
        Top = 17
        Width = 311
        Height = 18
      end
      object ParBevel2: TBevel
        Left = 7
        Top = 37
        Width = 311
        Height = 18
      end
      object ParBevel9: TBevel
        Left = 7
        Top = 177
        Width = 311
        Height = 18
      end
      object ParGateLabel1: TLabel
        Left = 192
        Top = 20
        Width = 27
        Height = 13
        Caption = '[0..1] '
        Visible = False
      end
      object ParBevel4: TBevel
        Left = 7
        Top = 77
        Width = 311
        Height = 18
      end
      object ParBevel5: TBevel
        Left = 7
        Top = 97
        Width = 311
        Height = 18
      end
      object ParBevel6: TBevel
        Left = 7
        Top = 117
        Width = 311
        Height = 18
      end
      object ParBevel7: TBevel
        Left = 7
        Top = 137
        Width = 311
        Height = 18
      end
      object ParBevel8: TBevel
        Left = 7
        Top = 157
        Width = 311
        Height = 18
      end
      object ParDeltaLabel1: TLabel
        Left = 297
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
        Visible = False
      end
      object ParDeltaLabel3: TLabel
        Left = 300
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
        Visible = False
      end
      object ParGateLabel4: TLabel
        Left = 192
        Top = 81
        Width = 27
        Height = 13
        Caption = '[0..1] '
        Visible = False
      end
      object ParGateLabel5: TLabel
        Left = 192
        Top = 101
        Width = 27
        Height = 13
        Caption = '[0..1] '
        Visible = False
      end
      object ParGateLabel6: TLabel
        Left = 192
        Top = 121
        Width = 27
        Height = 13
        Caption = '[1..1] '
        Visible = False
      end
      object ParGateLabel7: TLabel
        Left = 192
        Top = 140
        Width = 27
        Height = 13
        Caption = '[0..1] '
        Visible = False
      end
      object ParGateLabel8: TLabel
        Left = 192
        Top = 160
        Width = 27
        Height = 13
        Caption = '[0..1] '
        Visible = False
      end
      object ParGateLabel9: TLabel
        Left = 192
        Top = 180
        Width = 27
        Height = 13
        Caption = '[1..1] '
        Visible = False
      end
      object ParDeltaLabel2: TLabel
        Left = 297
        Top = 40
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel4: TLabel
        Left = 297
        Top = 81
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel5: TLabel
        Left = 297
        Top = 100
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel6: TLabel
        Left = 300
        Top = 121
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = ' -1'
      end
      object ParDeltaLabel7: TLabel
        Left = 297
        Top = 141
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel8: TLabel
        Left = 297
        Top = 160
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = ' +1'
      end
      object ParDeltaLabel9: TLabel
        Left = 300
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
  end
  object OkButton: TButton
    Left = 543
    Top = 480
    Width = 90
    Height = 27
    Hint = 'Подтвердить ввод данных'
    Caption = 'Сохранить'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = OkButtonClick
  end
  object CancelButton: TButton
    Left = 655
    Top = 480
    Width = 95
    Height = 27
    Hint = 'Отменить ввод данных'
    Caption = 'Отменить'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = CancelButtonClick
  end
  object PlayerDeathCheckBox: TCheckBox
    Left = 254
    Top = 482
    Width = 177
    Height = 17
    Caption = 'Рейнджер погибает'
    TabOrder = 3
    OnClick = PlayerDeathCheckBoxClick
  end
  object RedrawStatistsicsTimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = RedrawStatistsicsTimerTimer
    Left = 540
    Top = 28
  end
end
