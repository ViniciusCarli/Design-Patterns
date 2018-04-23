unit UnFold;

interface

uses
  Machine;

type
  TUnfolder = class(TInterfacedObject, IMachine)
    procedure Execute;
  end;
implementation

{ TUnfolder }

procedure TUnfolder.Execute;
begin
  Writeln('Unfolding Taps');
end;

end.

