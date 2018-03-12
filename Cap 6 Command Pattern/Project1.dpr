program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CommandInterface in 'CommandInterface.pas',
  Light in 'Light.pas',
  LightCommand in 'LightCommand.pas',
  Invoker in 'Invoker.pas',
  Controller in 'Controller.pas',
  LED in 'LED.pas',
  LEDCommand in 'LEDCommand.pas';

var
  Invoker : TInvoker;
  Light : TLight;
  LED : TLED;
  LEDAzul : TLEDAzul;
  LEDVerm : TLEDVermelho;
  LEDRoxo : TLEDRoxo;
  LEDVerde : TLEDVerde;
  LEDOff : TLEDOff;
  LightOn : LightOnCommand;
  LighOff : LightOffCommand;

begin
  Invoker := TInvoker.Create;
  Light := TLight.Create;
  LED := TLED.Create;
  LightOn := LightOnCommand.Create(Light);
  LighOff := LightOffCommand.Create(Light);
  LEDAzul := LEDCommand.TLEDAzul.Create(LED);
  LEDVerm := LEDCommand.TLEDVermelho.Create(LED);
  LEDRoxo := LEDCommand.TLEDRoxo.Create(LED);
  LEDVerde := LEDCommand.TLEDVerde.Create(LED);
  try
  try
    LED.CriarTList;
    Invoker.SetCommand(0, LightOn, LighOff);
    Invoker.SetCommand(1, LEDAzul, LEDOff);
    Invoker.SetCommand(2, LEDVerm, LEDOff);
    Invoker.SetCommand(3, LEDRoxo, LEDOff);
    Invoker.SetCommand(4, LEDVerde, LEDOff);

    Invoker.OnButton(0);
    Invoker.OnButton(1);
    Invoker.OnButton(2);
    Invoker.OnButton(3);
    Invoker.OnButton(4);

    Invoker.UndoButton;

  finally
    Readln;
    Invoker.Free;
    Light.Free;
    LED.Free;
  end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
