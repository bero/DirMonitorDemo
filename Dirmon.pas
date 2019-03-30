unit Dirmon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Monitor, Vcl.StdCtrls;

type
  TDirNotifyDemo = class(TForm)
    btnStart: TButton;
    memLog: TMemo;
    txtCurrentdir: TEdit;
    btnSelectDir: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSelectDirClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
  private
    fDirMon: TDirectoryMonitor;
    fStarted: Boolean;
    procedure DirChange(Sender: TObject; Action: TDirectoryMonitorAction; const FileName: string);
  public
    { Public declarations }
  end;

var
  DirNotifyDemo: TDirNotifyDemo;

implementation

uses
  System.IOUtils,
  Vcl.FileCtrl;

{$R *.dfm}

procedure TDirNotifyDemo.btnSelectDirClick(Sender: TObject);
var
  vDir: String;
begin
  if SelectDirectory(vDir, [sdAllowCreate, sdPerformCreate, sdPrompt], 1000) then
  begin
    fDirMon.Stop;
    txtCurrentdir.Text := vDir;
    fDirMon.Directory := vDir;
    fDirMon.Start;
  end;
end;

procedure TDirNotifyDemo.btnStartClick(Sender: TObject);
begin
  fStarted := not fStarted;

  if fStarted then
  begin
    btnStart.Caption := 'Stop';
    FDirMon.Start;
  end
  else
  begin
    btnStart.Caption := 'Start';
    fDirMon.Stop;
  end;
end;

procedure TDirNotifyDemo.DirChange(Sender: TObject; Action: TDirectoryMonitorAction; const FileName: string);
Const
  ActionDesc: Array [TDirectoryMonitorAction] Of String =
   ('Unknown action',
    'FILE_ACTION_ADDED. The file %s was added to the directory.',
    'FILE_ACTION_REMOVED. The file %s was removed from the directory.',
    'FILE_ACTION_MODIFIED. The file %s was modified. This can be a change in the time stamp or attributes.',
    'FILE_ACTION_RENAMED_OLD_NAME. The file %s was renamed, and this is the old name.',
    'FILE_ACTION_RENAMED_NEW_NAME The file %s was renamed and this is the new name.');
begin
  memLog.Lines.Add(Format(ActionDesc[Action],[FileName]));
end;

procedure TDirNotifyDemo.FormCreate(Sender: TObject);
begin
  fDirMon := TDirectoryMonitor.Create;
  fDirMon.OnChange := DirChange;
  fDirMon.Actions := [awChangeFileName, awChangeDirName, awChangeSize, awChangeLastWrite];
  txtCurrentdir.Text := TPath.GetDocumentsPath;
  fDirMon.Directory := txtCurrentdir.Text;
end;

procedure TDirNotifyDemo.FormDestroy(Sender: TObject);
begin
  fDirMon.Free;
end;

end.
