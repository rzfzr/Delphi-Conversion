object Form1: TForm1
  Left = 39
  Top = 45
  BorderStyle = bsDialog
  Caption = 'SFM'
  ClientHeight = 510
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 224
    Top = 16
    Width = 92
    Height = 13
    Caption = 'pos (0,0) cor (0,0,0)'
  end
  object Label7: TLabel
    Left = 512
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Zoom'
  end
  object Panel1: TPanel
    Left = 8
    Top = 40
    Width = 609
    Height = 345
    Caption = 'Panel1'
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 8
      Top = 8
      Width = 593
      Height = 329
      TabOrder = 0
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 425
        Height = 305
        AutoSize = True
        OnMouseMove = Image1MouseMove
      end
    end
  end
  object LeituraImagem: TButton
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Leitura Imagem'
    TabOrder = 1
    OnClick = LeituraImagemClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 392
    Width = 449
    Height = 113
    Caption = 'Configura'#231#245'es'
    TabOrder = 2
    object Label1: TLabel
      Left = 25
      Top = 29
      Width = 11
      Height = 13
      Caption = 'R:'
    end
    object Label2: TLabel
      Left = 25
      Top = 53
      Width = 11
      Height = 13
      Caption = 'G:'
    end
    object Label3: TLabel
      Left = 26
      Top = 77
      Width = 10
      Height = 13
      Caption = 'B:'
    end
    object Label8: TLabel
      Left = 128
      Top = 54
      Width = 23
      Height = 13
      Caption = 'MIN:'
    end
    object Label4: TLabel
      Left = 128
      Top = 78
      Width = 26
      Height = 13
      Caption = 'MAX:'
    end
    object Label5: TLabel
      Left = 128
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Limiar'
    end
    object Rmin: TEdit
      Left = 48
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '255'
    end
    object Gmin: TEdit
      Left = 48
      Top = 48
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Bmin: TEdit
      Left = 48
      Top = 72
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Button2: TButton
      Left = 288
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Executa'
      Enabled = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Lmin: TEdit
      Left = 160
      Top = 49
      Width = 49
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object Lmax: TEdit
      Left = 160
      Top = 73
      Width = 49
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Button3: TButton
      Left = 136
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 6
    end
  end
  object Button1: TButton
    Left = 104
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Save Image'
    Enabled = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 464
    Top = 392
    Width = 153
    Height = 113
    Caption = 'Relat'#243'rio'
    TabOrder = 4
    object Label6: TLabel
      Left = 10
      Top = 32
      Width = 103
      Height = 13
      Caption = 'Contagem de cluster: '
    end
    object Label9: TLabel
      Left = 11
      Top = 48
      Width = 109
      Height = 13
      Caption = 'N'#250'mero de p'#237'xels total:'
    end
  end
  object Button4: TButton
    Left = 552
    Top = 8
    Width = 25
    Height = 25
    Caption = '+'
    Enabled = False
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 584
    Top = 8
    Width = 25
    Height = 25
    Caption = '-'
    Enabled = False
    TabOrder = 6
    OnClick = Button5Click
  end
  object OpenDialog1: TOpenDialog
    Left = 368
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 336
  end
end
