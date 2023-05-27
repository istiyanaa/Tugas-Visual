object Form7: TForm7
  Left = 245
  Top = 135
  Width = 928
  Height = 480
  Caption = 'Informasi Jadwal Praktikum Reguler'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 712
    Top = 32
    Width = 145
    Height = 25
    Caption = 'TAMPILKAN DATA GRAFIK'
    TabOrder = 0
    OnClick = btn1Click
  end
  object cht1: TChart
    Left = 80
    Top = 224
    Width = 641
    Height = 169
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      '')
    TabOrder = 1
    object brsrsSeries1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object btn2: TButton
    Left = 624
    Top = 32
    Width = 75
    Height = 25
    Caption = 'PRINT'
    TabOrder = 2
  end
  object btn3: TButton
    Left = 536
    Top = 32
    Width = 75
    Height = 25
    Caption = 'LOAD DATA'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 392
    Top = 32
    Width = 123
    Height = 25
    Caption = 'TAMBAH DATA BARU'
    TabOrder = 4
  end
  object dbgrd1: TDBGrid
    Left = 88
    Top = 88
    Width = 641
    Height = 120
    DataSource = ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Latihan_delphi1\' +
      'jadwal_db.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 80
    Top = 16
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 120
    Top = 16
  end
  object qry2: TADOQuery
    Parameters = <>
    Left = 832
    Top = 64
  end
end
