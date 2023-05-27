object Form6: TForm6
  Left = 204
  Top = 163
  Width = 928
  Height = 480
  Caption = 'Menampilkan Data Digrafik dan Stringgrd 2'
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
  object lbl1: TLabel
    Left = 48
    Top = 24
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object lbl2: TLabel
    Left = 48
    Top = 56
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object lbl3: TLabel
    Left = 48
    Top = 88
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object edt1: TEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 56
    Top = 128
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 1
    OnClick = btn1Click
  end
  object cbb1: TComboBox
    Left = 176
    Top = 24
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object cbb2: TComboBox
    Left = 176
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
  end
  object StringGrid1: TStringGrid
    Left = 400
    Top = 24
    Width = 377
    Height = 120
    TabOrder = 4
    ColWidths = (
      64
      66
      64
      64
      64)
  end
  object btn2: TButton
    Left = 184
    Top = 128
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 280
    Top = 128
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 6
    OnClick = btn3Click
  end
  object cht1: TChart
    Left = 40
    Top = 168
    Width = 400
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 7
    object psrsSeries1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
end
