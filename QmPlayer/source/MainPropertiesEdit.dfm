object Form4: TForm4
  Left = 30
  Top = 35
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Свойства квеста'
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
    TabOrder = 1
    OnClick = CancelButtonClick
  end
  object OkButton: TButton
    Left = 510
    Top = 424
    Width = 105
    Height = 25
    Hint = 'Подтвердить ввод данных'
    Caption = 'Готово'
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
    ActivePage = TabSheet14
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Главные '
      object Label1: TLabel
        Left = 5
        Top = 161
        Width = 315
        Height = 13
        Caption = 'Параметры, используемые в тексте задания и поздравления'
      end
      object Label2: TLabel
        Left = 5
        Top = 175
        Width = 75
        Height = 13
        Caption = 'Обязательные'
      end
      object Label11: TLabel
        Left = 372
        Top = 175
        Width = 87
        Height = 13
        Caption = 'Необязательные'
      end
      object Edit1: TEdit
        Left = 4
        Top = 188
        Width = 350
        Height = 15
        BorderStyle = bsNone
        ReadOnly = True
        TabOrder = 0
      end
      object RaceRadioGroup: TRadioGroup
        Left = 3
        Top = -1
        Width = 214
        Height = 57
        Hint = 'Выберите расу, которая  дает этот квест рейнджеру'
        Caption = 'Раса, дающая квест'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Малоки'
          'Пеленги'
          'Люди'
          'Фэй'
          'Гаальцы')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object TargetRaceRadioGroup: TRadioGroup
        Left = 3
        Top = 56
        Width = 298
        Height = 57
        Caption = 'На чьей планете выполняется квест'
        Columns = 3
        Items.Strings = (
          'Незаселенная'
          'Малоки'
          'Пеленги'
          'Люди'
          'Фэяне'
          'Гаальцы')
        TabOrder = 2
      end
      object RangerStatusRadioGroup: TRadioGroup
        Left = 224
        Top = -1
        Width = 217
        Height = 57
        Caption = 'Статус игрока'
        Columns = 2
        Items.Strings = (
          'Любой'
          'Торговец'
          'Пират'
          'Воин')
        TabOrder = 3
      end
      object Edit2: TEdit
        Left = 371
        Top = 188
        Width = 359
        Height = 15
        BorderStyle = bsNone
        ReadOnly = True
        TabOrder = 4
      end
      object PageControl2: TPageControl
        Left = 3
        Top = 212
        Width = 729
        Height = 177
        ActivePage = TabSheet8
        TabOrder = 5
        object TabSheet8: TTabSheet
          Caption = 'Текст задания'
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
            Hint = 'Этот текст содержит задание правительства'
            BorderStyle = bsNone
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Текст поздравления'
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
            Hint = 'Этот текст содержит задание правительства'
            BorderStyle = bsNone
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
          end
        end
      end
      object RangerRaceRadioGroup: TRadioGroup
        Left = 448
        Top = 0
        Width = 283
        Height = 56
        Caption = 'Раса игрока'
        Columns = 3
        Items.Strings = (
          'Любая'
          'Малок'
          'Пеленг'
          'Человек'
          'Фэянин'
          'Гаалец')
        TabOrder = 6
      end
      object PlanetReactionGroupBox: TGroupBox
        Left = 304
        Top = 56
        Width = 428
        Height = 57
        Caption = 'И как изменится отношение к игроку после выполнения квеста'
        TabOrder = 7
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
          Caption = 'Отношение останется неизменным'
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
        Width = 729
        Height = 41
        Caption = 'Когда квест считать выполненным'
        TabOrder = 8
        object NeedToReturnNoRadioButton: TRadioButton
          Left = 8
          Top = 18
          Width = 329
          Height = 17
          Caption = 'Сразу после выполнения'
          TabOrder = 0
          OnClick = NeedToReturnNoRadioButtonClick
        end
        object NeedToReturnYesRadioButton: TRadioButton
          Left = 360
          Top = 18
          Width = 257
          Height = 17
          Caption = 'По возвращении на планету давшую квест'
          TabOrder = 1
          OnClick = NeedToReturnYesRadioButtonClick
        end
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Параметры'
      ImageIndex = 5
      object ParCustomizePanel: TPanel
        Left = 334
        Top = 31
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
          OnClick = ParViewActionRGClick
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
          OnChange = ParDeltaTrackBarChange
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
          OnChange = MinGateEditChange
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
          OnChange = MaxGateEditChange
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
          OnClick = RadioGroup1Click
        end
        object ParNameEdit: TEdit
          Left = 116
          Top = 5
          Width = 271
          Height = 21
          TabOrder = 6
          Text = 'ParNameEdit'
          OnChange = ParNameEditChange
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
          OnClick = RadioGroup2Click
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
          OnClick = ShowIfZeroRadioGroupClick
        end
        object ParGameNameEdit: TEdit
          Left = 10
          Top = 51
          Width = 378
          Height = 21
          TabOrder = 9
          Text = 'ParNameEdit'
          OnChange = ParGameNameEditChange
        end
        object ParCriticalMessageMemo: TMemo
          Left = 9
          Top = 199
          Width = 381
          Height = 99
          BorderStyle = bsNone
          ScrollBars = ssVertical
          TabOrder = 3
          OnChange = ParCriticalMessageMemoChange
        end
      end
      object ParSelectPanel: TPanel
        Left = 3
        Top = 31
        Width = 326
        Height = 306
        TabOrder = 1
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
        object Label13: TLabel
          Left = 8
          Top = 8
          Width = 105
          Height = 13
          Caption = 'Выберите параметр:'
        end
        object ParBevel12: TBevel
          Left = 5
          Top = 247
          Width = 311
          Height = 18
        end
        object ParBevel10: TBevel
          Left = 5
          Top = 207
          Width = 311
          Height = 18
        end
        object ParBevel11: TBevel
          Left = 5
          Top = 227
          Width = 311
          Height = 18
        end
        object ParRadioButton1: TRadioButton
          Left = 32
          Top = 30
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 0
          OnClick = ParRadioButton1Click
          OnMouseUp = ParRadioButton1MouseUp
        end
        object ParRadioButton3: TRadioButton
          Left = 32
          Top = 70
          Width = 280
          Height = 13
          Caption = 'Гранаты'
          TabOrder = 1
          OnClick = ParRadioButton3Click
          OnMouseUp = ParRadioButton3MouseUp
        end
        object ParRadioButton2: TRadioButton
          Left = 32
          Top = 50
          Width = 280
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
          OnMouseUp = ParRadioButton2MouseUp
        end
        object ParRadioButton4: TRadioButton
          Left = 32
          Top = 89
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 3
          OnClick = ParRadioButton4Click
          OnMouseUp = ParRadioButton4MouseUp
        end
        object ParRadioButton5: TRadioButton
          Left = 32
          Top = 109
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 4
          OnClick = ParRadioButton5Click
          OnMouseUp = ParRadioButton5MouseUp
        end
        object ParRadioButton6: TRadioButton
          Left = 32
          Top = 129
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 5
          OnClick = ParRadioButton6Click
          OnMouseUp = ParRadioButton6MouseUp
        end
        object ParRadioButton7: TRadioButton
          Left = 32
          Top = 150
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 6
          OnClick = ParRadioButton7Click
          OnMouseUp = ParRadioButton7MouseUp
        end
        object ParRadioButton8: TRadioButton
          Left = 32
          Top = 169
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 7
          OnClick = ParRadioButton8Click
          OnMouseUp = ParRadioButton8MouseUp
        end
        object ParRadioButton9: TRadioButton
          Left = 32
          Top = 189
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 8
          OnClick = ParRadioButton9Click
          OnMouseUp = ParRadioButton9MouseUp
        end
        object ParEnabledCB1: TCheckBox
          Left = 8
          Top = 28
          Width = 18
          Height = 15
          TabOrder = 9
          OnClick = ParEnabledCB1Click
        end
        object ParEnabledCB2: TCheckBox
          Left = 8
          Top = 48
          Width = 18
          Height = 16
          Caption = 'ParEnabledCB2'
          TabOrder = 10
          OnClick = ParEnabledCB2Click
        end
        object ParEnabledCB3: TCheckBox
          Left = 8
          Top = 68
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB3'
          TabOrder = 11
          OnClick = ParEnabledCB3Click
        end
        object ParEnabledCB4: TCheckBox
          Left = 8
          Top = 88
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB4'
          TabOrder = 12
          OnClick = ParEnabledCB4Click
        end
        object ParEnabledCB5: TCheckBox
          Left = 8
          Top = 108
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB5'
          TabOrder = 13
          OnClick = ParEnabledCB5Click
        end
        object ParEnabledCB6: TCheckBox
          Left = 8
          Top = 128
          Width = 18
          Height = 15
          Caption = 'ParEnabledCB6'
          TabOrder = 14
          OnClick = ParEnabledCB6Click
        end
        object ParEnabledCB9: TCheckBox
          Left = 8
          Top = 188
          Width = 18
          Height = 15
          Caption = 'CheckBox6'
          TabOrder = 15
          OnClick = ParEnabledCB9Click
        end
        object ParEnabledCB8: TCheckBox
          Left = 8
          Top = 168
          Width = 18
          Height = 15
          Caption = 'CheckBox5'
          TabOrder = 16
          OnClick = ParEnabledCB8Click
        end
        object ParEnabledCB7: TCheckBox
          Left = 8
          Top = 148
          Width = 18
          Height = 15
          Caption = 'CheckBox4'
          TabOrder = 17
          OnClick = ParEnabledCB7Click
        end
        object ParRadioButton10: TRadioButton
          Left = 32
          Top = 210
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 18
          OnClick = ParRadioButton7Click
          OnMouseUp = ParRadioButton7MouseUp
        end
        object ParRadioButton11: TRadioButton
          Left = 32
          Top = 229
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 19
          OnClick = ParRadioButton8Click
          OnMouseUp = ParRadioButton8MouseUp
        end
        object ParRadioButton12: TRadioButton
          Left = 32
          Top = 249
          Width = 280
          Height = 13
          Caption = 'Молоток'
          TabOrder = 20
          OnClick = ParRadioButton9Click
          OnMouseUp = ParRadioButton9MouseUp
        end
        object ParEnabledCB12: TCheckBox
          Left = 8
          Top = 248
          Width = 18
          Height = 15
          Caption = 'CheckBox6'
          TabOrder = 21
          OnClick = ParEnabledCB9Click
        end
        object ParEnabledCB11: TCheckBox
          Left = 8
          Top = 228
          Width = 18
          Height = 15
          Caption = 'CheckBox5'
          TabOrder = 22
          OnClick = ParEnabledCB8Click
        end
        object ParEnabledCB10: TCheckBox
          Left = 8
          Top = 208
          Width = 18
          Height = 15
          Caption = 'CheckBox4'
          TabOrder = 23
          OnClick = ParEnabledCB7Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Строковые подстановки'
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
        TabOrder = 0
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
        TabOrder = 2
        Text = 'FromPlanetEdit'
        OnChange = FromPlanetEditChange
      end
      object FromStarEdit: TEdit
        Left = 177
        Top = 223
        Width = 513
        Height = 21
        TabOrder = 3
        Text = 'FromStarEdit'
        OnChange = FromStarEditChange
      end
      object RangerEdit: TEdit
        Left = 177
        Top = 63
        Width = 513
        Height = 21
        TabOrder = 4
        Text = 'RangerEdit'
        OnChange = RangerEditChange
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Размер зерна сетки'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 16
        Top = 32
        Width = 689
        Height = 81
        Caption = 'По ширине:'
        TabOrder = 0
        object X1RB: TRadioButton
          Left = 48
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Мелкий'
          TabOrder = 0
          OnClick = X1RBClick
        end
        object X2RB: TRadioButton
          Left = 208
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Средний'
          TabOrder = 1
          OnClick = X2RBClick
        end
        object X3RB: TRadioButton
          Left = 384
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Крупный'
          TabOrder = 2
          OnClick = X3RBClick
        end
        object X4RB: TRadioButton
          Left = 560
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Самый крупный'
          TabOrder = 3
          OnClick = X4RBClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 152
        Width = 689
        Height = 81
        Caption = 'По высоте:'
        TabOrder = 1
        object Y1RB: TRadioButton
          Left = 48
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Мелкий'
          TabOrder = 0
          OnClick = X1RBClick
        end
        object Y2RB: TRadioButton
          Left = 208
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Средний'
          TabOrder = 1
          OnClick = X2RBClick
        end
        object Y3RB: TRadioButton
          Left = 384
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Крупный'
          TabOrder = 2
          OnClick = X3RBClick
        end
        object Y4RB: TRadioButton
          Left = 560
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Самый крупный'
          TabOrder = 3
          OnClick = X4RBClick
        end
      end
    end
  end
end
