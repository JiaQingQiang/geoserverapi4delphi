object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'geoserver4delphi'
  ClientHeight = 308
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 101
    Height = 15
    Caption = 'get layerlist rest api'
  end
  object Label2: TLabel
    Left = 16
    Top = 75
    Width = 104
    Height = 15
    Caption = 'new layer conf path'
  end
  object Label3: TLabel
    Left = 16
    Top = 184
    Width = 118
    Height = 15
    Caption = 'get layergroup rest api'
  end
  object Label4: TLabel
    Left = 16
    Top = 227
    Width = 104
    Height = 15
    Caption = 'new layer conf path'
  end
  object Button1: TButton
    Left = 657
    Top = 72
    Width = 169
    Height = 33
    Caption = 'add layer 2 geoserver'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EditLayeraddrestapi: TEdit
    Left = 143
    Top = 29
    Width = 508
    Height = 33
    AutoSize = False
    TabOrder = 1
    Text = 
      'http://{geo service}/workspaces/{workspaceName}/datastores/{data' +
      'storeName}/featuretypes'
  end
  object EditLayeraddconf: TEdit
    Left = 143
    Top = 72
    Width = 508
    Height = 33
    AutoSize = False
    TabOrder = 2
    Text = 'C:\Users\NE1620\Desktop\test.xml'
  end
  object EditLayergroupAppendlayer: TEdit
    Left = 143
    Top = 181
    Width = 508
    Height = 33
    AutoSize = False
    TabOrder = 3
    Text = 
      'http://{geo service}/workspaces/{workspace}/layergroups/{layergr' +
      'oup}'
  end
  object EditLayergroupconf: TEdit
    Left = 143
    Top = 224
    Width = 508
    Height = 33
    AutoSize = False
    TabOrder = 4
    Text = 'C:\Users\NE1620\Desktop\test.xml'
  end
  object Button2: TButton
    Left = 657
    Top = 224
    Width = 169
    Height = 33
    Caption = 'layergroup append layer'
    TabOrder = 5
    OnClick = Button2Click
  end
end
