object lisansForm: TlisansForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #220'r'#252'n Lisanslama'
  ClientHeight = 182
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
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
    Width = 481
    object lblSeriNO: TLabeledEdit
      Left = 168
      Top = 16
      Width = 297
      Height = 33
      EditLabel.Width = 121
      EditLabel.Height = 25
      EditLabel.Caption = #220'r'#252'n Seri No'
      LabelPosition = lpLeft
      ReadOnly = True
      TabOrder = 1
    end
    object lblAnahtar: TLabeledEdit
      Left = 168
      Top = 55
      Width = 297
      Height = 33
      EditLabel.Width = 142
      EditLabel.Height = 25
      EditLabel.Caption = 'Lisans Anahtar'#305
      LabelPosition = lpLeft
      TabOrder = 0
      Text = 'demo'
    end
  end
  object cxButton1: TcxButton
    AlignWithMargins = True
    Left = 301
    Top = 108
    Width = 96
    Height = 71
    Align = alRight
    Caption = 'Kaydet'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    AlignWithMargins = True
    Left = 403
    Top = 108
    Width = 75
    Height = 71
    Align = alRight
    Cancel = True
    Caption = #304'ptal'
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object MSQuery1: TUniQuery
    Left = 232
    Top = 88
  end
end
