program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  CalcParseClass in 'CalcParseClass.pas',
  CPDiapClass in 'CPDiapClass.pas',
  CPVarClass in 'CPVarClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.