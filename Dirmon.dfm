object DirNotifyDemo: TDirNotifyDemo
  Left = 0
  Top = 0
  Caption = 'DirNotifyDemo'
  ClientHeight = 317
  ClientWidth = 818
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
    818
    317)
  PixelsPerInch = 96
  TextHeight = 13
  object btnStart: TButton
    Left = 8
    Top = 286
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
    Width = 818
    Height = 225
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
  end
  object txtCurrentdir: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 228
    Width = 812
    Height = 21
    Align = alTop
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 2
    Text = 'Documents'
  end
  object btnSelectDir: TButton
    Left = 8
    Top = 255
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Select dir'
    TabOrder = 3
    OnClick = btnSelectDirClick
  end
end
