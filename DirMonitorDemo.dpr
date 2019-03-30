program DirMonitorDemo;

uses
  Vcl.Forms,
  Dirmon in 'Dirmon.pas' {DirNotifyDemo},
  Monitor in 'Monitor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDirNotifyDemo, DirNotifyDemo);
  Application.Run;
end.
