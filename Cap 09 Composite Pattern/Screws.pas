unit Screws;

interface

uses
  Machine;

type
  TScrewScrews = class(TInterfacedObject, IMachine)
    procedure Execute;
  end;
implementation

{ TScrewScrews }

procedure TScrewScrews.Execute;
begin
  Writeln('Screwing Screws');
end;

end.
