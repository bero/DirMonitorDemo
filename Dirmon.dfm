object DirNotifyDemo: TDirNotifyDemo
  Left = 0
  Top = 0
  Caption = 'DirNotifyDemo'
  ClientHeight = 470
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    696
    470)
  PixelsPerInch = 96
  TextHeight = 13
  object btnStart: TButton
    Left = 8
    Top = 439
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Start'
    TabOrder = 0
    OnClick = btnStartClick
  end
  object memLog: TMemo
    Left = 0
    Top = 0
    Width = 696
    Height = 342
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
  end
  object txtCurrentdir: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 345
    Width = 690
    Height = 21
    Align = alTop
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 2
    Text = 'Documents'
  end
  object btnSelectDir: TButton
    Left = 8
    Top = 408
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Select dir'
    TabOrder = 3
    OnClick = btnSelectDirClick
  end
  object grpNotify: TGroupBox
    Left = 112
    Top = 372
    Width = 576
    Height = 92
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'What to monitor'
    TabOrder = 4
    object chkFileAdd: TCheckBox
      Left = 19
      Top = 20
      Width = 86
      Height = 17
      Caption = 'File added'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chkFileAddClick
    end
    object chkFileRemoved: TCheckBox
      Left = 19
      Top = 65
      Width = 86
      Height = 17
      Caption = 'File removed'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chkFileRemovedClick
    end
    object chkFileRenamed: TCheckBox
      Left = 19
      Top = 42
      Width = 86
      Height = 17
      Caption = 'File renamed'
      TabOrder = 2
      OnClick = chkFileRenamedClick
    end
    object chkFileModified: TCheckBox
      Left = 123
      Top = 20
      Width = 86
      Height = 17
      Caption = 'File Modified'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = chkFileModifiedClick
    end
  end
end
