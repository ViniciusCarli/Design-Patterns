unit LightCommand;

interface

uses
  Light, CommandInterface;
type
  LightOnCommand = class(TInterfacedObject, ICommand)
    public
      constructor Create;
      procedure Execute;
      procedure Undo;
    private
      Light : TLight;
  end;
  LightOffCommand = class(TInterfacedObject, ICommand)
    public
      constructor Create;
      procedure Execute;
      procedure Undo;
    private
      Light : TLight;
  end;

implementation

{ LightOnCommand }

constructor LightOnCommand.Create;
begin
  Self.Light := TLight;
end;

procedure LightOnCommand.Execute;
begin
  Self.Light.LightsUp;
end;

procedure LightOnCommand.Undo;
begin
  Self.Light.LightsOff;
end;

{ LightOffCommand }

constructor LightOffCommand.Create;
begin
  Self.Light := TLight;
end;

procedure LightOffCommand.Execute;
begin
  Self.Light.LightsOff;
end;

procedure LightOffCommand.Undo;
begin
  Self.Light.LightsUp;
end;

end.
