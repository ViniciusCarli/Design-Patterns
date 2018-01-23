unit Unit1;

interface

type TDucktype = class

end;

type TRoyalDuck = class (TDucktype)

end;

type TRubberDuck = class (TDuckType)

end;

type TMandarinDuck = class (TDuckType)

end;

type TDuckfly = interface ['{B4A0A61D-CBA0-4AB7-AC84-DAB575E7769E}']
//  procedure Fly;
end;

TFly = class(TInterfacedObject,TDuckfly)
  procedure Voar;
end;

TWings = class(TFly)
  procedure Wings;
end;

TNoFly = class(Tfly)
  procedure NoFly;
end;

TRocket = class(Tfly)
  procedure Rocket;
end;

implementation

{ TWings }

procedure TWings.Wings;
begin
  Voar();
  Writeln('Voa utilizando Asas');
end;

{ TNoFly }

procedure TNoFly.NoFly;
begin
  Voar();
  Writeln('Não voa :(');
end;

{ TRocket }

procedure TRocket.Rocket;
begin
  Voar();
  Writeln('Vou utilizando um Fogete >:D');
end;

{ TFly }

procedure TFly.Voar;
begin
  Writeln('?');
end;

end.
