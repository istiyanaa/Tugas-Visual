object Form3: TForm3
  Left = 257
  Top = 214
  Width = 928
  Height = 480
  Caption = 'Kondisional 1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl5: TLabel
    Left = 64
    Top = 128
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object lbl1: TLabel
    Left = 64
    Top = 160
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object lbl2: TLabel
    Left = 64
    Top = 200
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
  end
  object lbl3: TLabel
    Left = 328
    Top = 144
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lbl4: TLabel
    Left = 328
    Top = 184
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object Edtnilai1: TEdit
    Left = 128
    Top = 128
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object Edtnilai2: TEdit
    Left = 128
    Top = 160
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object Edtnilai3: TEdit
    Left = 128
    Top = 200
    Width = 65
    Height = 21
    TabOrder = 2
  end
  object Edtbobot1: TEdit
    Left = 216
    Top = 128
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object Edtbobot2: TEdit
    Left = 216
    Top = 160
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object Edtbobot3: TEdit
    Left = 216
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 5
  end
  object Edttotal: TEdit
    Left = 376
    Top = 144
    Width = 73
    Height = 21
    TabOrder = 6
  end
  object Edtgrade: TEdit
    Left = 376
    Top = 184
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object pnl1: TPanel
    Left = 112
    Top = 8
    Width = 353
    Height = 41
    Caption = 'Contoh Kondisional'
    TabOrder = 8
  end
  object pnl2: TPanel
    Left = 112
    Top = 80
    Width = 97
    Height = 25
    Caption = 'Nilai'
    TabOrder = 9
  end
  object pnl3: TPanel
    Left = 224
    Top = 80
    Width = 89
    Height = 25
    Caption = 'Bobot'
    TabOrder = 10
  end
  object btn1: TButton
    Left = 112
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 11
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 208
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 376
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 13
    OnClick = btn3Click
  end
end
