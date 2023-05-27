object Form2: TForm2
  Left = 247
  Top = 147
  Width = 553
  Height = 480
  Caption = 'Tugas Mandiri'
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
    Left = 72
    Top = 40
    Width = 50
    Height = 13
    Caption = 'INPUTAN1'
  end
  object lbl2: TLabel
    Left = 72
    Top = 80
    Width = 50
    Height = 13
    Caption = 'INPUTAN2'
  end
  object edtnilai1: TEdit
    Left = 144
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtnilai2: TEdit
    Left = 144
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object grp1: TGroupBox
    Left = 64
    Top = 136
    Width = 369
    Height = 169
    Caption = 'NILAI DIPROSES'
    TabOrder = 2
    object lbl3: TLabel
      Left = 16
      Top = 32
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object lbl4: TLabel
      Left = 16
      Top = 64
      Width = 73
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object lbl5: TLabel
      Left = 16
      Top = 96
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object lbl6: TLabel
      Left = 16
      Top = 128
      Width = 56
      Height = 13
      Caption = 'HASIL BAGI'
    end
    object edt1: TEdit
      Left = 112
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 112
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt3: TEdit
      Left = 112
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt4: TEdit
      Left = 112
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Button1: TButton
      Left = 264
      Top = 32
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = Button1Click
    end
    object btn2: TButton
      Left = 264
      Top = 64
      Width = 75
      Height = 25
      Caption = '--'
      TabOrder = 5
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 264
      Top = 96
      Width = 75
      Height = 25
      Caption = 'x'
      TabOrder = 6
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 264
      Top = 128
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
      OnClick = btn4Click
    end
  end
  object btn1: TButton
    Left = 296
    Top = 48
    Width = 129
    Height = 41
    Caption = 'PROSES SEMUA'
    TabOrder = 3
    OnClick = btn1Click
  end
end
