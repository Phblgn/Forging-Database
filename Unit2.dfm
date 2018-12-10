object Form2: TForm2
  Left = 225
  Top = 110
  Width = 312
  Height = 397
  Caption = #1057#1087#1080#1089#1086#1082' '#1090#1072#1073#1083#1080#1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 176
    Top = 280
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 209
    Height = 233
    Hint = 
      #1042' '#1094#1077#1083#1103#1093' '#1087#1088#1077#1076#1086#1090#1074#1088#1072#1097#1077#1085#1080#1103' '#1086#1096#1080#1073#1086#1082' '#1090#1072#1073#1083#1080#1094#1099' '#1089' '#1087#1088#1080#1089#1090#1072#1074#1082#1072#1084#1080' itgdata '#1080' it' +
      'gfunc '#1086#1090#1082#1088#1099#1074#1072#1090#1100' '#1079#1072#1087#1088#1077#1097#1077#1085#1086
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = mySQLQuery1
    Left = 232
    Top = 320
  end
  object mySQLQuery1: TmySQLQuery
    Database = Form1.mySQLDatabase1
    Filtered = True
    Left = 192
    Top = 320
  end
end
