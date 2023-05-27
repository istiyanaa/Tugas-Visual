object Form9: TForm9
  Left = 226
  Top = 176
  Width = 928
  Height = 480
  Caption = 'MENU FORM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 24
    Top = 16
    object FILE1: TMenuItem
      Caption = 'FILE'
      object mniKALKULATOR1: TMenuItem
        Caption = 'KALKULATOR'
        OnClick = mniKALKULATOR1Click
      end
      object mniKONDISIONAL11: TMenuItem
        Caption = 'KONDISIONAL 1'
        OnClick = mniKONDISIONAL11Click
      end
      object mniKONDISIONAL1: TMenuItem
        Caption = 'KONDISIONAL 2'
        OnClick = mniKONDISIONAL1Click
      end
      object mniDATAGRAFIK11: TMenuItem
        Caption = 'DATA GRAFIK 1'
        OnClick = mniDATAGRAFIK11Click
      end
      object mniDATAGRAFIK21: TMenuItem
        Caption = 'DATA GRAFIK 2'
        OnClick = mniDATAGRAFIK21Click
      end
      object mniJADWALPRAKTIKUM1: TMenuItem
        Caption = 'JADWAL PRAKTIKUM'
        OnClick = mniJADWALPRAKTIKUM1Click
      end
      object mniINFORMASIPENYAKIT1: TMenuItem
        Caption = 'INFORMASI PENYAKIT'
        OnClick = mniINFORMASIPENYAKIT1Click
      end
    end
    object LATIHAN1: TMenuItem
      Caption = 'LATIHAN'
      object mniPRAKTEKMANDIRI11: TMenuItem
        Caption = 'PRAKTEK MANDIRI 1'
        OnClick = mniPRAKTEKMANDIRI11Click
      end
    end
    object mniDATABASE1: TMenuItem
      Caption = 'DATABASE'
    end
    object mniLAPORAN1: TMenuItem
      Caption = 'LAPORAN'
    end
  end
end
