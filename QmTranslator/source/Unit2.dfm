object NewProjectForm: TNewProjectForm
  Left = 258
  Top = 106
  Width = 472
  Height = 251
  BorderIcons = []
  Caption = 'Новый проект'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 172
    Height = 13
    Caption = 'Выберите исходный файл квеста:'
  end
  object SourceQuestNameLabel: TLabel
    Left = 16
    Top = 32
    Width = 116
    Height = 13
    Caption = 'SourceQuestNameLabel'
  end
  object TargetQuestNameLabel: TLabel
    Left = 16
    Top = 88
    Width = 113
    Height = 13
    Caption = 'TargetQuestNameLabel'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 165
    Height = 13
    Caption = 'Выберите целевой файл квеста:'
  end
  object ProjectNameLabel: TLabel
    Left = 16
    Top = 144
    Width = 113
    Height = 13
    Caption = 'TargetQuestNameLabel'
  end
  object Label4: TLabel
    Left = 16
    Top = 120
    Width = 171
    Height = 13
    Caption = 'Выберите целевой файл проекта:'
  end
  object ChooseSourceQouestNameBtn: TButton
    Left = 376
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Выбрать'
    TabOrder = 0
    OnClick = ChooseSourceQouestNameBtnClick
  end
  object ChooseTargetQouestNameBtn: TButton
    Left = 376
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Выбрать'
    TabOrder = 1
    OnClick = ChooseTargetQouestNameBtnClick
  end
  object ChooseProjectNameBtn: TButton
    Left = 376
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Выбрать'
    TabOrder = 2
    OnClick = ChooseProjectNameBtnClick
  end
  object CanselBtn: TButton
    Left = 376
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Отменить'
    TabOrder = 3
    OnClick = CanselBtnClick
  end
  object OkBtn: TButton
    Left = 272
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Готово'
    TabOrder = 4
    OnClick = OkBtnClick
  end
  object SourceOpenDialog: TOpenDialog
    DefaultExt = 'qm'
    Filter = 'Quest Map|*.qm'
    Left = 272
  end
  object TargetOpenDialog: TOpenDialog
    DefaultExt = 'qm'
    Filter = 'Quest Map|*.qm'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 304
  end
  object ProjectOpenDialog: TOpenDialog
    DefaultExt = 'tqm'
    Filter = 'Translation of Quest Map|*.tqm'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 336
  end
end
