object Form4: TForm4
  Left = 269
  Top = 156
  Width = 928
  Height = 480
  Caption = 'Kondisional 2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 80
    Top = 136
    Width = 88
    Height = 13
    Caption = 'NILAI KEHADIRAN'
  end
  object lbl2: TLabel
    Left = 80
    Top = 168
    Width = 63
    Height = 13
    Caption = 'NILAI TUGAS'
  end
  object lbl3: TLabel
    Left = 80
    Top = 200
    Width = 49
    Height = 13
    Caption = 'NILAI UTS'
  end
  object lbl4: TLabel
    Left = 80
    Top = 232
    Width = 69
    Height = 13
    Caption = 'NILAI HARIAN'
  end
  object lbl5: TLabel
    Left = 80
    Top = 264
    Width = 50
    Height = 13
    Caption = 'NILAI UAS'
  end
  object lbl6: TLabel
    Left = 392
    Top = 152
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lbl7: TLabel
    Left = 392
    Top = 184
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object lbl8: TLabel
    Left = 392
    Top = 216
    Width = 16
    Height = 13
    Caption = 'Ket'
  end
  object pnl1: TPanel
    Left = 192
    Top = 16
    Width = 353
    Height = 41
    Caption = 'CEK NILAI BOBOT SISWA'
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 200
    Top = 80
    Width = 65
    Height = 41
    Caption = 'Nilai'
    TabOrder = 1
  end
  object pnl3: TPanel
    Left = 288
    Top = 80
    Width = 73
    Height = 41
    Caption = 'Bobot'
    TabOrder = 2
  end
  object Edtnilai1: TEdit
    Left = 200
    Top = 136
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object Edtnilai2: TEdit
    Left = 200
    Top = 168
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object EdtNilai3: TEdit
    Left = 200
    Top = 200
    Width = 65
    Height = 21
    TabOrder = 5
  end
  object Edt1: TEdit
    Left = 200
    Top = 232
    Width = 65
    Height = 21
    TabOrder = 6
  end
  object Edt3: TEdit
    Left = 200
    Top = 264
    Width = 65
    Height = 21
    TabOrder = 7
  end
  object Edtnilai4: TEdit
    Left = 288
    Top = 136
    Width = 81
    Height = 21
    TabOrder = 8
  end
  object Edtnilai5: TEdit
    Left = 288
    Top = 168
    Width = 81
    Height = 21
    TabOrder = 9
  end
  object Edtnilai6: TEdit
    Left = 288
    Top = 200
    Width = 81
    Height = 21
    TabOrder = 10
  end
  object Edt2: TEdit
    Left = 288
    Top = 232
    Width = 81
    Height = 21
    TabOrder = 11
  end
  object Edt4: TEdit
    Left = 288
    Top = 264
    Width = 81
    Height = 21
    TabOrder = 12
  end
  object btn1: TButton
    Left = 200
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 13
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 288
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 14
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 392
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 15
    OnClick = btn3Click
  end
  object Edttotal: TEdit
    Left = 432
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 16
  end
  object Edtgrade: TEdit
    Left = 432
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 17
  end
  object Edtket: TEdit
    Left = 432
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 18
  end
end
