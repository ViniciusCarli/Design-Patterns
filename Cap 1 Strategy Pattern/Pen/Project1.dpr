program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  PenUtils in 'PenUtils.pas',
  PaintUtils in 'PaintUtils.pas',
  ShellUtils in 'ShellUtils.pas',
  SteelShell in 'SteelShell.pas',
  BlackPaint in 'BlackPaint.pas',
  PremiumPen in 'PremiumPen.pas',
  PlasticShell in 'PlasticShell.pas',
  BluePaint in 'BluePaint.pas',
  BicPenBlue in 'BicPenBlue.pas',
  BicPenBlack in 'BicPenBlack.pas';

var
  PremiumPen : TPentype;
  BicPenBlue : TPentype;
  BicPenBlack : TPentype;

begin
  PremiumPen := TPremiumPen.Create;
  BicPenBlue := TBicPenBlue.Create;
  BicPenBlack := TBicPenBlack.Create;
  try
    try
      Writeln('PremiumPen');
      Writeln('');
      PremiumPen.Paint;
      PremiumPen.Shell;

      Writeln('BicPen Blue');
      Writeln('');
      BicPenBlue.Paint;
      BicPenBlue.Shell;

      Writeln('BicPen Black');
      Writeln('');
      BicPenBlack.Paint;
      BicPenBlack.Shell;

    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    PremiumPen.Free;
  end;

end.
