object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Kalkulator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object Label2: TLabel
    Left = 120
    Top = 88
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object Label3: TLabel
    Left = 120
    Top = 128
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object Edtnilai1: TEdit
    Left = 176
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edtnilai2: TEdit
    Left = 176
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 336
    Top = 40
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SELESAI'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edthasil: TEdit
    Left = 176
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
