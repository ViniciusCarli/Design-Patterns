program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  LED in 'LED.pas',
  Invoker in 'Invoker.pas',
  NoCommand in 'NoCommand.pas',
  Controller in 'Controller.pas',
  CommandInterface in 'CommandInterface.pas';

var
  Invoker : TInvoker;
  LED : TLED;
  LEDAzul : TBlueCommand;
  LEDRed : TRedCommand;
  LEDGreen : TGreenCommand;
  LEDPurple : TPurpleCommand;
  LEDOff : TOffCommand;

begin
  Invoker := TInvoker.Create;
  LED := TLED.Create;

  LEDAzul := TBlueCommand.Create(LED);
  LEDRed := TRedCommand.Create(LED);
  LEDPurple := TPurpleCommand.Create(LED);
  LEDGreen := TGreenCommand.Create(LED);
  LEDOff := TOffCommand.Create(LED);
  try
    { TODO -oUser -cConsole Main : Insert code here }
    try
      Invoker.setCommand(1, LEDAzul, LEDOff);
      Invoker.setCommand(2, LEDRed, LEDOff);
      Invoker.setCommand(3, LEDGreen, LEDOff);
      Invoker.SetCommand(4, LEDPurple, LEDOff);

      Invoker.OnButton(1);
      Invoker.OnButton(2);
      Invoker.OnButton(3);
      Invoker.OnButton(4);
      Invoker.UndoButton;
    finally
    Readln;
    Invoker.Free;
    LED.Free;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
