object Form1: TForm1
  Left = 300
  Top = 149
  Width = 644
  Height = 705
  HorzScrollBar.Smooth = True
  VertScrollBar.ButtonSize = 3
  VertScrollBar.Color = clBtnText
  VertScrollBar.ParentColor = False
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = #1041#1044' '#1055#1086#1082#1086#1074#1082#1080
  Color = clSilver
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ScreenSnap = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  DesignSize = (
    636
    671)
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 352
    Top = 288
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 385
    Height = 57
    Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 31
      Height = 13
      Caption = #1051#1086#1075#1080#1085
    end
    object Label3: TLabel
      Left = 192
      Top = 24
      Width = 38
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object Edit2: TEdit
      Left = 48
      Top = 16
      Width = 121
      Height = 19
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 240
      Top = 16
      Width = 121
      Height = 19
      PasswordChar = '*'
      TabOrder = 1
    end
    object Button4: TButton
      Left = 80
      Top = 40
      Width = 201
      Height = 17
      Caption = '&'#1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 56
    Width = 635
    Height = 217
    Hint = #1058#1072#1073#1083#1080#1094#1072' '#1089' '#1076#1072#1085#1085#1099#1084#1080
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    DataSource = DataSource1
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 320
    Width = 635
    Height = 105
    Hint = #1058#1072#1073#1083#1080#1094#1072' '#1089' '#1076#1072#1085#1085#1099#1084#1080
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    DataSource = DataSource2
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 472
    Width = 635
    Height = 80
    Hint = #1058#1072#1073#1083#1080#1094#1072' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1088#1072#1089#1095#1077#1090#1072
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    DataSource = DataSource3
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 568
    Width = 305
    Height = 97
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    TabOrder = 4
    object Label4: TLabel
      Left = 8
      Top = 48
      Width = 96
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1072#1073#1083#1080#1094#1099
    end
    object Edit4: TEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 19
      Hint = #1053#1077' '#1086#1090#1082#1088#1099#1074#1072#1081#1090#1077' '#1092#1072#1081#1083#1099' '#1089' '#1087#1088#1080#1089#1090#1072#1074#1082#1072#1084#1080' "itgData" '#1080#1083#1080' "itgFunc"'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 240
      Top = 40
      Width = 57
      Height = 25
      Caption = '&'#1054#1090#1082#1088#1099#1090#1100
      Enabled = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 72
      Width = 137
      Height = 17
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1072#1073#1083#1080#1094
      Enabled = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 312
    Top = 568
    Width = 315
    Height = 97
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1090#1072#1073#1083#1080#1094#1091
    TabOrder = 5
    object Label5: TLabel
      Left = 16
      Top = 48
      Width = 96
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1072#1073#1083#1080#1094#1099
    end
    object Edit5: TEdit
      Left = 120
      Top = 40
      Width = 121
      Height = 19
      TabOrder = 0
    end
    object Button3: TButton
      Left = 248
      Top = 40
      Width = 57
      Height = 25
      Caption = '&'#1057#1086#1079#1076#1072#1090#1100
      Enabled = False
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 272
    Width = 320
    Height = 25
    DataSource = DataSource1
    TabOrder = 6
  end
  object Button5: TButton
    Left = 472
    Top = 24
    Width = 105
    Height = 25
    Caption = '&'#1069#1082#1089#1087#1086#1088#1090' '#1090#1072#1073#1083#1080#1094
    TabOrder = 7
    OnClick = Button5Click
  end
  object mySQLDatabase1: TmySQLDatabase
    DatabaseName = 'paks'
    ConnectOptions = [coCompress]
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=paks')
    Left = 560
    Top = 8
  end
  object mySQLTable1: TmySQLTable
    AutoRefresh = True
    Database = mySQLDatabase1
    AfterPost = mySQLTable1AfterPost
    TableName = 'q'
    UpdateMode = upWhereChanged
    Left = 560
    Top = 40
  end
  object mySQLTable2: TmySQLTable
    AutoRefresh = True
    Database = mySQLDatabase1
    AfterPost = mySQLTable2AfterPost
    UpdateMode = upWhereChanged
    Left = 560
    Top = 72
  end
  object mySQLTable3: TmySQLTable
    AutoRefresh = True
    Database = mySQLDatabase1
    UpdateMode = upWhereChanged
    Left = 560
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = mySQLTable1
    Left = 560
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = mySQLTable2
    Left = 560
    Top = 160
  end
  object DataSource3: TDataSource
    DataSet = mySQLTable3
    Left = 560
    Top = 192
  end
  object mySQLQuery1: TmySQLQuery
    AutoRefresh = True
    Database = mySQLDatabase1
    Left = 560
    Top = 240
  end
  object Timer1: TTimer
    Interval = 4000
    OnTimer = Timer1Timer
    Left = 432
    Top = 24
  end
  object XLSReadWriteII1: TXLSReadWriteII
    Version = xvExcel97
    Formats = <
      item
        Name = 'Format 0'
        Protection = [cpLocked]
        HorizAlignment = chaGeneral
        VertAlignment = cvaBottom
        Indent = 1
        Rotation = 0
        FormatOptions = [foWrapText]
        FontIndex = 0
        FillPatternForeColor = xcAutomatic
        FillPatternBackColor = xcAutomatic
        FillPatternPattern = 0
        NumberFormat = '0'
        BorderTopColor = xcAutomatic
        BorderTopStyle = cbsMedium
        BorderLeftColor = xcAutomatic
        BorderLeftStyle = cbsMedium
        BorderRightColor = xcAutomatic
        BorderRightStyle = cbsMedium
        BorderBottomColor = xcBlack
        BorderBottomStyle = cbsMedium
        BorderDiagColor = xcBlack
        BorderDiagStyle = cbsMedium
        BorderDiagLines = dlDown
      end>
    Sheets = <
      item
        Name = 'Sheet 1'
        DefaultColWidth = 8
        DefaultRowHeight = 0
        PrintSettings.Copies = 1
        PrintSettings.MarginBottom = -1.000000000000000000
        PrintSettings.MarginLeft = -1.000000000000000000
        PrintSettings.MarginRight = -1.000000000000000000
        PrintSettings.MarginTop = -1.000000000000000000
        PrintSettings.Options = [psoPortrait]
        PrintSettings.PaperSize = psA4
        PrintSettings.ScalingFactor = 100
        PrintSettings.StartingPage = 1
        PrintSettings.RowsOnEachPage = '-1:-1'
        PrintSettings.ColsOnEachPage = '-1:-1'
        PrintSettings.HorizPagebreaks = <>
        PrintSettings.VertPagebreaks = <>
        PrintSettings.Resolution = 600
        MergedCells = <>
        Options = [soGridlines, soRowColHeadings, soShowZeros]
        WorkspaceOptions = [woShowAutoBreaks, woRowSumsBelow, woColSumsRight, woOutlineSymbols]
        CalcCount = 100
        Delta = 0.001000000000000000
        Zoom = 100
        ZoomPreview = 100
        RecalcFormulas = True
        Notes = <>
        SheetPictures = <>
        ColumnFormats = <>
        Charts = <>
        FixedRows = 0
        FixedCols = 0
        Validations = <>
      end>
    Workbook.Left = 100
    Workbook.Top = 100
    Workbook.Width = 10000
    Workbook.Height = 7000
    Workbook.SelectedTab = 0
    Workbook.Options = [woHScroll, woVScroll, woTabs]
    OptionsDialog.SaveExtLinkVal = False
    OptionsDialog.CalcCount = 0
    OptionsDialog.CalcMode = cmAutomatic
    OptionsDialog.ShowObjects = soShowAll
    OptionsDialog.Iteration = False
    OptionsDialog.PrecisionAsDisplayed = False
    OptionsDialog.R1C1Mode = False
    OptionsDialog.RecalcBeforeSave = False
    OptionsDialog.Uncalced = False
    Font.Name = 'Arial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = xcBlack
    Font.Size = 10
    Font.Style = []
    Font.SubSuperScript = xssNone
    Font.Underline = xulNone
    Codepage = 1200
    BookProtected = False
    Backup = False
    RefreshAll = False
    WriteUnicodeStrings = False
    FuncArgSeparator = ';'
    StrTRUE = 'TRUE'
    StrFALSE = 'FALSE'
    ShowFormulas = False
    PictureOptions = [poDeleteTempFiles]
    Pictures = <>
    IsMac = False
    AreaNames = <>
    PreserveMacros = False
    ComponentVersion = '1.15.02'
    ReadOnly = False
    Left = 392
    Top = 24
    Fonts = <
      item
        Name = 'Arial'
        Charset = DEFAULT_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = OEM_CHARSET
        Color = xcBlack
        Size = 11
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end>
  end
end
