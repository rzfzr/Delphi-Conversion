object Form2: TForm2
  Left = 156
  Top = 112
  Width = 656
  Height = 679
  Caption = 
    'PIC-SC 0.1 - Photometric Image Converter for Solution Concentrat' +
    'ion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 56
    Top = 8
    Width = 201
    Height = 41
    Caption = 'Calcular Absorv'#226'ncia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
      F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000E0E0E2021203030304040
      404C4C4C5555555858585B5B5B5D5C5C5958595250524444443B3A3B2E2C2E18
      1618090A0A000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF5A57578A8A89FFFFFFE0E0E0DADADADCDCDCDBDADAD8D8
      D8D4D2D3D3D3D3D5D4D4D3D3D3CFCECFCDCCCCD2D1D1D2D1D1D0D1D1CECDCDCE
      CDCEFFFFFF8B8A8A91908EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF423F3EC4C3C2FFFFFF82807EA5A2A1767474C4C4C57A77
      78858382767472A09F9F999798807E7D939290767575DEDEDF73717083817E6C
      6A68FFFFFFC0BFBF525050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF474544C8C7C6FFFFFF767373A5A4A5646263C9C8CA6967
      688785856A68699B9A9C9291927A78789896956D696CDADADB6764619C979678
      7471FFFFFFCDCCCC5C5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF494646BEBDBCFFFFFFF7F8F8F5F5F5F9FAFAFAFAFAF8F8
      F8F4F3F4F5F4F5F7F7F7F5F6F5F0F0F1EEEEEEF7F6F7F1F2F25B5956B0AFAD75
      716FFFFFFFD1D0D060605FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF494746C6C5C4FFFFFF9B9A9AA8A7A5A2A1A1E4E3E5A19F
      9EAFACAC9D9A9AC6C5C5BFBEBF9D9B9BA9A7A7A5A2A2E2E2E24F4B4A7F7D7B5B
      5955FFFFFFD2D1D262605FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4B4946CFCECDFFFFFF514D4D7B7978484445C5C5C74A47
      478885855B57588A898A838283635F5F8E8B8B4E4B4CDFE0E05351507B787559
      5654FFFFFFCFCECE62605FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4A4948C4C1C2FFFFFFEFEEEFF0F1F0EFEEEFFBFAFAEEEE
      EEEEEEEFEAEBEBF3F3F3F1F0F1E8E9E9EAEBEBE9E9E9F3F3F3E8E7E8E9E9E9E4
      E4E4FFFFFFC2C1C2626060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4B4A49C3C4C3FFFFFFD4D3D3D3D2D2DCDBDBF8F9F9DAD9
      D9CFCECFCDCDCCE9E8E9E4E4E4C8C9C8C8C7C8D3D1D1E9E9E9CECDCDC1BFC1C0
      BFBFFFFFFFC3C3C2636161FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4D4B49D2D2D1FFFFFF5652528C8A88434040CCCBCC4644
      4482807E514D4D908E8F848384676565888584494746C5C6C54E4B4B7A78764E
      4C4AFFFFFFCFCECE656363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4D4B4ACAC9C8FFFFFFA8A7A8BDBDBDA8A7A8F1F0F1A7A6
      A7C0BFC0A4A3A4CECFCFC6C6C6A9A8A9B7B6B8A3A1A3E3E3E4A2A1A1AEADAD9A
      999CFFFFFFC9C8C8656363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4E4C4BC6C5C4FFFFFFFFFFFFFAFBFBFFFFFFFFFFFFFFFF
      FFF2F1F3F9F7F9FFFFFFFDFDFDF1F1F1EAEBEBF6F5F7F3F4F3F2F2F2E5E5E5E8
      E7E8FFFFFFC3C4C2666464FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF504E4CD3D2D1FFFFFF666361878583676564DFE0DF6764
      649F9E9D6A6766ABAAAAA1A0A0716E6D939290696666D7D6D766646494909067
      6363FFFFFFD0D0CF676666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF514F4DD4D3D2FFFFFF716F70AAA7A9727172E5E4E66F6E
      6FAAABAA747273B1B0B1A5A4A6807D7FA6A5A6706F70DCDCDC6E6D6EA7A7A873
      7172FFFFFFD1D0D0686766FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF514F4EC9C8C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFDFDFDFFFFFFFFFFFFFFFFFFFCFDFDF4F5F6FFFFFFFBFAF9FEFEFEEFEEF0F4
      F3F3FFFFFFC7C6C6696868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF51504FD1D0CFFFFFFFA29F9FB5B3B1A8A7A7FAFBFAA7A6
      A8B3B2B2A4A1A1D6D5D6CCCDCCA6A4A3ADACAAA7A6A6EEEDEE9F9E9EA9A8A797
      9595FFFFFFCFCECE6A6968FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF535251DAD9DAFFFFFF514F4F827F80454343D9D8D95352
      52A6A5A5625F5F9594968886877D7A7AA3A2A2585657D2D1D24947488B888852
      504FFFFFFFD7D7D66C6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF545251CECDCCFFFFFFF3F4F5F5F5F5FAFAFAFFFFFFF5F4
      F5EAE9EAECECEDFFFFFFFFFFFFE3E3E3E5E6E6EDECEDFFFFFFE9E9EBE1E1E3DD
      DCDDFFFFFFCCCBCB6E6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF555351D4D3D2FFFFFFB6B5B4B8B5B4B4B3B3FFFFFFB7B6
      B5BCB9B9A5A3A3DEDEDEDADADAAFAEACBAB9B9B2B1B1F8F8F8ACABAAB6B5B5AD
      ACACFFFFFFD2D1D16E6E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF565453DFDEDDFFFFFF727070817F7F525051DADBDC5E5D
      5D939090514F4E9E9B9C8C8B8C635F5F8A88894A4849D8D8DA4B494A8D8A8B57
      5354FFFFFFDBDADA706F6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF575553D2D1D0FFFFFFF8F8F8F8F8F8FFFFFFFFFFFFFEFE
      FEF4F4F4F3F3F3FFFFFFFFFFFFEFEEEFF4F3F4F6F6F6FFFFFFF2F3F2F0EEF0E4
      E3E4FFFFFFD1D0CF70706FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF5A5854D9D8D7FFFFFFE4E4E4E9E8EAE8E7E8E0DFE0E7E5
      E6E6E5E7E6E5E6DEDDDEDFDEDEE3E2E2E0DFE0E0DFE0D9D6D8DEDDDFDDDDDDD5
      D5D6FFFFFFD8D7D6737271FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF61605ECFCECD4E4D4E383436231C20251D23261E22281E
      242920242A20242A20262A20262A20252A21262B20272E26292D262B2C25293C
      383A585858D6D5D57B7A79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF646361CECDCE443F42646E6A9FC9B392BBA590B9A490BA
      A392BBA593BDA795BEA995BDA995BCA894BCA896BCA87C9F8D82A5937DA3905A
      645E514C4FD6D6D57F7E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF656362D4D2D1423C415E7167E6FFFFD0FFE7C9FDE1C1F9
      DCBBF6D5B4F4D0AFF1CCACF0CBACEFC9ADF2CCAEF2CC94CEAE90C8A9A5E9C33E
      5047534B50DCDBDA80807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF63605FD1CFCE484245586F63D9FFF2C8FDDEC5FBDCC4F9
      DBC4FADAC1F7D8BCF6D6B8F4D0B0F0CBA9EDC6A4ECC289CCA68DD4AC91DEB143
      5A4D554E53DBD9DA807E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF585655C2C0C14E494C39453E7FA68F779B85769986789A
      86779B86779B86789B85779A86779B87769A85739883739A846E977F689D7F32
      3F38585355CFCDCC737372FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4B4A47B5B4B35C5E5E433F423C353B3D35393C34393D34
      3A3D343A3E343A3E353B3F353B3F353B40363C40363C41373D44383E45384144
      4043656465C0BFC0666564FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF3C3B39D9D8D8F0EEEED9D9D9DBDBDBDCDBDBDBDBDBDBDB
      DBDBDBDBDBDADBDBDADADBD9D9DAD9DAD9D8D9D9D9D9D9D8D8D9D7D7D9D7D7D5
      D4D4E7E7E7DBDBDB747172FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4C4A48848484C2C1C29796969A99999A9A9A9A9A9A9A9A
      9A9A9A9A9A9A9A9B9A9A9A99999A9A9A98979798979796969696969695949492
      9191AFAEAE908F8F919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 8
    Width = 17
    Height = 41
    Caption = 'Atualizar Concentra'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = BitBtn2Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
      0000000000000000000000000000000000002F0A00501500320C000000000000
      000000000000000000004A13005C19015C19015C19015C19015C19015C19015C
      19015C1901501702310800000000000000000000000000FFFFFFFFFFFFFFFFFF
      FFFFFF0000000000000000000000005B190269260BAA704C8141235719022B07
      000000000000004417007B3B1DD19564C57B3FC57B3EC57B3EC57B3EC57B3EC6
      7D41D09462A065425A1802000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF621D027D3B1CC27F49BF6E2AC67D419A5D3A641E
      00FFFFFFFFFFFF550000641F02C27D45B6590CB45404B45404B45404B45404BA
      6118AE6E42641F025D1F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF672002844321C57E42BB6317BB6418C77D3EB9825A732E
      0E681300FFFFFFFFFFFF681F02AD6E43BC6419B65705B65705B65705B65705BE
      692082401D681E02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF69240084411CC78143BC6518BF6D23BA794684411C6B24006823
      00FFFFFFFFFFFFFFFFFF6B2200985A34C1712AB75A07B75A07B75A07B75A07BB
      6214C581477C37146B2400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF6F2200732B05C2834CBE691AC06E22B87A49732B05702300FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF6F22007C350FC8813EBA5F0BBC6413C06E21BE691ABA
      600DBF6A1CBD7F4C702802550000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF732902AB6E43C4752AC06C1AC3834A762C04712900FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF752800C18149C16F20C8823F904B20B87742C2
      7123BC640FC67A319D5D33752600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      5539007C3104CB8A4CBF6B17C88038914C1F792D00FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF762B00AF7244D093559C5A2C772B007E3206C5
      864AC06D1ABF6C18C7894E7A2E01555500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      7B2F009E5B2BC88034C2711CC2844A7E2F00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF7E30009A5525AB6C3C7E3000FFFFFF7C300097
      5121CA8339BF6B13C983399D5A2A803100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      813200BE834DC67925C87D2CAE6E3C843300FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFAA5500843402843300883300FFFFFFFFFFFF83
      3300C2864BC5751FC77A26B77A45833300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      873600C98C4EC6761CCD8738A15A25873900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA5500FFFFFFFFFFFFFFFFFFFFFFFF88
      3800AC6A36CB8332C5761BCB8F4F873700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      8D3900D0944FC6771ACF8D3E9E531A8C3C00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90
      3B009A4D14D08E40C57516D3964E8E3B02AA5500FFFFFFFFFFFFFFFFFFFFFFFF
      923D00E0B888DBA869E1B580AD6A34923D00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E
      3900974408E3BD8DDCAA6DE4BE8F9A490D994400FFFFFFFFFFFFFFFFFFFFFFFF
      974100DEB587DEAE71E1B680BF8550984300FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C
      4700A04F10E5C192DFB176E6C497984200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      9C4400D9AD7FE1B67CE1B67CD6A7779E4600FFFFFFFFFFFFFFFFFFFFFFFF9C47
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98
      4300B9773EE6C393E3BA83E3BF949C4500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      A14A00CA925DE5BF88E1B679E6C494A8540EA34700FFFFFFFFFFFF9E4600A956
      119A4500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1
      4700DAB081E6C391E7C492DBB285A14900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      AA4600B3641FE9C998E4BA7DE6C189D5A570A74B00FFFFFFA44C00BF7A3AD9AC
      7DA74D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA84B00B4
      6621ECCEA4E8C593ECCEA3C38244A34700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFAA4E00E0B787E7C28AE6BF83EAC997C58041AC5000B96921EACC9FE8C6
      9AAB4E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE4E00AE5406E8
      C99FECCD9FEBCD9FE9CAA2AB4F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFAE4E00C0732BEBCD9EE7C288E7C489EACC9BCB8A49E8C493E9C68EECCF
      A0B65B0CAA5500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB25000B55A0AE4C194EE
      D4AAEDD0A2F0D7B1C47B35B25300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB55700DAA971ECCD9AE8C58AE9C68CEAC992E9C78EE8C488ECCE
      9DC87F39B75500FFFFFFFFFFFFFFFFFFAA5500B35700BF6C1EEBCEA6F0D8B1EF
      D5AAF1DAB5DDAF7BB55700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB55500BA5B03E4BC89ECCE9AEAC88DEAC78CEAC78CEAC78CECCE
      9BD8A165B85A00FFFFFFFFFFFFAA5500BF6815DEAE7AF2DEBCF1DBB4F1D9B1F2
      DDBAE7C397B75700AA5500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFBA5500BF6006E8C48CEBCA91EBC98EEBC98EEBC98EECCE
      98E4B984BC5A00FFFFFFFFFFFFBB5B00CC7F33F3E1C3F3E0BEF2DEB9F4E3C3E3
      BA88BC5A00BD5A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFBE5C00D5924BEFD4A3ECCD93ECCC92ECCC92ECCC92EDCE
      96EDCD9EC15F00FFFFFFFFFFFFFFFFFFBF5E00C9721CF1D9B7F2DEBDD48F48C2
      5E00C45E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC15B00D07F2DF4E2C0F2DCB2F1DAADF1DAADF1DAADF1DAADF1DA
      AEF4E2C0C7690DAA5500FFFFFFFFFFFFFFFFFFC56000C6680BC66607C15E00FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC86200C66200C76200C76200C76200C76200C76200C762
      00C66100C65F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA5500D55500FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 56
    Width = 617
    Height = 121
    Caption = 'Branco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label6: TLabel
      Left = 296
      Top = 48
      Width = 49
      Height = 20
      Caption = 'Abs B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 152
      Top = 48
      Width = 50
      Height = 20
      Caption = 'Abs R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 224
      Top = 48
      Width = 51
      Height = 20
      Caption = 'Abs G'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 68
      Height = 20
      Caption = 'Unidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 56
      Top = 80
      Width = 19
      Height = 20
      Caption = 'P0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit8: TEdit
      Left = 296
      Top = 80
      Width = 49
      Height = 24
      TabOrder = 0
    end
    object Edit7: TEdit
      Left = 224
      Top = 80
      Width = 49
      Height = 24
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 152
      Top = 80
      Width = 49
      Height = 24
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 88
      Top = 80
      Width = 49
      Height = 24
      TabOrder = 3
      Text = '0'
    end
    object Edit4: TEdit
      Left = 88
      Top = 48
      Width = 49
      Height = 24
      TabOrder = 4
      Text = 'mg/L'
    end
    object BitBtn3: TBitBtn
      Left = 384
      Top = 24
      Width = 49
      Height = 25
      Caption = 'BitBtn3'
      TabOrder = 5
      Visible = False
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 384
      Top = 56
      Width = 49
      Height = 25
      Caption = 'BitBtn4'
      TabOrder = 6
      Visible = False
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 384
      Top = 88
      Width = 49
      Height = 25
      Caption = 'BitBtn5'
      TabOrder = 7
      Visible = False
      OnClick = BitBtn5Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 192
    Width = 337
    Height = 425
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label8: TLabel
      Left = 24
      Top = 96
      Width = 19
      Height = 20
      Caption = 'P1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 24
      Top = 197
      Width = 19
      Height = 20
      Caption = 'P4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 133
      Width = 19
      Height = 20
      Caption = 'P2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 24
      Top = 165
      Width = 19
      Height = 20
      Caption = 'P3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 24
      Top = 229
      Width = 19
      Height = 20
      Caption = 'P5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 24
      Top = 261
      Width = 19
      Height = 20
      Caption = 'P6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 24
      Top = 293
      Width = 19
      Height = 20
      Caption = 'P7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 24
      Top = 325
      Width = 19
      Height = 20
      Caption = 'P8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 16
      Top = 389
      Width = 28
      Height = 20
      Caption = 'P10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 128
      Top = 48
      Width = 50
      Height = 20
      Caption = 'Abs R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 208
      Top = 48
      Width = 51
      Height = 20
      Caption = 'Abs G'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 280
      Top = 48
      Width = 49
      Height = 20
      Caption = 'Abs B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 24
      Top = 357
      Width = 19
      Height = 20
      Caption = 'P9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit48: TEdit
      Left = 64
      Top = 385
      Width = 49
      Height = 24
      TabOrder = 0
    end
    object Edit9: TEdit
      Left = 136
      Top = 96
      Width = 49
      Height = 24
      TabOrder = 1
    end
    object Edit10: TEdit
      Left = 136
      Top = 129
      Width = 49
      Height = 24
      TabOrder = 2
    end
    object Edit11: TEdit
      Left = 136
      Top = 161
      Width = 49
      Height = 24
      TabOrder = 3
    end
    object Edit12: TEdit
      Left = 136
      Top = 193
      Width = 49
      Height = 24
      TabOrder = 4
    end
    object Edit13: TEdit
      Left = 136
      Top = 225
      Width = 49
      Height = 24
      TabOrder = 5
    end
    object Edit14: TEdit
      Left = 136
      Top = 257
      Width = 49
      Height = 24
      TabOrder = 6
    end
    object Edit15: TEdit
      Left = 136
      Top = 289
      Width = 49
      Height = 24
      TabOrder = 7
    end
    object Edit16: TEdit
      Left = 136
      Top = 321
      Width = 49
      Height = 24
      TabOrder = 8
    end
    object Edit17: TEdit
      Left = 136
      Top = 353
      Width = 49
      Height = 24
      TabOrder = 9
    end
    object Edit18: TEdit
      Left = 136
      Top = 385
      Width = 49
      Height = 24
      TabOrder = 10
    end
    object Edit19: TEdit
      Left = 208
      Top = 96
      Width = 49
      Height = 24
      TabOrder = 11
    end
    object Edit20: TEdit
      Left = 208
      Top = 129
      Width = 49
      Height = 24
      TabOrder = 12
    end
    object Edit21: TEdit
      Left = 208
      Top = 161
      Width = 49
      Height = 24
      TabOrder = 13
    end
    object Edit22: TEdit
      Left = 208
      Top = 193
      Width = 49
      Height = 24
      TabOrder = 14
    end
    object Edit23: TEdit
      Left = 208
      Top = 225
      Width = 49
      Height = 24
      TabOrder = 15
    end
    object Edit24: TEdit
      Left = 208
      Top = 257
      Width = 49
      Height = 24
      TabOrder = 16
    end
    object Edit25: TEdit
      Left = 208
      Top = 289
      Width = 49
      Height = 24
      TabOrder = 17
    end
    object Edit26: TEdit
      Left = 208
      Top = 321
      Width = 49
      Height = 24
      TabOrder = 18
    end
    object Edit27: TEdit
      Left = 208
      Top = 353
      Width = 49
      Height = 24
      TabOrder = 19
    end
    object Edit28: TEdit
      Left = 208
      Top = 385
      Width = 49
      Height = 24
      TabOrder = 20
    end
    object Edit29: TEdit
      Left = 280
      Top = 96
      Width = 49
      Height = 24
      TabOrder = 21
    end
    object Edit30: TEdit
      Left = 280
      Top = 129
      Width = 49
      Height = 24
      TabOrder = 22
    end
    object Edit31: TEdit
      Left = 280
      Top = 161
      Width = 49
      Height = 24
      TabOrder = 23
    end
    object Edit32: TEdit
      Left = 280
      Top = 193
      Width = 49
      Height = 24
      TabOrder = 24
    end
    object Edit33: TEdit
      Left = 280
      Top = 225
      Width = 49
      Height = 24
      TabOrder = 25
    end
    object Edit34: TEdit
      Left = 280
      Top = 257
      Width = 49
      Height = 24
      TabOrder = 26
    end
    object Edit35: TEdit
      Left = 280
      Top = 289
      Width = 49
      Height = 24
      TabOrder = 27
    end
    object Edit36: TEdit
      Left = 280
      Top = 321
      Width = 49
      Height = 24
      TabOrder = 28
    end
    object Edit37: TEdit
      Left = 280
      Top = 353
      Width = 49
      Height = 24
      TabOrder = 29
    end
    object Edit38: TEdit
      Left = 280
      Top = 385
      Width = 49
      Height = 24
      TabOrder = 30
    end
    object Edit40: TEdit
      Left = 64
      Top = 129
      Width = 49
      Height = 24
      TabOrder = 31
    end
    object Edit41: TEdit
      Left = 64
      Top = 161
      Width = 49
      Height = 24
      TabOrder = 32
    end
    object Edit42: TEdit
      Left = 64
      Top = 193
      Width = 49
      Height = 24
      TabOrder = 33
    end
    object Edit43: TEdit
      Left = 64
      Top = 225
      Width = 49
      Height = 24
      TabOrder = 34
    end
    object Edit44: TEdit
      Left = 64
      Top = 257
      Width = 49
      Height = 24
      TabOrder = 35
    end
    object Edit45: TEdit
      Left = 64
      Top = 289
      Width = 49
      Height = 24
      TabOrder = 36
    end
    object Edit46: TEdit
      Left = 64
      Top = 321
      Width = 49
      Height = 24
      TabOrder = 37
    end
    object Edit47: TEdit
      Left = 64
      Top = 353
      Width = 49
      Height = 24
      TabOrder = 38
    end
    object Edit49: TEdit
      Left = 64
      Top = 48
      Width = 49
      Height = 24
      TabOrder = 39
      Text = 'mg/L'
    end
    object Edit39: TEdit
      Left = 64
      Top = 96
      Width = 49
      Height = 24
      TabOrder = 40
    end
  end
  object GroupBox3: TGroupBox
    Left = 352
    Top = 192
    Width = 281
    Height = 425
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label25: TLabel
      Left = 24
      Top = 194
      Width = 20
      Height = 20
      Caption = 'A4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 24
      Top = 98
      Width = 20
      Height = 20
      Caption = 'A1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 24
      Top = 130
      Width = 20
      Height = 20
      Caption = 'A2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 24
      Top = 162
      Width = 20
      Height = 20
      Caption = 'A3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 24
      Top = 226
      Width = 20
      Height = 20
      Caption = 'A5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 24
      Top = 253
      Width = 20
      Height = 20
      Caption = 'A6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 24
      Top = 285
      Width = 20
      Height = 20
      Caption = 'A7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 24
      Top = 317
      Width = 20
      Height = 20
      Caption = 'A8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 24
      Top = 349
      Width = 20
      Height = 20
      Caption = 'A9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 24
      Top = 381
      Width = 29
      Height = 20
      Caption = 'A10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 71
      Top = 40
      Width = 50
      Height = 20
      Caption = 'Abs R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 142
      Top = 40
      Width = 51
      Height = 20
      Caption = 'Abs G'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 216
      Top = 40
      Width = 49
      Height = 20
      Caption = 'Abs B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 72
      Top = 90
      Width = 49
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 72
      Top = 122
      Width = 49
      Height = 24
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 72
      Top = 154
      Width = 49
      Height = 24
      TabOrder = 2
    end
    object Edit50: TEdit
      Left = 72
      Top = 186
      Width = 49
      Height = 24
      TabOrder = 3
    end
    object Edit51: TEdit
      Left = 72
      Top = 218
      Width = 49
      Height = 24
      TabOrder = 4
    end
    object Edit52: TEdit
      Left = 72
      Top = 252
      Width = 49
      Height = 24
      TabOrder = 5
    end
    object Edit53: TEdit
      Left = 72
      Top = 284
      Width = 49
      Height = 24
      TabOrder = 6
    end
    object Edit54: TEdit
      Left = 72
      Top = 316
      Width = 49
      Height = 24
      TabOrder = 7
    end
    object Edit55: TEdit
      Left = 72
      Top = 348
      Width = 49
      Height = 24
      TabOrder = 8
    end
    object Edit56: TEdit
      Left = 72
      Top = 380
      Width = 49
      Height = 24
      TabOrder = 9
    end
    object Edit57: TEdit
      Left = 144
      Top = 90
      Width = 49
      Height = 24
      TabOrder = 10
    end
    object Edit58: TEdit
      Left = 144
      Top = 122
      Width = 49
      Height = 24
      TabOrder = 11
    end
    object Edit59: TEdit
      Left = 144
      Top = 154
      Width = 49
      Height = 24
      TabOrder = 12
    end
    object Edit60: TEdit
      Left = 144
      Top = 186
      Width = 49
      Height = 24
      TabOrder = 13
    end
    object Edit61: TEdit
      Left = 144
      Top = 218
      Width = 49
      Height = 24
      TabOrder = 14
    end
    object Edit62: TEdit
      Left = 144
      Top = 252
      Width = 49
      Height = 24
      TabOrder = 15
    end
    object Edit63: TEdit
      Left = 144
      Top = 284
      Width = 49
      Height = 24
      TabOrder = 16
    end
    object Edit64: TEdit
      Left = 144
      Top = 316
      Width = 49
      Height = 24
      TabOrder = 17
    end
    object Edit65: TEdit
      Left = 144
      Top = 348
      Width = 49
      Height = 24
      TabOrder = 18
    end
    object Edit66: TEdit
      Left = 144
      Top = 380
      Width = 49
      Height = 24
      TabOrder = 19
    end
    object Edit67: TEdit
      Left = 216
      Top = 90
      Width = 49
      Height = 24
      TabOrder = 20
    end
    object Edit68: TEdit
      Left = 216
      Top = 122
      Width = 49
      Height = 24
      TabOrder = 21
    end
    object Edit69: TEdit
      Left = 216
      Top = 154
      Width = 49
      Height = 24
      TabOrder = 22
    end
    object Edit70: TEdit
      Left = 216
      Top = 186
      Width = 49
      Height = 24
      TabOrder = 23
    end
    object Edit71: TEdit
      Left = 216
      Top = 218
      Width = 49
      Height = 24
      TabOrder = 24
    end
    object Edit72: TEdit
      Left = 216
      Top = 252
      Width = 49
      Height = 24
      TabOrder = 25
    end
    object Edit73: TEdit
      Left = 216
      Top = 284
      Width = 49
      Height = 24
      TabOrder = 26
    end
    object Edit74: TEdit
      Left = 216
      Top = 316
      Width = 49
      Height = 24
      TabOrder = 27
    end
    object Edit75: TEdit
      Left = 216
      Top = 348
      Width = 49
      Height = 24
      TabOrder = 28
    end
    object Edit76: TEdit
      Left = 216
      Top = 380
      Width = 49
      Height = 24
      TabOrder = 29
    end
  end
  object Button1: TButton
    Left = 384
    Top = 8
    Width = 169
    Height = 41
    Caption = 'Regress'#227'o Linear'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 512
    Top = 128
    object Imagem1: TMenuItem
      Caption = 'Imagem'
      OnClick = Imagem1Click
    end
    object RGB1: TMenuItem
      Caption = 'RGB'
      OnClick = RGB1Click
    end
    object Grfico1: TMenuItem
      Caption = 'Gr'#225'fico'
      OnClick = Grfico1Click
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Dicas1: TMenuItem
        Caption = 'Dicas'
        OnClick = Dicas1Click
      end
    end
  end
end
