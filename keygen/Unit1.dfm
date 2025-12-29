object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 172
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 105
    Width = 615
    object lblSeriNO: TLabeledEdit
      Left = 168
      Top = 16
      Width = 297
      Height = 33
      EditLabel.Width = 121
      EditLabel.Height = 25
      EditLabel.Caption = #220'r'#252'n Seri No'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object lblAnahtar: TLabeledEdit
      Left = 168
      Top = 50
      Width = 297
      Height = 33
      EditLabel.Width = 142
      EditLabel.Height = 25
      EditLabel.Caption = 'Lisans Anahtar'#305
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object Button1: TButton
      Left = 471
      Top = 16
      Width = 130
      Height = 67
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
