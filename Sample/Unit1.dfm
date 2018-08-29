object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label4: TLabel
    Left = 24
    Top = 144
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Edit1: TEdit
    Left = 61
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 83
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 61
    Top = 64
    Width = 121
    Height = 21
    Date = 43341.873533078700000000
    Time = 43341.873533078700000000
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 61
    Top = 111
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 61
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 4
    Items.Strings = (
      'Deger1'
      'Deger2'
      'Deger3'
      'Deger4')
  end
  object Memo1: TMemo
    Left = 224
    Top = 21
    Width = 185
    Height = 148
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
end
