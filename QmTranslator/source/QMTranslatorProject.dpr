program QMTranslatorProject;

uses
  Forms,
  QMTranslator in 'QMTranslator.pas' {Form1},
  GameContent in 'GameContent.pas',
  LocationClass in 'LocationClass.pas',
  MessageText in 'MessageText.pas',
  ParameterClass in 'ParameterClass.pas',
  ParameterDeltaClass in 'ParameterDeltaClass.pas',
  EC_BlockPar in 'EC_BlockPar.pas',
  ProjectClass in 'ProjectClass.pas',
  CPDiapClass in 'CPDiapClass.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
