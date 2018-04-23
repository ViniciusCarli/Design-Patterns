unit MachineTrack;

interface

uses
  Machine;

type
  TTrack = class(TInterfacedObject, IMachine)
  public
    Actions : IExecutionsArray;
    Procedure Execute;
    Procedure AddonTrack;
  end;

implementation

{ TTrack }

procedure TTrack.AddonTrack;
begin
  Actions := Actions + [Actions]
end;

procedure TTrack.Execute;
var Action : TTrack;
begin
  for Action in Actions do
    begin
      Action.Execute;
    end;

end;

end.
