unit PopcornMachine;

interface
type
  TPopCornMachine = class
    procedure MachineOn;
    procedure MachineOff;
    procedure Pop;
  end;

implementation

{ TPopCornMachine }

procedure TPopCornMachine.MachineOff;
begin
  Writeln('Pipoqueira Desligada');
end;

procedure TPopCornMachine.MachineOn;
begin
  Writeln('Pipoqueira Ligada');
end;

procedure TPopCornMachine.Pop;
begin
  Writeln('Estourando Pipocas');
end;

end.
