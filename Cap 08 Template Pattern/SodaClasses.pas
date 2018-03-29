unit SodaClasses;

interface

uses
  CokeConcreteClass, FantaConcreteClass;

type
  TNormalCoke = class(TCokeBeverage)
    protected
    procedure Mix; override;
    procedure addExtra; override;
  end;
  TNormalFanta = class(TFantaBeverage)
    protected
    procedure Mix; override;
    procedure addExtra; override;
  end;
  TCokeIceLime = class(TCokeBeverage)
    protected
    procedure Mix; override;
    procedure addExtra; override;
  end;

implementation

{ TNormalCoke }

procedure TNormalCoke.addExtra;
begin
  inherited;
  Writeln('Nothing');
end;

procedure TNormalCoke.Mix;
begin
  inherited;
  Writeln('Mixing Syrup with water');
end;

{ TNormalFanta }

procedure TNormalFanta.addExtra;
begin
  inherited;
  Writeln('Nothing');
end;

procedure TNormalFanta.Mix;
begin
  inherited;
  Writeln('Mixing Syrup with water');
end;

{ TCokeIceLime }

procedure TCokeIceLime.addExtra;
begin
  inherited;
  Writeln('Add Ice and Lime');
end;

procedure TCokeIceLime.Mix;
begin
  inherited;
  Writeln('Mixing Syrup and Water and Ice n Lime')
end;

end.
