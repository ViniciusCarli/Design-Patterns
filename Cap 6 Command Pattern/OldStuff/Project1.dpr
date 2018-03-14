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
  LEDCommand in 'LEDCommand.pas',
  NoCommand in 'NoCommand.pas';

var
  Invoker : TInvoker;
  Light : TLight;
  LED : TLED;
  LEDAzul : TBlueLED;
  LEDVerm : TRedLED;
  LEDRoxo : TPurpleLED;
  LEDVerde : TGreenLED;
  LEDOff : TOffLED;
  LightOn : LightOnCommand;
  LighOff : LightOffCommand;

begin
  Invoker := TInvoker.Create;
  Light := TLight.Create;
  LED := TLED.Create;
  LightOn := LightOnCommand.Create(Light);
  LighOff := LightOffCommand.Create(Light);

  LEDAzul := LEDAzul.Create(LED);
  LEDVerm := LEDVerm.Create(LED);
  LEDRoxo := LEDRoxo.Create(LED);
  LEDVerde := LEDVerde.Create(LED);
  try
  try
//    LED.CriarTList;
    Invoker.SetCommand(0, LightOn, LighOff);
    Invoker.SetCommand(1, LEDAzul, LEDOff);
    Invoker.SetCommand(2, LEDVerde, LEDOff);
    Invoker.SetCommand(3, LEDRoxo, LEDOff);
    Invoker.SetCommand(4, LEDVerm, LEDOff);

//    Invoker.OnButton(0);
//    Invoker.OnButton(1);
    Invoker.UndoButton;
    Invoker.OnButton(4);
    Invoker.OnButton(3);
    Invoker.UndoButton;
//    Invoker.OnButton(4);


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
