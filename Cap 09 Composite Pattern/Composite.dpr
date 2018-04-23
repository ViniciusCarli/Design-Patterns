program Composite;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Machine in 'Machine.pas',
  Screws in 'Screws.pas',
  UnFold in 'UnFold.pas',
  MachineTrack in 'MachineTrack.pas',
  PackUnit in 'PackUnit.pas';

var
  Screw : IMachine;
  UFold : IMachine;
  Pack : IMachine;
  Action : TTrack;
begin
  Screw := TScrewScrews.Create;
  UFold := TUnFolder.Create;
  Pack := TPack.Create;
  Action := TTrack.Create;
  try
    Action.AddonTrack(Screw);
    Action.AddonTrack(UFold);
    Action.AddonTrack(Screw);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
