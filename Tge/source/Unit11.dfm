object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 745
  Height = 535
  TabOrder = 0
  object ParSelectPanel: TPanel
    Left = 15
    Top = 7
    Width = 326
    Height = 246
    TabOrder = 0
    Visible = False
    object ParBevel3: TBevel
      Left = 5
      Top = 67
      Width = 311
      Height = 18
    end
    object ParBevel1: TBevel
      Left = 5
      Top = 27
      Width = 311
      Height = 18
    end
    object ParBevel2: TBevel
      Left = 5
      Top = 47
      Width = 311
      Height = 18
    end
    object ParBevel9: TBevel
      Left = 5
      Top = 187
      Width = 311
      Height = 18
    end
    object ParGateLabel1: TLabel
      Left = 190
      Top = 30
      Width = 27
      Height = 13
      Caption = '[0..1] '
    end
    object ParBevel4: TBevel
      Left = 5
      Top = 87
      Width = 311
      Height = 18
    end
    object ParBevel5: TBevel
      Left = 5
      Top = 107
      Width = 311
      Height = 18
    end
    object ParBevel6: TBevel
      Left = 5
      Top = 127
      Width = 311
      Height = 18
    end
    object ParBevel7: TBevel
      Left = 5
      Top = 147
      Width = 311
      Height = 18
    end
    object ParBevel8: TBevel
      Left = 5
      Top = 167
      Width = 311
      Height = 18
    end
    object ParDeltaLabel1: TLabel
      Left = 295
      Top = 31
      Width = 15
      Height = 13
      Caption = ' +1'
    end
    object ParGateLabel3: TLabel
      Left = 190
      Top = 70
      Width = 27
      Height = 13
      Caption = '[1..1] '
    end
    object ParDeltaLabel3: TLabel
      Left = 298
      Top = 71
      Width = 12
      Height = 13
      Caption = ' -1'
    end
    object ParGateLabel2: TLabel
      Left = 190
      Top = 50
      Width = 27
      Height = 13
      Caption = '[0..1] '
    end
    object ParGateLabel4: TLabel
      Left = 190
      Top = 91
      Width = 27
      Height = 13
      Caption = '[0..1] '
    end
    object ParGateLabel5: TLabel
      Left = 190
      Top = 111
      Width = 27
      Height = 13
      Caption = '[0..1] '
    end
    object ParGateLabel6: TLabel
      Left = 190
      Top = 131
      Width = 27
      Height = 13
      Caption = '[1..1] '
    end
    object ParGateLabel7: TLabel
      Left = 190
      Top = 150
      Width = 27
      Height = 13
      Caption = '[0..1] '
    end
    object ParGateLabel8: TLabel
      Left = 190
      Top = 170
      Width = 27
      Height = 13
      Caption = '[0..1] '
    end
    object ParGateLabel9: TLabel
      Left = 190
      Top = 190
      Width = 27
      Height = 13
      Caption = '[1..1] '
    end
    object ParDeltaLabel2: TLabel
      Left = 295
      Top = 50
      Width = 15
      Height = 13
      Caption = ' +1'
    end
    object ParDeltaLabel4: TLabel
      Left = 295
      Top = 91
      Width = 15
      Height = 13
      Caption = ' +1'
    end
    object ParDeltaLabel5: TLabel
      Left = 295
      Top = 110
      Width = 15
      Height = 13
      Caption = ' +1'
    end
    object ParDeltaLabel6: TLabel
      Left = 298
      Top = 131
      Width = 12
      Height = 13
      Caption = ' -1'
    end
    object ParDeltaLabel7: TLabel
      Left = 295
      Top = 151
      Width = 15
      Height = 13
      Caption = ' +1'
    end
    object ParDeltaLabel8: TLabel
      Left = 295
      Top = 170
      Width = 15
      Height = 13
      Caption = ' +1'
    end
    object ParDeltaLabel9: TLabel
      Left = 298
      Top = 191
      Width = 12
      Height = 13
      Caption = ' -1'
    end
    object ParRadioButton1: TRadioButton
      Left = 10
      Top = 30
      Width = 176
      Height = 13
      Caption = 'Молоток'
      TabOrder = 0
    end
    object ParRadioButton3: TRadioButton
      Left = 10
      Top = 69
      Width = 176
      Height = 13
      Caption = 'Гранаты'
      TabOrder = 1
    end
    object ParRadioButton2: TRadioButton
      Left = 10
      Top = 50
      Width = 176
      Height = 13
      Caption = 'Лопатка'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ParRadioButton4: TRadioButton
      Left = 10
      Top = 89
      Width = 176
      Height = 13
      Caption = 'Молоток'
      TabOrder = 3
    end
    object ParRadioButton5: TRadioButton
      Left = 10
      Top = 109
      Width = 176
      Height = 13
      Caption = 'Молоток'
      TabOrder = 4
    end
    object ParRadioButton6: TRadioButton
      Left = 10
      Top = 129
      Width = 176
      Height = 13
      Caption = 'Молоток'
      TabOrder = 5
    end
    object ParRadioButton7: TRadioButton
      Left = 10
      Top = 150
      Width = 176
      Height = 13
      Caption = 'Молоток'
      TabOrder = 6
    end
    object ParRadioButton8: TRadioButton
      Left = 10
      Top = 169
      Width = 176
      Height = 13
      Caption = 'Молоток'
      TabOrder = 7
    end
    object ParRadioButton9: TRadioButton
      Left = 10
      Top = 188
      Width = 176
      Height = 13
      Caption = 'Молоток'
      TabOrder = 8
    end
  end
  object ParCustomisePanel: TPanel
    Left = 344
    Top = 7
    Width = 401
    Height = 246
    TabOrder = 1
    Visible = False
    object ParValueLabel: TLabel
      Left = 102
      Top = 92
      Width = 25
      Height = 11
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
    end
    object ParDeltaTrackBar: TTrackBar
      Left = 23
      Top = 67
      Width = 183
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
    end
    object MinGateEdit: TEdit
      Left = 9
      Top = 88
      Width = 48
      Height = 21
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 8421505
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'DMinEdit'
    end
    object MaxGateEdit: TEdit
      Left = 177
      Top = 88
      Width = 51
      Height = 21
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 8421505
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'DMaxEdit'
    end
    object ParCriticalMessageMemo: TMemo
      Left = 7
      Top = 120
      Width = 387
      Height = 115
      BorderStyle = bsNone
      Lines.Strings = (
        'Memo1')
      TabOrder = 3
    end
    object ParViewActionRG: TRadioGroup
      Left = 250
      Top = 51
      Width = 136
      Height = 55
      ItemIndex = 0
      Items.Strings = (
        'Без изменений'
        'Показать '
        'Скрыть')
      TabOrder = 4
    end
  end
  object ParGroupBox8: TGroupBox
    Left = 251
    Top = 356
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    object Shape1: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel8: TLabel
      Left = 5
      Top = 15
      Width = 76
      Height = 13
      Caption = 'ParNameLabel8'
    end
    object ParValueLabel8: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
  object ParGroupBox9: TGroupBox
    Left = 491
    Top = 356
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    object Shape5: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel9: TLabel
      Left = 5
      Top = 15
      Width = 51
      Height = 13
      Caption = 'AParName'
    end
    object ParValueLabel9: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
  object ParGroupBox4: TGroupBox
    Left = 11
    Top = 319
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    object Shape6: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel4: TLabel
      Left = 5
      Top = 15
      Width = 51
      Height = 13
      Caption = 'AParName'
    end
    object ParValueLabel4: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
  object ParGroupBox7: TGroupBox
    Left = 11
    Top = 356
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    object Shape7: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel7: TLabel
      Left = 5
      Top = 15
      Width = 51
      Height = 13
      Caption = 'AParName'
    end
    object ParValueLabel7: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
  object ParGroupBox5: TGroupBox
    Left = 251
    Top = 319
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    object Shape8: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel5: TLabel
      Left = 5
      Top = 15
      Width = 51
      Height = 13
      Caption = 'AParName'
    end
    object ParValueLabel5: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
  object ParGroupBox6: TGroupBox
    Left = 491
    Top = 319
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    object Shape9: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel6: TLabel
      Left = 5
      Top = 15
      Width = 51
      Height = 13
      Caption = 'AParName'
    end
    object ParValueLabel6: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
  object ParGroupBox1: TGroupBox
    Left = 11
    Top = 282
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    object Shape10: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel1: TLabel
      Left = 5
      Top = 15
      Width = 51
      Height = 13
      Caption = 'AParName'
    end
    object ParValueLabel1: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
  object ParGroupBox2: TGroupBox
    Left = 251
    Top = 282
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
    object Shape11: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel2: TLabel
      Left = 5
      Top = 15
      Width = 51
      Height = 13
      Caption = 'AParName'
    end
    object ParValueLabel2: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
  object ParGroupBox3: TGroupBox
    Left = 491
    Top = 282
    Width = 233
    Height = 36
    Hint = 'Информация об игровом параметре 1'
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 10
    object Shape12: TShape
      Left = 0
      Top = 5
      Width = 233
      Height = 31
      Brush.Color = clBtnFace
      Pen.Color = 8421505
    end
    object ParNameLabel3: TLabel
      Left = 5
      Top = 15
      Width = 51
      Height = 13
      Caption = 'AParName'
    end
    object ParValueLabel3: TLabel
      Left = 188
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'PLabel'
    end
  end
end
