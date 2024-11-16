object StatisticsCalculationStyleForm: TStatisticsCalculationStyleForm
  Left = 186
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Вычисление статистики'
  ClientHeight = 149
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CheckCalculationStyleRadioGroup: TRadioGroup
    Left = 8
    Top = 5
    Width = 217
    Height = 105
    ItemIndex = 0
    Items.Strings = (
      'Продолжить вычисление полной '
      'Считать неполную'
      'Прекратить счет ')
    TabOrder = 0
    OnClick = CheckCalculationStyleRadioGroupClick
  end
  object OkButton: TButton
    Left = 80
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = OkButtonClick
  end
end
