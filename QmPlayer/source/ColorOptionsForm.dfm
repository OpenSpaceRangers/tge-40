object Form7: TForm7
  Left = 156
  Top = 25
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Настройки'
  ClientHeight = 523
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object B1: TButton
    Left = 5
    Top = 16
    Width = 148
    Height = 25
    Caption = 'Начало пути с описанием'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = B1Click
  end
  object B2: TButton
    Left = 5
    Top = 56
    Width = 148
    Height = 25
    Caption = 'Конец пути с описанием'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = B2Click
  end
  object B3: TButton
    Left = 5
    Top = 176
    Width = 148
    Height = 25
    Caption = 'Стрелка'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = B3Click
  end
  object B6: TButton
    Left = 5
    Top = 296
    Width = 148
    Height = 25
    Caption = 'Промежуточная локация'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = B6Click
  end
  object B5: TButton
    Left = 5
    Top = 256
    Width = 148
    Height = 25
    Caption = 'Финальная локация'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = B5Click
  end
  object B4: TButton
    Left = 5
    Top = 216
    Width = 148
    Height = 25
    Caption = 'Начальная локация'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = B4Click
  end
  object CancelButton: TButton
    Left = 448
    Top = 495
    Width = 81
    Height = 26
    Caption = 'Отмена'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = CancelButtonClick
  end
  object OkButton: TButton
    Left = 224
    Top = 495
    Width = 89
    Height = 26
    Caption = 'Готово'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = OkButtonClick
  end
  object Button1: TButton
    Left = 336
    Top = 496
    Width = 89
    Height = 24
    Caption = 'Сброс'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 5
    Top = 336
    Width = 148
    Height = 25
    Caption = 'Провальная локация'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 5
    Top = 96
    Width = 148
    Height = 25
    Caption = 'Начало пути без описания'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 5
    Top = 136
    Width = 148
    Height = 25
    Caption = 'Конец пути без описания'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 5
    Top = 376
    Width = 148
    Height = 25
    Caption = 'Недосягаемость'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 5
    Top = 456
    Width = 148
    Height = 25
    Caption = 'Фон'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 5
    Top = 416
    Width = 148
    Height = 25
    Caption = 'Наличие безвых. ситуаций'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = B7Click
  end
  object Button8: TButton
    Left = 277
    Top = 16
    Width = 148
    Height = 25
    Caption = 'Нет  успешных путей'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 277
    Top = 56
    Width = 148
    Height = 25
    Caption = 'Спорные переходы'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 277
    Top = 96
    Width = 148
    Height = 25
    Caption = 'Фон статистики переходов'
    TabOrder = 17
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 277
    Top = 136
    Width = 148
    Height = 25
    Caption = 'Фон статистики локаций'
    TabOrder = 18
    OnClick = Button11Click
  end
  object GroupBoxStatusPanel: TGroupBox
    Left = 280
    Top = 180
    Width = 221
    Height = 96
    Caption = 'Панель статистики'
    TabOrder = 19
    object LabelStatusPanelX: TLabel
      Left = 15
      Top = 165
      Width = 9
      Height = 13
      Caption = 'X'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object LabelStatusPanelY: TLabel
      Left = 95
      Top = 165
      Width = 9
      Height = 13
      Caption = 'Y'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object StatusPanelS: TRadioButton
      Left = 15
      Top = 60
      Width = 96
      Height = 17
      Caption = 'Статичная'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = StatusPanelSClick
    end
    object StatusPanelD: TRadioButton
      Left = 15
      Top = 30
      Width = 113
      Height = 17
      Caption = 'Плавающая'
      TabOrder = 1
      OnClick = StatusPanelDClick
    end
    object StatusPanelX: TSpinEdit
      Left = 30
      Top = 159
      Width = 56
      Height = 22
      MaxValue = 200
      MinValue = 1
      TabOrder = 2
      Value = 1
      Visible = False
    end
    object StatusPanelY: TSpinEdit
      Left = 110
      Top = 159
      Width = 56
      Height = 22
      MaxValue = 200
      MinValue = 1
      TabOrder = 3
      Value = 150
      Visible = False
    end
    object GroupBoxSPN: TRadioGroup
      Left = 130
      Top = 15
      Width = 76
      Height = 70
      Columns = 3
      ItemIndex = 8
      Items.Strings = (
        ''
        ''
        ''
        ''
        ''
        ''
        ''
        ''
        '')
      TabOrder = 4
      OnClick = GroupBoxSPNClick
    end
  end
  object CalculationStatisticsTimerDelayRadioGroup: TRadioGroup
    Left = 280
    Top = 296
    Width = 222
    Height = 65
    Caption = 'Всплытие окна модификации счета (сек)'
    Columns = 3
    Items.Strings = (
      '5'
      '10'
      '15')
    TabOrder = 20
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 65528
    Top = 65528
  end
end
