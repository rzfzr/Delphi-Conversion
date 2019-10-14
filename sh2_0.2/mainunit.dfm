object Main: TMain
  Left = 253
  Top = 50
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'EXTRACT RGB'
  ClientHeight = 543
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ImageScroll: TScrollBox
    Left = 8
    Top = 8
    Width = 449
    Height = 497
    TabOrder = 0
    object Image: TImage
      Left = 0
      Top = 0
      Width = 441
      Height = 489
      AutoSize = True
      OnMouseDown = GetMouseDown
    end
  end
  object LoadButton: TButton
    Left = 8
    Top = 512
    Width = 81
    Height = 25
    Caption = 'Load Image'
    TabOrder = 1
    OnClick = LoadButtonClick
  end
  object ProceedButton: TButton
    Left = 96
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Proceed'
    TabOrder = 2
    OnClick = ProceedButtonClick
  end
  object AnalysisBox: TGroupBox
    Left = 464
    Top = 8
    Width = 153
    Height = 257
    Caption = 'Analysis'
    TabOrder = 3
    object Average: TLabel
      Left = 7
      Top = 172
      Width = 3
      Height = 13
    end
    object LabelAverage: TLabel
      Left = 7
      Top = 156
      Width = 75
      Height = 13
      Caption = 'Average R G B:'
    end
    object DesviationLabel: TLabel
      Left = 7
      Top = 196
      Width = 99
      Height = 13
      Caption = 'Standard Desviation:'
    end
    object Desviation: TLabel
      Left = 7
      Top = 212
      Width = 3
      Height = 13
    end
    object LabelGeneralDesviation: TLabel
      Left = 7
      Top = 236
      Width = 93
      Height = 13
      Caption = 'General Desviation:'
    end
    object ReadPixels: TLabel
      Left = 7
      Top = 20
      Width = 59
      Height = 13
      Caption = 'Read Pixels:'
    end
    object rmax: TLabel
      Left = 7
      Top = 44
      Width = 40
      Height = 13
      Caption = 'R MAX.:'
    end
    object gmax: TLabel
      Left = 7
      Top = 60
      Width = 40
      Height = 13
      Caption = 'G MAX.:'
    end
    object bmax: TLabel
      Left = 7
      Top = 76
      Width = 39
      Height = 13
      Caption = 'B MAX.:'
    end
    object rmin: TLabel
      Left = 7
      Top = 100
      Width = 37
      Height = 13
      Caption = 'R MIN.:'
    end
    object gmin: TLabel
      Left = 7
      Top = 116
      Width = 37
      Height = 13
      Caption = 'G MIN.:'
    end
    object bmin: TLabel
      Left = 7
      Top = 132
      Width = 36
      Height = 13
      Caption = 'B MIN.:'
    end
  end
  object GroupBox1: TGroupBox
    Left = 464
    Top = 272
    Width = 153
    Height = 137
    Caption = 'Selection Options'
    TabOrder = 4
    object CheckBoxInv: TCheckBox
      Left = 9
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Color inversion'
      TabOrder = 0
      OnClick = CheckBoxInvClick
    end
    object ColorGrid: TColorGrid
      Left = 9
      Top = 65
      Width = 96
      Height = 64
      BackgroundEnabled = False
      TabOrder = 1
    end
    object CheckBoxFill: TCheckBox
      Left = 9
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Fill'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 464
    Top = 416
    Width = 153
    Height = 89
    Caption = 'Write Analysis'
    TabOrder = 5
    object AnalFile: TButton
      Left = 40
      Top = 24
      Width = 73
      Height = 25
      Caption = 'New File'
      TabOrder = 0
      OnClick = AnalFileClick
    end
    object WriteFile: TButton
      Left = 40
      Top = 56
      Width = 73
      Height = 25
      Caption = 'Write to File'
      TabOrder = 1
      OnClick = WriteFileClick
    end
  end
  object LoadImageDialog: TOpenPictureDialog
    Left = 248
    Top = 512
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Text Files|*.txt'
    Left = 216
    Top = 512
  end
end
