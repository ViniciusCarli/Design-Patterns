unit Birbs;

interface

uses
  ColorBehavior, BeakBehavior;

type
  TBirbs = class
    public
      FColorBehavior : TColorBehavior;
      FBeakBehavior :TBeakBehavior;
      procedure Color;
      procedure Beak;
      constructor CreateColor(ColorBehavior : TColorBehavior);
      constructor CreateBeak(BeakBehavior : TBeakBehavior);
  end;

implementation

{ TBirbs }

procedure TBirbs.Color;
begin
  Self.FColorBehavior.Color;
end;

constructor TBirbs.CreateBeak(BeakBehavior: TBeakBehavior);
begin
  Self.FBeakBehavior := BeakBehavior;
end;

constructor TBirbs.CreateColor(ColorBehavior: TColorBehavior);
begin
  Self.FColorBehavior := ColorBehavior;
end;

procedure TBirbs.Beak;
begin
  Self.FBeakBehavior.Beak;
end;

end.
