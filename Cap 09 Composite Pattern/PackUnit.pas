unit PackUnit;

interface

uses
  Machine;

type
  TPack = class(TInterfacedObject, IMachine)
    procedure Execute;
  end;
implementation

{ TScrewScrews }

procedure TPack.Execute;
begin
  Writeln('Packed');
end;

end.

