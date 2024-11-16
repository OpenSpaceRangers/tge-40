Program TGE;

uses
  Forms,
  PlayForm in 'PlayForm.pas' {Form6},
  TextFieldClass in 'TextFieldClass.pas',
  EC_BlockPar,
  MessageText,
  ParameterDeltaClass in 'ParameterDeltaClass.pas',
  CalcParseClass in 'CalcParseClass.pas',
  CPDiapClass in 'CPDiapClass.pas',
  CPVarClass in 'CPVarClass.pas';

{$R *.RES}

begin
  Application.Initialize;
  
  MessageText.M:=TBlockParEC.Create;
  MessageText.M.LoadFromFile('messages_cfg.txt');

  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
