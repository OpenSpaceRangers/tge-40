object Form5: TForm5
  Left = 109
  Top = 214
  Width = 544
  Height = 375
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ParCustomizePanel: TPanel
    Left = 58
    Top = 15
    Width = 398
    Height = 306
    TabOrder = 0
    object Shape6: TShape
      Left = 11
      Top = 202
      Width = 383
      Height = 100
      Brush.Color = clBlack
    end
    object Shape5: TShape
      Left = 5
      Top = 195
      Width = 388
      Height = 106
    end
    object ParValueLabel: TLabel
      Left = 113
      Top = 172
      Width = 25
      Height = 11
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
    end
    object Label20: TLabel
      Left = 9
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Рабочее название'
    end
    object Label3: TLabel
      Left = 10
      Top = 32
      Width = 258
      Height = 13
      Caption = 'Строка вывода в игре, где <> значение параметра'
    end
    object Label4: TLabel
      Left = 23
      Top = 173
      Width = 16
      Height = 13
      Caption = 'min'
    end
    object Label5: TLabel
      Left = 214
      Top = 173
      Width = 19
      Height = 13
      Caption = 'max'
    end
    object ParViewActionRG: TRadioGroup
      Left = 82
      Top = 191
      Width = 136
      Height = 63
      Caption = 'Вид'
      ItemIndex = 0
      Items.Strings = (
        'Видимый '
        'Скрытый')
      TabOrder = 4
      Visible = False
    end
    object ParDeltaTrackBar: TTrackBar
      Left = 51
      Top = 147
      Width = 149
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
      Left = 10
      Top = 149
      Width = 40
      Height = 21
      AutoSize = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object MaxGateEdit: TEdit
      Left = 202
      Top = 149
      Width = 40
      Height = 21
      AutoSize = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object RadioGroup1: TRadioGroup
      Left = 9
      Top = 77
      Width = 234
      Height = 57
      Caption = 'Тип'
      Columns = 2
      Items.Strings = (
        'Обычный'
        'Провальный'
        'Успешный'
        'Смертельный')
      TabOrder = 5
    end
    object ParNameEdit: TEdit
      Left = 116
      Top = 5
      Width = 271
      Height = 21
      TabOrder = 6
      Text = 'ParNameEdit'
    end
    object RadioGroup2: TRadioGroup
      Left = 251
      Top = 135
      Width = 137
      Height = 56
      Caption = 'Критическим является'
      Items.Strings = (
        'Минимум'
        'Максимум')
      TabOrder = 7
    end
    object ShowIfZeroRadioGroup: TRadioGroup
      Left = 251
      Top = 77
      Width = 137
      Height = 57
      Caption = 'Показывать при нуле'
      Items.Strings = (
        'Да'
        'Нет')
      TabOrder = 8
    end
    object ParGameNameEdit: TEdit
      Left = 10
      Top = 51
      Width = 378
      Height = 21
      TabOrder = 9
      Text = 'ParNameEdit'
    end
    object ParCriticalMessageMemo: TMemo
      Left = 9
      Top = 199
      Width = 381
      Height = 99
      BorderStyle = bsNone
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
end
