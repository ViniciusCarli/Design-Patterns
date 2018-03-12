unit LightCommand;

interface

uses
  Light, CommandInterface;
type
  LightOnCommand = class(TInterfacedObject, ICommand)
    public
      constructor Create(Light: TLight);
      procedure Execute;
      procedure Undo;
    private
      Light : TLight;
  end;
  LightOffCommand = class(TInterfacedObject, ICommand)
    public
      constructor Create(Light: TLight);
      procedure Execute;
      procedure Undo;
    private
      Light : TLight;
  end;

implementation

{ LightOnCommand }

constructor LightOnCommand.Create(Light: TLight);
begin
  Self.Light := Light;
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

constructor LightOffCommand.Create(Light: TLight);
begin
  Self.Light := Light;
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
